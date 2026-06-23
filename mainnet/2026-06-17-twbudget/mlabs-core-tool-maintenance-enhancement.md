## Title
Withdraw 1,162,746 ada for MLabs Core Tool Maintenance & Enhancement: Plutarc...

## Abstract

This Treasury Withdrawal funds MLabs Core Tool Maintenance & Enhancement: Plutarch and Ply.

This Treasury Withdrawal is submitted by Intersect on behalf of the vendor. The content for the following sections; Abstract, Motivation and Rationale have been sourced from the approved proposal submitted by the Vendor as part of the Intersect budget process.

## Motivation

This proposal seeks annual funding for the maintenance and enhancement of Plutarch and Ply. Plutarch is a Haskell eDSL for creating efficient Cardano smart contracts via controlled compilation into UPLC. Ply helps serialize Plutarch scripts to and from CIP-57 blueprint-style artifacts with inferred types, protecting the on-chain/off-chain boundary without forcing users to manage low-level type details.

Both tools have been extensively used throughout the Cardano ecosystem. During a recent internal audit, MLabs counted at least 26 teams building with Plutarch and Ply. Their continued maintenance is crucial for project teams that require reliable smart contract tooling that tracks protocol evolution.

Plutarch also remains efficient and performant. In MLabs’ public cross-language benchmarks (https://mlabs-haskell.github.io/uplc-benchmark/comparison.html), Plutarch scripts rank among the smallest in the benchmark suite while requiring comparatively low on-chain compute and memory.

The next funding period is expected to cover ongoing Cardano ledger, Plutus, and tooling evolution, including protocol-era compatibility for major ledger updates such as the Dijkstra era, if relevant changes land during the funding period. Because upstream timing and scope cannot be fully known in advance, this proposal uses a quarterly maintenance model with a clear priority hierarchy. We will allocate proposal resources towards the following areas, in the following order of priority:

1. Critical breakages and serious vulnerabilities
2. Protocol-era and hard-fork compatibility
3. Bug fixes, correctness improvements, and optimizations
4. Documentation, examples, technical blog posts, and developer-experience improvements


Overall, this budget will keep Plutarch and Ply reliable, compatible, and useful for Cardano builders while giving maintainers the capacity to respond to real ecosystem needs. The proposal aligns with Cardano 2030 by strengthening open-source smart contract tooling.

## Rationale

### Strategic Pillar Alignment

MLabs selected Pillar 2: Adoption & Utility because this proposal directly supports A.3 Developer Experience, especially the maintenance of core Cardano open-source SDKs, frameworks, and infrastructure in line with open-source best practices.

Plutarch and Ply are developer-facing smart contract tools. They help Cardano teams write, compile, serialize, test, and maintain production on-chain applications. During a recent internal audit, MLabs conservatively counted at least 15 teams building with Plutarch and Ply. If these tools fall behind Cardano ledger and Plutus/UPLC evolution, existing adopters face more friction, more migration risk, and more uncertainty when maintaining production systems. In the worst case, teams may be forced into expensive smart contract stack migrations, bespoke workarounds, or avoidable rewrites. This proposal reduces that risk by funding ongoing compatibility work, bug fixes, optimizations, documentation, and developer-experience improvements.

The proposal also indirectly supports A.1 High-Value Verticals, especially DeFi, RWAs, payments, games, and other applications that depend on reliable and efficient smart contracts. Plutarch and Ply are not user-facing products, but they underpin the applications on which users rely. Keeping these libraries reliable and protocol-compatible helps teams continue building and maintaining the on-chain logic needed for real Cardano utility.

Finally, this proposal strengthens Cardano’s open-source tooling base. The Cardano 2030 strategy explicitly recognizes the importance of incentivizing the maintenance of core SDKs, frameworks, and infrastructure. This proposal does exactly that for Plutarch and Ply. Overall, the expected value of this proposal is a healthier builder ecosystem, improved developer experience, and real support for Cardano’s application layer.

### Intersect Budget Process

This proposal achieved the required 67% support threshold during the 2026 Intersect Budget Process Hydra Voting phase and has therefore been advanced for on-chain Treasury Withdrawal Governance Action submission in accordance with the approved Budget Process Framework.

### Net Change Limit Compliance

The requested amount does not at time of submission, on its own or in aggregate, breach the applicable [350M Net Change Limit](https://explorer.cardano.org/governance-action/gov_action1m3xx08yv788vfxqh6nfvrjtvmqpwezsy0ggaczctkyjmttc2wmxsq4jsr7q) covering Epoch 613 to Epoch 713.  
In accordance with the guardrail TREASURY-02a, this withdrawal does not exceed the NCL at the moment of submission.

### Audit & Oversight

Audit and oversight costs are included within the overhead applied to this proposal. The Intersect administration fee covers administrative oversight and is reflected within the cost of this proposal. Independent oversight will be provided through Intersect and technically capable third-party, including reporting obligations and milestone-based disbursement controls.

### Prior Treasury Funding Disclosure

MLabs has actively participated in Project Catalyst, Intersect, and related Cardano ecosystem funding programs. Plutarch/Ply were previously funded through Project Catalyst:

- Fund9: project id 900157; USD 73,040
- Fund13: project id 1300141; ADA 487,679
- Fund13: project id 1300144; ADA 57,370

MLabs also received ADA previously from the 2025 Intersect budget:

- MLabs Core Tool Maintenance & Enhancement: Plutarch https://gov.tools/governance_actions/8ad3d454f3496a35cb0d07b0fd32f687f66338b7d60e787fc0a22939e5d8833e#13
- MLabs Research towards Tooling for Elliptical Curves - GrumpleStiltSkin https://gov.tools/governance_actions/8ad3d454f3496a35cb0d07b0fd32f687f66338b7d60e787fc0a22939e5d8833e#36
- MLabs Core Tool Maintenance & Enhancement: Cardano.nix https://gov.tools/governance_actions/3cf29192a0ee1a77985054072edcdb566ac14707730637c4635d8fb6813cb4c9#0

### Budget Summary

| Work Package | Total (ADA) |
|---|---|
| WP1 –Plutarch and Ply Maintenance, Compatibility & Developer Experience | 1,128,880 |
| Intersect Budget Administration fee | 33,866 |
| **Total** | **1,162,746** |

### Intersect Budget Management Tooling

To administrate treasury funds on-chain, Intersect will utilize the treasury management smart contract framework developed by Sundae Labs. A new instance of these smart contracts has been deployed for 2026, mirroring the contracts from the 2025 budget cycle.

- The 2026 Treasury Reserve Smart Contract stake address: `stake1784sdxt6jjennmstphgdu7l7c2scf5d02a6cve2dgn5s2kq5u3j9v`  
- The 2026 Treasury Reserve Smart Contract payment address: `addr1x84sdxt6jjennmstphgdu7l7c2scf5d02a6cve2dgn5s2k8tq6vh499n88hqkrwsmealas4psng674m4sej5638fq4vqmxs59w`
- The 2026 Project Specific Smart Contract payment address: `addr1x9d6k9z6t6fvsetj2djmerargk475lef9gfvshy4rwh4h7jm4v295h5jepjhy5m9hj86x3dtafljj2sjepwf2xa0t0aq048cay`

#### Specifics

Intersect will utilize a single Treasury Reserve Smart Contract (TRSC), with one Project-Specific Smart Contracts (PSSC). Intersect’s management consists of five ‘admin’ and three Intersect ‘leadership’ roles. An Oversight Committee consisting of six external, independent third-party entities will provide checks and balances on Intersect, and safeguard against errors and unilateral control. The administration of both TRSC and PSSC will be managed by Intersect, with external oversight on certain actions from the Oversight Committee.

The Oversight Committee consists of Sundae Labs, Cardano Foundation, Dquadrant, NMKR, Sundial and Eternl. Their role is to independently verify key administrative actions using on-chain logic, ensuring accuracy and consistency without exercising discretion over governance decisions.

For all details on Intersect’s configuration please see the [**Smart Contract Guide**](https://admin-services.docs.intersectmbo.org/governance/smart-contracts) on the knowledgebase.

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

A dashboard is available ([treasury.sundae.fi](https://treasury.sundae.fi/budgets/51486a2f1496d4d3a688a9b111971aa9b731ed045d900b601345ca4e)) for the community to audit the TRSC or PSSC and track metrics related to this withdrawn ada as well as being immutably verifiable on chain.

## References

* [Project Proposal via Intersect Budget Process Hydra Voting](https://hydra-voting.intersectmbo.org/votes/cardano-budget-2026/69fae404f9ebc26d057f51bf)
* [Intersect Budget Process Hydra Voting Documentation](https://docs.hydra-voting.intersectmbo.org/)
* [Intersect Budget Process Hydra Voting Auditor Guide](https://docs.ekklesia.vote/audit/technical)
* [Intersect Budget Process Hydra Voting Final Audited Results (Gitbook)](https://docs.intersectmbo.org/intersect-knowledge-base/cardano-facilitation-services/cardano-budget-2026/2026-budget-process-final-audited-results)
* [Intersect Budget Process Hydra Voting Audit Report (PDF)](ipfs://bafkreibbn432apngjzth2kahjkhp2fgw6zmvwcjnl4w6gvz6j7yq5gyaiu)
* [Automating Accountability: Cardano's Smart Contract Framework Blog](ipfs://bafybeihqx4ae72z7suqfnxrpqpqithp43cai7o2uuewnqtezgaoyc3ptyq)
* [Sundae Labs Budget Management Smart Contracts Github Repository](https://github.com/SundaeSwap-finance/treasury-contracts)
* [Budget Management Smart Contracts TxPipe Audit Report](ipfs://bafybeiccnwejbgj43wo6hrlseckkkmprtoqc5cfuy2hesm6c6yealwho3e)
* [Budget Management Smart Contracts MLabs Audit Report](ipfs://bafybeiah5fnjhda5hemj3qvaehc4mre3qllqzw2l7mkdsguytn4ftgafw4)

## Authors
