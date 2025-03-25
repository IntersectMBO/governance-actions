-- Purpose: Retrieve live info governance actions with accurate DRep vote breakdowns and percentages
-- with constant ratification threshold of greater than 50 set

WITH current_epoch AS (
    SELECT MAX(no) AS epoch_no FROM epoch
),

drep_activity_config AS (
    SELECT
        drep_activity AS activity_period,
        epoch_no
    FROM epoch_param
    ORDER BY epoch_no DESC
    LIMIT 1
),

-- One row per drep_hash_id
latest_drep_distribution AS (
    SELECT *
    FROM (
        SELECT *,
               ROW_NUMBER() OVER (PARTITION BY hash_id ORDER BY epoch_no DESC) AS rn
        FROM drep_distr
    ) ranked
    WHERE rn = 1
),

-- One registration per DRep
latest_drep_registration AS (
    SELECT *
    FROM (
        SELECT dr.*,
               encode(tx.hash, 'hex') AS tx_hash,
               block.epoch_no AS registration_epoch,
               ROW_NUMBER() OVER (PARTITION BY dr.drep_hash_id ORDER BY dr.tx_id DESC) AS rn
        FROM drep_registration dr
        JOIN tx ON tx.id = dr.tx_id
        JOIN block ON block.id = tx.block_id
    ) ranked
    WHERE rn = 1 AND COALESCE(deposit, 0) >= 0
),

-- Latest vote epoch per DRep
latest_vote_epoch AS (
    SELECT drep_voter, MAX(block.epoch_no) AS vote_epoch
    FROM voting_procedure vp
    JOIN tx ON tx.id = vp.tx_id
    JOIN block ON block.id = tx.block_id
    WHERE drep_voter IS NOT NULL
    GROUP BY drep_voter
),

-- Active stake controlled by active DReps
active_drep_stake AS (
    SELECT
        COALESCE(SUM(dd.amount), 0)::BIGINT AS total
    FROM drep_hash dh
    JOIN latest_drep_distribution dd ON dd.hash_id = dh.id
    JOIN latest_drep_registration reg ON reg.drep_hash_id = dh.id
    LEFT JOIN latest_vote_epoch lve ON lve.drep_voter = dh.id
    CROSS JOIN drep_activity_config dac
    WHERE
        dd.epoch_no = (SELECT epoch_no FROM current_epoch)
        AND ((dac.epoch_no - GREATEST(COALESCE(lve.vote_epoch, 0), COALESCE(reg.registration_epoch, 0))) <= dac.activity_period)
),

-- Predefined DRep stake
predefined_drep_voting_power AS (
    SELECT
        SUM(CASE WHEN drep_hash.view = 'drep_always_no_confidence' THEN amount ELSE 0 END) AS auto_no_confidence_stake,
        SUM(CASE WHEN drep_hash.view = 'drep_always_abstain' THEN amount ELSE 0 END) AS auto_abstain_stake
    FROM
        drep_hash
    LEFT JOIN drep_distr ON drep_hash.id = drep_distr.hash_id AND drep_distr.epoch_no = (SELECT MAX(no) FROM epoch)
    WHERE drep_hash.view IN ('drep_always_no_confidence', 'drep_always_abstain')
),

-- Total stake = active + no confidence predefined
total_active_stake AS (
    SELECT ads.total + pdvp.auto_no_confidence_stake AS total_active_stake
    FROM active_drep_stake ads
    CROSS JOIN predefined_drep_voting_power pdvp
),

-- One vote per DRep per proposal
deduped_drep_votes AS (
    SELECT *
    FROM (
        SELECT
            vp.drep_voter,
            vp.gov_action_proposal_id,
            vp.vote,
            ROW_NUMBER() OVER (PARTITION BY vp.drep_voter, vp.gov_action_proposal_id ORDER BY vp.tx_id DESC, vp.id DESC) AS rn
        FROM voting_procedure vp
        WHERE vp.drep_voter IS NOT NULL
    ) ranked
    WHERE rn = 1
),

