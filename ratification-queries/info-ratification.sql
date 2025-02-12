WITH LatestDRepDistr AS (
    SELECT
        *,
        ROW_NUMBER() OVER (PARTITION BY hash_id ORDER BY epoch_no DESC) AS rn
    FROM
        drep_distr
),
CurrentEpoch AS (
    SELECT MAX(no) AS epoch_no FROM epoch
),
DRepActivity AS (
    SELECT
        drep_activity AS activity_period,
        epoch_no AS latest_epoch_no
    FROM
        epoch_param
    WHERE
        epoch_no IS NOT NULL
    ORDER BY
        epoch_no DESC
    LIMIT 1
),
LatestVotingProcedure AS (
    SELECT
        vp.*,
        ROW_NUMBER() OVER (PARTITION BY drep_voter ORDER BY tx_id DESC) AS rn
    FROM
        voting_procedure vp
),
DRepVotingPower AS (
    SELECT
        SUM(CASE WHEN drep_hash.view = 'drep_always_no_confidence' THEN amount ELSE 0 END) AS auto_no_confidence_stake,
        SUM(CASE WHEN drep_hash.view = 'drep_always_abstain' THEN amount ELSE 0 END) AS auto_abstain_stake
    FROM
        drep_hash
    LEFT JOIN drep_distr ON drep_hash.id = drep_distr.hash_id 
        AND drep_distr.epoch_no = (SELECT epoch_no FROM CurrentEpoch)
    WHERE drep_hash.view IN ('drep_always_no_confidence', 'drep_always_abstain')
),
RankedDRepRegistration AS (
    SELECT
        dr.id,
        dr.drep_hash_id,
        dr.deposit,
        dr.voting_anchor_id,
        ROW_NUMBER() OVER (PARTITION BY dr.drep_hash_id ORDER BY dr.tx_id DESC) AS rn,
        encode(tx.hash, 'hex') AS tx_hash,
        block.epoch_no
    FROM
        drep_registration dr
    JOIN tx ON tx.id = dr.tx_id
    JOIN block ON block.id = tx.block_id
),
LatestVoteEpoch AS (
    SELECT
        block.epoch_no,
        lvp.drep_voter AS drep_id
    FROM
        LatestVotingProcedure lvp
        JOIN tx ON tx.id = lvp.tx_id
        JOIN block ON block.id = tx.block_id
    WHERE
        lvp.rn = 1
),
ActiveDRepStake AS (
    SELECT
        COALESCE(SUM(ldd.amount), 0) AS total_active_drep_stake
    FROM
        drep_hash dh
    LEFT JOIN LatestDRepDistr ldd ON ldd.hash_id = dh.id AND ldd.rn = 1
    LEFT JOIN RankedDRepRegistration rd ON ldd.hash_id = rd.drep_hash_id AND rd.rn = 1
    LEFT JOIN LatestVoteEpoch lve ON lve.drep_id = dh.id
    CROSS JOIN DRepActivity
    WHERE
        ldd.epoch_no = (SELECT epoch_no FROM CurrentEpoch)
        AND COALESCE(rd.deposit, 0) >= 0
        AND ((DRepActivity.latest_epoch_no - GREATEST(COALESCE(lve.epoch_no, 0), COALESCE(rd.epoch_no, 0))) <= DRepActivity.activity_period)
),
TotalActiveStake AS (
    SELECT ActiveDRepStake.total_active_drep_stake + DRepVotingPower.auto_no_confidence_stake AS total_stake 
    FROM ActiveDRepStake, DRepVotingPower
),
RankedDRepVotes AS (
    SELECT
        *,
        ROW_NUMBER() OVER (PARTITION BY vp.drep_voter ORDER BY vp.tx_id DESC) AS rn
    FROM
        voting_procedure vp
),
GovernanceActionVotes AS (
    SELECT
        gov_action_proposal.id,
        gov_action_proposal.type,
        COALESCE(SUM(ldd_drep.amount) FILTER (WHERE rdv.vote::text = 'Yes'), 0) AS yes_votes,
        COALESCE(SUM(ldd_drep.amount) FILTER (WHERE rdv.vote::text = 'No'), 0) AS no_votes,
        COALESCE(SUM(ldd_drep.amount) FILTER (WHERE rdv.vote::text = 'Abstain'), 0) AS abstain_votes
    FROM
        gov_action_proposal
    LEFT JOIN RankedDRepVotes rdv ON rdv.gov_action_proposal_id = gov_action_proposal.id AND rdv.rn = 1
    LEFT JOIN RankedDRepRegistration rdr ON rdr.drep_hash_id = rdv.drep_voter AND COALESCE(rdr.deposit, 0) >= 0 AND rdr.rn = 1
    LEFT JOIN LatestDRepDistr ldd_drep ON ldd_drep.hash_id = rdr.drep_hash_id
        AND ldd_drep.epoch_no = (SELECT epoch_no FROM CurrentEpoch)
    GROUP BY gov_action_proposal.id, gov_action_proposal.type
)
SELECT
    gov_action_proposal.id,
    encode(creator_tx.hash, 'hex') AS tx_hash,
    gov_action_proposal.index,
    gov_action_proposal.type::text,
    GovernanceActionVotes.abstain_votes + DRepVotingPower.auto_abstain_stake AS abstain_total,
    CASE
        WHEN gov_action_proposal.type != 'NoConfidence' THEN GovernanceActionVotes.yes_votes
        ELSE GovernanceActionVotes.yes_votes + DRepVotingPower.auto_no_confidence_stake
    END AS yes_total,
    ROUND(
        (CASE
            WHEN gov_action_proposal.type != 'NoConfidence' THEN GovernanceActionVotes.yes_votes
            ELSE GovernanceActionVotes.yes_votes + DRepVotingPower.auto_no_confidence_stake
        END) / NULLIF(TotalActiveStake.total_stake, 0) * 100, 2
    ) AS yes_percentage,
    CASE
        WHEN gov_action_proposal.type != 'NoConfidence' THEN GovernanceActionVotes.no_votes + DRepVotingPower.auto_no_confidence_stake
        ELSE GovernanceActionVotes.no_votes
    END AS no_total,
    ROUND(
        (CASE
            WHEN gov_action_proposal.type != 'NoConfidence' THEN GovernanceActionVotes.no_votes + DRepVotingPower.auto_no_confidence_stake
            ELSE GovernanceActionVotes.no_votes
        END) / NULLIF(TotalActiveStake.total_stake, 0) * 100, 2
    ) AS no_percentage,
    (TotalActiveStake.total_stake - (GovernanceActionVotes.yes_votes + GovernanceActionVotes.no_votes + DRepVotingPower.auto_no_confidence_stake)) AS not_voted_total,
    ROUND(
        (100 - ((GovernanceActionVotes.no_votes + GovernanceActionVotes.yes_votes + DRepVotingPower.auto_no_confidence_stake) / NULLIF(TotalActiveStake.total_stake, 0) * 100)), 2
    ) AS not_voted_percentage
FROM
    gov_action_proposal
    CROSS JOIN CurrentEpoch
    CROSS JOIN DRepVotingPower
    CROSS JOIN TotalActiveStake
    LEFT JOIN tx AS creator_tx ON creator_tx.id = gov_action_proposal.tx_id
    LEFT JOIN GovernanceActionVotes ON gov_action_proposal.id = GovernanceActionVotes.id
WHERE
    gov_action_proposal.expiration > (SELECT epoch_no FROM CurrentEpoch)
    AND gov_action_proposal.ratified_epoch IS NULL
    AND gov_action_proposal.enacted_epoch IS NULL
    AND gov_action_proposal.expired_epoch IS NULL
    AND gov_action_proposal.dropped_epoch IS NULL;
