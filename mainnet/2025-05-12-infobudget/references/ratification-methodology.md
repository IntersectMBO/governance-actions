# Net Change Limit - Ratification Methodology

Due to the lack of Info action's on-chain effect, their on-chain ratification thresholds are set to 100%.
Whilst technically set at 100%, the Cardano constitution and or authors of Info actions are able to define what they consider to ratify their action, leading to some off-chain action.

The Cardano Constitution ARTICLE VII. Section 4 states "In the case of "Info" actions that propose a Cardano Blockchain ecosystem budget, Constitutional Committee members shall record a vote on-chain that sets forth their opinion as to whether the proposed budget, if it were to be implemented in the form contained in the "Info" action, would violate this Constitution."

The Cardano Constitution Appendix I's `TREASURY-04a (x)` guardrail states that "Withdrawals from the Cardano Blockchain treasury must not be ratified until there is a Cardano Community approved Cardano Blockchain ecosystem budget then in effect pursuant to a previous on-chain governance action agreed by the DReps with a threshold of greater than 50% of the active voting stake".

The author's of this governance action will consider the attached Budget Info governance action ratified if 50%+1 lovelace or higher active voting DRep support in favour of this governance action and at least 5 constitutional votes from the constitutional committee, by time of expiry.

In the case where different tooling shows different ratification results, the authors will consider the results shown by [Koios' Proposal Voting Summary](https://api.koios.rest/#get-/proposal_voting_summary) as the reference result.

Koios was chosen for three reasons:
- longstanding good will and competency within the ecosystem
- independent third party
- free access tier - keeping the bar low for third parties to verify