WITH gov_action_epochs AS (
    SELECT
        gap.id,
        gap.tx_id,
        gap.index,
        gap.type::TEXT AS type,
        encode(tx.hash, 'hex') AS tx_hash,
        COALESCE(gap.ratified_epoch, gap.enacted_epoch, gap.expired_epoch, gap.dropped_epoch) AS action_epoch
    FROM gov_action_proposal gap
    JOIN tx ON tx.id = gap.tx_id
    WHERE gap.type = 'InfoAction'
      AND COALESCE(gap.ratified_epoch, gap.enacted_epoch, gap.expired_epoch, gap.dropped_epoch) IS NOT NULL
),

drep_activity_config AS (
    SELECT
        drep_activity AS activity_period,
        epoch_no
    FROM epoch_param
    ORDER BY epoch_no DESC
    LIMIT 1
),

-- Latest registration per DRep
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

-- DRep stake at the time of each proposal
drep_stake_per_proposal AS (
    SELECT
        gae.id AS proposal_id,
        dh.id AS drep_hash_id,
        dd.amount,
        gae.action_epoch,
        reg.registration_epoch,
        lve.vote_epoch
    FROM gov_action_epochs gae
    JOIN drep_distr dd ON dd.epoch_no = gae.action_epoch
    JOIN drep_hash dh ON dh.id = dd.hash_id
    JOIN latest_drep_registration reg ON reg.drep_hash_id = dh.id
    LEFT JOIN latest_vote_epoch lve ON lve.drep_voter = dh.id
    CROSS JOIN drep_activity_config dac
    WHERE ((gae.action_epoch - GREATEST(COALESCE(lve.vote_epoch, 0), COALESCE(reg.registration_epoch, 0))) <= dac.activity_period)
),

-- Total active DRep stake per proposal
active_drep_stake AS (
    SELECT
        proposal_id,
        SUM(amount)::BIGINT AS active_drep_stake
    FROM drep_stake_per_proposal
    GROUP BY proposal_id
),

-- Predefined DReps stake per action_epoch
predefined_drep_voting_power AS (
    SELECT
        gae.id AS proposal_id,
        SUM(CASE WHEN dh.view = 'drep_always_no_confidence' THEN dd.amount ELSE 0 END) AS auto_no_confidence_stake,
        SUM(CASE WHEN dh.view = 'drep_always_abstain' THEN dd.amount ELSE 0 END) AS auto_abstain_stake
    FROM gov_action_epochs gae
    JOIN drep_hash dh ON dh.view IN ('drep_always_no_confidence', 'drep_always_abstain')
    LEFT JOIN drep_distr dd ON dd.hash_id = dh.id AND dd.epoch_no = gae.action_epoch
    GROUP BY gae.id
),

-- Total stake = active DRep stake + no_confidence predefined stake
total_active_stake AS (
    SELECT
        ads.proposal_id,
        ads.active_drep_stake + COALESCE(pdvp.auto_no_confidence_stake, 0) AS total_active_stake,
        ads.active_drep_stake,
        pdvp.auto_abstain_stake,
        pdvp.auto_no_confidence_stake
    FROM active_drep_stake ads
    LEFT JOIN predefined_drep_voting_power pdvp ON pdvp.proposal_id = ads.proposal_id
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
        COALESCE(SUM(ldd.amount) FILTER (WHERE dv.vote = 'Yes'), 0) AS yes_votes,
        COALESCE(SUM(ldd.amount) FILTER (WHERE dv.vote = 'No'), 0) AS no_votes,
        COALESCE(SUM(ldd.amount) FILTER (WHERE dv.vote = 'Abstain'), 0) AS abstain_votes
    FROM gov_action_epochs gap
    LEFT JOIN deduped_drep_votes dv ON dv.gov_action_proposal_id = gap.id
    LEFT JOIN latest_drep_registration reg ON reg.drep_hash_id = dv.drep_voter
    LEFT JOIN drep_distr ldd ON ldd.hash_id = reg.drep_hash_id AND ldd.epoch_no = gap.action_epoch
    GROUP BY gap.id
),

-- Final calculations
final_vote_calculations AS (
    SELECT
        gae.id,
        gae.tx_hash,
        gae.index,
        gae.type,
        gae.action_epoch,

        gav.abstain_votes,
        gav.yes_votes,
        gav.no_votes,
        tas.total_active_stake,
        tas.active_drep_stake,
        tas.auto_abstain_stake,
        tas.auto_no_confidence_stake,

        -- Adjusted totals
        (gav.abstain_votes + tas.auto_abstain_stake) AS abstain_total,
        CASE
            WHEN gae.type = 'NoConfidence' THEN gav.yes_votes + tas.auto_no_confidence_stake
            ELSE gav.yes_votes
        END AS yes_total,
        CASE
            WHEN gae.type = 'NoConfidence' THEN gav.no_votes
            ELSE gav.no_votes + tas.auto_no_confidence_stake
        END AS no_total,

        -- Not voted
        (tas.total_active_stake - (gav.yes_votes + gav.no_votes + tas.auto_no_confidence_stake)) AS not_voted_total,

        -- Percentages (unrounded)
        (CASE
            WHEN gae.type = 'NoConfidence' THEN gav.yes_votes + tas.auto_no_confidence_stake
            ELSE gav.yes_votes
        END)::NUMERIC / NULLIF(tas.total_active_stake, 0) * 100 AS yes_percentage_raw,

        (CASE
            WHEN gae.type = 'NoConfidence' THEN gav.no_votes
            ELSE gav.no_votes + tas.auto_no_confidence_stake
        END)::NUMERIC / NULLIF(tas.total_active_stake, 0) * 100 AS no_percentage_raw,

        ((tas.total_active_stake - (gav.yes_votes + gav.no_votes + tas.auto_no_confidence_stake))::NUMERIC
        / NULLIF(tas.total_active_stake, 0)) * 100 AS not_voted_percentage_raw
    FROM gov_action_epochs gae
    LEFT JOIN governance_action_votes gav ON gav.id = gae.id
    LEFT JOIN total_active_stake tas ON tas.proposal_id = gae.id
)

SELECT
    id,
    tx_hash,
    index,
    type,
    action_epoch,  -- ✅ Shows the epoch applied to calculate stake/votes

    abstain_total,
    yes_total,
    no_total,
    not_voted_total,

    ROUND(yes_percentage_raw, 3) AS yes_percentage,
    ROUND(no_percentage_raw, 3) AS no_percentage,
    ROUND(not_voted_percentage_raw, 3) AS not_voted_percentage,

    CASE WHEN yes_percentage_raw > 50 THEN TRUE ELSE FALSE END AS "ratified?",

    total_active_stake,
    active_drep_stake,
    auto_abstain_stake,
    auto_no_confidence_stake

FROM final_vote_calculations;