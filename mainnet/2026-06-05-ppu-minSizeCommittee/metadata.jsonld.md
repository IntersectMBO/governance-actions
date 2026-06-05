# Markdown Representation of metadata.jsonld

## Title

Reduce the committeeMinSize parameter from 7 to 5

## Abstract

Intersect’s Civics Committee and Technical Steering Committee propose to change the **minimum** Constitutional Committee size (`committeeMinSize`) from 7 to 5 in order to improve operational resilience while maintaining constitutional safeguards.

The ratification of this Governance Action depends on the enactment of another live Parameter Change Governance Action (`gov_action1eqhnsdyf3exhp5mqt7sdjtl7xy69wqg8tvg854psns2jt72cra3qqrcnr8r`), which will change a number of Plutus cost model settings in preparation for the van Rossem hard fork.

## Motivation

The `committeeMinSize` parameter defines the minimum number of Constitutional Committee members (as registered on-chain) that are needed to function effectively. The current Constitutional Committee comprises 7 members, equalling the current `committeeMinSize` setting of 7. This creates a level of operational fragility, since a single resignation or term expiration will prevent the Constitutional Committee from functioning - effectively bringing the majority of the Cardano governance system to a halt: if the number of constitutional committee members drops below `committeeMinSize`, all governance actions requiring Constitutional Committee approval are ineligible for ratification. Parameter Changes, Constitution Updates, Treasury Withdrawals, and Hard Forks will be unable to progress.

Reducing the parameter setting to 5 would provide an operational buffer, allowing the Constitutional Committee to continue operating with a smaller committee. This reduces the risk of governance inoperability while allowing time to resolve any potential issues and to increase the Committee size if required.

### Dependency

This Parameter Change governance action depends on another live Parameter Change which proposes to update the Plutus Cost Model ahead of the upcoming van Rossem Hard Fork `gov_action1eqhnsdyf3exhp5mqt7sdjtl7xy69wqg8tvg854psns2jt72cra3qqrcnr8r`. Note that this Parameter Change will only be enacted if the Plutus Cost Model is also enacted. The dependency is purely temporal: there is no technical interaction between the parameters that are being changed in the two governance actions.

## Rationale

Intersect, on behalf of the Civics Committee, the Technical Steering Committee, and with the recommendation of the Parameter Committee, proposes to reduce `committeeMinSize` from 7 to 5 minimally required Constitutional Committee members. The submission of this governance action was approved by the Civics Committee on 2026-03-13 and by the Technical Steering Committee on 2026-06-03.

Note that this governance action does not directly affect the current number of Committee members. Nor does it imply that reducing Constitutional Committee size is desired. Rather, this governance action serves as a measure to improve the operational resilience of on-chain governance by introducing a buffer between the minimally required Constitutional Committee seats and the current number of elected seats, while maintaining constitutional safeguards.

This proposed change aims to reduce the risk of governance halting when the number of committee members drops below `committeeMinSize`. This change has no effect on the maximum number of Constitutional Committee members.

A reduction to the proposed `committeeMinSize` in conjunction with reduced committee membership would change the required amount of Constitutional votes to pass a given Governance Action. Assuming a current voting threshold of 2/3 for the Constitutional Committee, the approval thresholds are deemed sufficient. However, it should be noted that it is easier to reject a governance action with only 5 Constitutional Committee members. At a Constitutional Committee size of 5, the inactivity of one member, would allow another to fully veto governance actions. See the comparison table below.

| Number of Committee Members | Number of Constitutional Votes to meet threshold | Number of Unconstitutional Votes to prevent threshold |
| :---: | :---: | :---: |
| 7 | 5 | 3 |
| 6 | 4 | 3 |
| 5 | 4 | 2 |

This governance action is not an attempt to centralize Cardano governance by promoting a reduced Constitutional Committee. Rather, the parameter defines a minimum number of members that must be registered and active on-chain in order for Cardano governance to operate fully. The intention of this governance action is to create a buffer to the minimum number where the governance system can continue to function in the event of one or two members retiring or their terms expiring (assuming a current 7 member body).

It should be noted that the current Constitutional Committee elections process, facilitated by Intersect, is intended to run periodically to maintain a 7 seat Constitutional Committee, and is not intended to lower the existing number of seats.