-- Vote aggregation per proposal
governance_action_votes AS (
    SELECT
        gap.id,
        gap.type,
        COALESCE(SUM(ldd.amount) FILTER (WHERE dv.vote = 'Yes'), 0) AS yes_votes,
        COALESCE(SUM(ldd.amount) FILTER (WHERE dv.vote = 'No'), 0) AS no_votes,
        COALESCE(SUM(ldd.amount) FILTER (WHERE dv.vote = 'Abstain'), 0) AS abstain_votes
    FROM gov_action_proposal gap
    LEFT JOIN deduped_drep_votes dv ON dv.gov_action_proposal_id = gap.id
    LEFT JOIN latest_drep_registration reg ON reg.drep_hash_id = dv.drep_voter
    LEFT JOIN latest_drep_distribution ldd ON ldd.hash_id = reg.drep_hash_id AND ldd.epoch_no = (SELECT epoch_no FROM current_epoch)
    GROUP BY gap.id, gap.type
)

-- Final output
SELECT
    gap.id,
    encode(tx.hash, 'hex') AS tx_hash,
    gap.index,
    gap.type::TEXT,

    -- Abstain total
    gav.abstain_votes + pdvp.auto_abstain_stake AS abstain_total,

    -- Yes total
    CASE
        WHEN gap.type = 'NoConfidence' THEN gav.yes_votes + pdvp.auto_no_confidence_stake
        ELSE gav.yes_votes
    END AS yes_total,

    -- No total
    CASE
        WHEN gap.type = 'NoConfidence' THEN gav.no_votes
        ELSE gav.no_votes + pdvp.auto_no_confidence_stake
    END AS no_total,

    -- Not voted total
    (tas.total_active_stake - (gav.yes_votes + gav.no_votes + pdvp.auto_no_confidence_stake + gav.abstain_votes)) AS not_voted_total,

    -- Yes percentage
    ROUND(
        (CASE WHEN gap.type = 'NoConfidence' THEN gav.yes_votes + pdvp.auto_no_confidence_stake ELSE gav.yes_votes END)
        / NULLIF((tas.total_active_stake - gav.abstain_votes), 0) * 100, 2
    ) AS yes_percentage,

    -- No percentage
    ROUND(
        (CASE WHEN gap.type = 'NoConfidence' THEN gav.no_votes ELSE gav.no_votes + pdvp.auto_no_confidence_stake END)
        / NULLIF((tas.total_active_stake - gav.abstain_votes), 0) * 100, 2
    ) AS no_percentage,

    -- Not voted percentage
    ROUND(
        (tas.total_active_stake - (gav.yes_votes + gav.no_votes + pdvp.auto_no_confidence_stake + gav.abstain_votes))
        / NULLIF((tas.total_active_stake - gav.abstain_votes), 0) * 100, 2
    ) AS not_voted_percentage,

    -- Ratified? (based on yes_percentage > 50)
    CASE
        WHEN (
            (CASE WHEN gap.type = 'NoConfidence' THEN gav.yes_votes + pdvp.auto_no_confidence_stake ELSE gav.yes_votes END)
            / NULLIF(tas.total_active_stake - gav.abstain_votes, 0) * 100
        ) > 50 THEN TRUE
        ELSE FALSE
    END AS "ratified? (>50)",

    -- Raw breakdown
    tas.total_active_stake,
    ads.total AS active_drep_stake,
    pdvp.auto_abstain_stake,
    pdvp.auto_no_confidence_stake

FROM gov_action_proposal gap
LEFT JOIN tx ON tx.id = gap.tx_id
LEFT JOIN governance_action_votes gav ON gap.id = gav.id
CROSS JOIN predefined_drep_voting_power pdvp
CROSS JOIN total_active_stake tas
CROSS JOIN active_drep_stake ads
CROSS JOIN current_epoch ce
WHERE
    gap.type = 'InfoAction';
    -- AND gap.expiration > ce.epoch_no
    -- AND gap.ratified_epoch IS NULL
    -- AND gap.enacted_epoch IS NULL
    -- AND gap.expired_epoch IS NULL
    -- AND gap.dropped_epoch IS NULL