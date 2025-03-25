# Net Change Limit - Ratification Methodology

Due to the lack of Info action's on-chain effect, their on-chain ratification thresholds are set to 100%.
Whilst technically set at 100%, the Cardano constitution and or authors of Info actions are able to define what they consider to ratify their action, leading to some off-chain action.

The Cardano Constitution Appendix I's `TREASURY-01a (x)` guardrail states that "A net change limit for the Cardano treasury's balance per period of time must be agreed by the DReps via an on-chain governance action with a threshold of greater than 50% of the active voting stake".

The author's of this governance action will consider the attached Net Change Limit governance action ratified if over 50% active DRep support in favour of this governance action, by time of expiry.

In the case where different tooling shows different ratification results, the authors will consider the results shown by [Koios' Proposal Voting Summary](https://api.koios.rest/#get-/proposal_voting_summary) as the reference result.

Koios was chosen for three reasons:
- longstanding good will and competency within the ecosystem
- independent third party
- free access tier - keeping the bar low for third parties to verify

