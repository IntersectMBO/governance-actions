## Title
Withdraw 1,310,960 ada for Hardware Wallet administered by Intersect

## Abstract
This Treasury Withdrawal funds Hardware Wallet Maintenance 2026.

This Treasury Withdrawal is submitted by Intersect on behalf of the vendor. The content for the following sections; Abstract, Motivation and Rationale have been sourced from the approved proposal submitted by the Vendor as part of the Intersect budget process.

## Motivation
*Why now: Cardano protocol evolution, vendor firmware and app release cycles, and growing wallet and dApp integration demand continue to create compatibility risk on this security-critical access layer. Funding continuity in 2026 is less costly and less disruptive than waiting for breakage to accumulate and reacting only after users or integrators lose access.*
*Cardano’s hardware-wallet stack must be maintained continuously or users and integrators lose secure access when Cardano, Ledger, or Trezor introduce breaking changes. This proposal requests 12 months of funding for production maintenance of Cardano hardware-wallet support: Ledger and Trezor compatibility updates, maintenance of supporting interoperability libraries and cardano-hw-cli, developer support for ecosystem integrators, support for integration paths involving externally maintained components where shared hardware-wallet flows intersect, and vendor-required product or security audits where firmware or app changes trigger them.*
*This is a continuity proposal for an already-proven Cardano access layer, not a request to build a new wallet product; scope is limited to compatibility, security, supporting libraries/tooling, release support, and vendor-required audit work needed to keep supported hardware-wallet flows operational. This proposal is limited to hardware-wallet compatibility, tooling, and vendor-required assurance, and does not duplicate broader core-node, ledger, or general infrastructure maintenance budgets.*
*The value to Cardano is continuity: users retain secure signing,builders avoid broken integrations, protocol and vendor changes do not strand hardware-wallet users, and newer utility layers can rely on a maintained hardware-wallet path. The proposal aligns with Cardano’s strategy around security, interoperability, developer experience, and adoption,and it will be delivered with clear milestones,evidence,and transparent capped T&M reporting so DReps can verify value as it is produced.*

## Rationale
### Strategic Pillar Alignment
*Primary alignment is with&#32;**Pillar 1**&#32;because hardware-wallet maintenance preserves a secure, reliable, and interoperable signing layer as Cardano, Ledger, and Trezor evolve. Cardano’s strategy describes Pillar 1 as keeping Cardano “secure, fast, and interoperable,” and its security/resilience focus includes reliability, interoperability, and protection against operational breakage. This proposal directly supports that by preventing protocol and vendor changes from breaking real user access. Secondary alignment is with&#32;**Pillar 2**&#32;because adoption depends on secure UX and compatibility: users cannot benefit from DeFi, payments, stablecoins, or other utility when hardware-wallet flows break, and developers cannot integrate confidently when supporting libraries and tools fall behind. Pillar 2 explicitly emphasizes superior UX, enterprise-grade security, developer experience, and compatibility with common tooling.*

### Intersect Budget Process

This proposal achieved the required 67% support threshold during the 2026 Intersect Budget Process Hydra Voting phase and has therefore been advanced for on-chain Treasury Withdrawal Governance Action submission in accordance with the approved Budget Process Framework.

### Intersect Budget Management Tooling

To administrate treasury funds on-chain, Intersect will utilize the treasury management smart contract framework developed by Sundae Labs. A new instance of these smart contracts has been deployed for 2026, mirroring the contracts from the 2025 budget cycle.

The 2026 Treasury Reserve Smart Contract stake address: stake1784sdxt6jjennmstphgdu7l7c2scf5d02a6cve2dgn5s2kq5u3j9v  
The 2026 Treasury Reserve Smart Contract payment address: addr1x84sdxt6jjennmstphgdu7l7c2scf5d02a6cve2dgn5s2k8tq6vh499n88hqkrwsmealas4psng674m4sej5638fq4vqmxs59w  
The 2026 Project Specific Smart Contract payment address: addr1x9d6k9z6t6fvsetj2djmerargk475lef9gfvshy4rwh4h7jm4v295h5jepjhy5m9hj86x3dtafljj2sjepwf2xa0t0aq048cay

#### Specifics

Intersect will utilize a single Treasury Reserve Smart Contract (TRSC), with one Project-Specific Smart Contracts (PSSC), managed by Intersect. Intersect’s management consists of five ‘admin’ and three Intersect ‘leadership’ roles. An Oversight Committee consisting of five external, independent third-party entities will provide checks and balances on Intersect, and safeguard against errors and unilateral control. The administration of both TRSC and PSSC will be managed by Intersect, with external oversight on certain actions from the Oversight Committee.

The Oversight Committee consists of Sundae Labs, Cardano Foundation, Dquadrant, NMKR, Sundial and Eternl. Their role is to independently verify key administrative actions using on-chain logic, ensuring accuracy and consistency without exercising discretion over governance decisions.

For all details on Intersect’s configuration please see the 2025 [**Smart Contract Guide**](https://docs.intersectmbo.org/cardano-facilitation-services/cardano-budget/intersect-administration-services/smart-contracts-as-part-of-our-administration) on the knowledgebase.

The high level permissions are as follows:

* TRSC Fund and PSSC Modify  
  * Two of the five Intersect admins, two of the six trusted entities and one of the three Intersect leadership sign-off must authorize  
* TRSC Disburse  
  * Two of five Intersect admins, three of six trusted entities and two of three Intersect leadership sign-off must authorize  
* TRSC Pause and Resume  
  * Two of five Intersect admins, and one of three Intersect leadership sign-off must authorize  
* TRSC Sweep  
  * One of five Intersect admins, and one of three Intersect leadership sign-off must authorize  
* TRSC Reorganize  
  * Two of five Intersect admins and three of six trusted entities must authorize

#### Processes

Upon enactment of this governance action, funding for this project will be directed into the TRSC’s stake address. All instances of TRSC and PSSC can not be staked with a SPO and are delegated to the auto-abstain predefined DRep. From here funds will be withdrawn into a UTxO remaining at the TRSC payment address.

When the Legal contract is prepared and the vendor is ready, funding for this project will be transferred using the Fund action to the PSSC. All milestones will be outlined within the metadata.

A dashboard is available ([treasury.sundae.fi](http://treasury.sundae.fi)) for the community to audit the TRSC or PSSC and track metrics related to this withdrawn ada as well as being immutably verifiable on chain.

## References
* [Project Proposal In Ekklesia](https://hydra-voting.intersectmbo.org/votes/cardano-budget-2026/69e8b481b637aef81b4fadd7)
* [Details of all successful proposals (CSV)](https://REPLACEME.example/successful-proposals-2026.csv)
* [Automating Accountability: Cardano's Smart Contract Framework Blog](ipfs://bafybeihqx4ae72z7suqfnxrpqpqithp43cai7o2uuewnqtezgaoyc3ptyq)
* [Sundae Labs Budget Management Smart Contracts Github Repository](https://github.com/SundaeSwap-finance/treasury-contracts)
* [Budget Management Smart Contracts TxPipe Audit Report](ipfs://bafybeiccnwejbgj43wo6hrlseckkkmprtoqc5cfuy2hesm6c6yealwho3e)
* [Budget Management Smart Contracts MLabs Audit Report](ipfs://bafybeiah5fnjhda5hemj3qvaehc4mre3qllqzw2l7mkdsguytn4ftgafw4)

## Authors