### Historical Context on Resubmission

A previous governance action to change the `committeeMinSize` parameter (`gov_action1mldvtys6ketjg87wtpvr6cd77kdrd8sp62a8sxgadhmxx2s8lh7sqp2qedq`) was rendered invalid before the end of its lifetime, due to a technical collision with another parameter change governance action at the time (Increase Transaction and Block Memory Units (Part 1 of 2) - `gov_action1cgdsp7g0rr7wgqp7maptpvx525fxuqwfgm5qe3f5r20ew5x2772sq0m5y83`). In order to avoid another collision, Intersect is coordinating this resubmission to allow DReps and Constitutional Committee members to provide feedback on the governance action.

### Guardrail Checklist

This governance action has undergone appropriate technical review and scrutiny through the Parameter Committee Parameter Change Process (PCP), and can be found in the [Cardano Forum “PCP-005” discussion](https://forum.cardano.org/t/pcp-005-committeeminsize-yuta/151156). This change does not endanger the security, functionality, performance, or long-term sustainability of the Cardano Blockchain.

The following guardrails are relevant:

***CMS-01**: `committeeMinSize` must not be negative*  
***CMS-02**: `committeeMinSize` must not be lower than 3*  
***CMS-03**: `committeeMinSize` must not exceed 10*

All three guardrails are satisfied by setting `committeeMinSize` to 5.

*PARAM-06a At least 90 days should normally pass between the publication of an off-chain proposal to change a parameter that is critical to the governance system and the submission of the corresponding on-chain governance action.*

*`committeeMinSize` is considered as a parameter that is critical to the governance.  An off-chain proposal was published by Yuta on 2025-11-11.*

### Reversion Plan

This change is reversible, if needed, provided there are at least 7 Constitutional Committee members. Reverting `committeeMinSize` to its current value of 7 would only have an impact if at the time of reversion the Constitutional Committee has fewer than 7 members. The impact would be an immediate halt in governance until sufficient Constitutional Committee members were elected.

The risk of this occurring is minimal, since it is not intended to elect fewer than 7 Constitutional Committee members, even after the reduction of `committeeMinSize` to 5.

## References

- [PCP-005-committeeMinSize (Cardano Forum)](https://forum.cardano.org/t/pcp-005-committeeminsize-yuta/151156)
- [Update Plutus Cost Models (explorer.cardano)](https://explorer.cardano.org/governance-action/c82f3834898e4d70d3605fa0d92ffe31345701075b107a54309c1525f9581f6200)
- [Governance Action Flowchart by Cardano Foundation](https://ucarecdn.com/c05b97e5-1d59-47b1-8e97-f43b687d0208/)
- [Civics Committee Meeting 2026-05-14](https://civicscommittee.docs.intersectmbo.org/meeting-minutes/2026-civics-meeting-minutes/civics-committee-minutes-14th-may-2026)
- [Technical Steering Committee Meeting 2026-06-03](https://technicalsteeringcommittee.docs.intersectmbo.org/meeting-minutes/2026-tsc-meeting-minutes/meeting-minutes-june-3-2026)

## Authors

{
  "name": "Intersect",
  "witness": {
    "witnessAlgorithm": "ed25519",
    "publicKey": "05568f86955e65c1a59df5ac1985449b167c3828dccd00b3da9df36a1cf1c743",
    "signature": "2ef36834f78d7061871f246afa39b44e9ff3c1e6947ee4f2870a260a560f52f2afb2dfa1c50bd0a09c374bc3888829a681df4a04cb363b2a665e236f121fe204"
  }
}

## Onchain

{
  "deposit": "100000000000",
  "reward_account": "stake1uyvjdz9rxsfsmv44rtk75k2rqyqskrga96dgdfrqjvjjpwsefcjnp",
  "gov_action": {
    "tag": "parameter_change_action",
    "gov_action_id": {
      "transaction_id": "c82f3834898e4d70d3605fa0d92ffe31345701075b107a54309c1525f9581f62",
      "gov_action_index": "0"
    },
    "protocol_param_update": {
      "committee_min_size": "5"
    },
    "policy_hash": "fa24fb305126805cf2164c161d852a0e7330cf988f1fe558cf7d4a64"
  }
}
