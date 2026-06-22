## Title
Withdraw 540,750 ada for UTxO RPC by TxPipe: Maintaining Cardano’s Integratio...

## Abstract

This Treasury Withdrawal funds UTxO RPC by TxPipe: Maintaining Cardano’s Integration Standard, Year 2.

This Treasury Withdrawal is submitted by Intersect on behalf of the vendor. The content for the following sections; Abstract, Motivation and Rationale have been sourced from the approved proposal submitted by the Vendor as part of the Intersect budget process.

## Motivation

This proposal requests 420,000 ADA (plus a 105,000 ADA contingency reserve) to fund **a part-time maintainer for UTxO RPC&#32;**([https://github.com/utxorpc](https://github.com/utxorpc)) over 12 months at an annual rate of $105,000 USD, continuing the open-source maintenance initiative funded through Intersect's treasury process in the previous cycle. The new grant period would begin after the closure of the existing contract, ensuring uninterrupted maintenance coverage.

UTxO RPC is an open interface specification designed to standardize interactions with UTxO-based blockchains. It defines common methods, data structures, and communication patterns using Protocol Buffers, and provides SDKs in multiple languages (Rust, Go, Node.js, .NET, Haskell, Python) to simplify blockchain integration for developers. It has been adopted by key ecosystem workstreams including Amaru, Dingo, and the Haskell Cardano node, validating it as a standard across the ecosystem.

The project maintains 10+ repositories covering the core specification, language-specific SDKs, documentation, and provider integrations. The project remains fully open-source under Apache 2.0 and actively welcomes contributions from the broader developer community.

The maintainer's work is organized across four areas, to ensure UTxO RPC remains usable, reliable, and up to date as a standard  across the ecosystem:

- Maintenance of the protobuf specification, including protocol compatibility, versioning, and documentation.
- Maintenance of the official SDKs, including dependency updates, performance improvements, and bug fixing.
- Community support includes issue triage, review of external contributions, enhancements driven by ecosystem feedback, and public communication with the developer community.
- And as an important addition to the maintenance scope, we'll focus on upgrading UTxO RPC compatibility with AI-driven development workflows by providing AI-friendly documentation and integration resources.

## Rationale

### Strategic Pillar Alignment

UTxO RPC aligns to Pillar 2 through focus area A.3 (Developer Experience), specifically the open-source incentives area, which calls for incentivizing the maintenance of core Cardano SDKs, frameworks, and infrastructure in line with open-source best practices.

UTxO RPC provides a standardized interface for interacting with UTxO-based blockchains, with SDKs in Rust, Go, Node.js, .NET, Haskell, and Python. By defining common methods and data structures, it reduces integration complexity and allows developers to build on Cardano using the language and tooling of their choice. Node implementations including Amaru, Dingo, and the Haskell Cardano node have adopted UTxO RPC as a query interface, validating it as a standard for accessing chain data across the ecosystem. Maintaining UTxO RPC ensures the continued reliability and performance of a key integration standard in the Cardano developer ecosystem.

### Intersect Budget Process

This proposal achieved the required 67% support threshold during the 2026 Intersect Budget Process Hydra Voting phase and has therefore been advanced for on-chain Treasury Withdrawal Governance Action submission in accordance with the approved Budget Process Framework.

### Net Change Limit Compliance

The requested amount does not at time of submission, on its own or in aggregate, breach the applicable [350M Net Change Limit](https://explorer.cardano.org/governance-action/gov_action1m3xx08yv788vfxqh6nfvrjtvmqpwezsy0ggaczctkyjmttc2wmxsq4jsr7q) covering Epoch 613 to Epoch 713.  
In accordance with the guardrail TREASURY-02a, this withdrawal does not exceed the NCL at the moment of submission.

### Audit & Oversight

Audit and oversight costs are included within the overhead applied to this proposal. The Intersect administration fee covers administrative oversight and is reflected within the cost of this proposal. Independent oversight will be provided through Intersect and technically capable third-party, including reporting obligations and milestone-based disbursement controls.

### Prior Treasury Funding Disclosure

TxPipe has received funding through 30 Project Catalyst proposals across Funds 9 through 14, of which 26 have been successfully delivered and 4 are currently under development and on schedule.

In addition, TxPipe received open-source maintenance funding through Intersect's 2025 budget cycle for Pallas, Dolos, and UTxO RPC, all of which are being delivered on schedule.

### Budget Summary

| Work Package | Total (ADA) |
|---|---|
| WP1 - UTxO RPC Maintenance and Enhancement | 525,000 |
| Intersect Budget Administration fee | 15,750 |
| **Total** | **540,750** |

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

A dashboard is available ([treasury.sundae.fi](http://treasury.sundae.fi)) for the community to audit the TRSC or PSSC and track metrics related to this withdrawn ada as well as being immutably verifiable on chain.

## References

* [Project Proposal via Intersect Budget Process Hydra Voting](https://hydra-voting.intersectmbo.org/votes/cardano-budget-2026/69f9d3db0a4abf2b3c1da737)
* [Intersect Budget Process Hydra Voting Documentation](https://docs.hydra-voting.intersectmbo.org/)
* [Intersect Budget Process Hydra Voting Auditor Guide](https://docs.ekklesia.vote/audit/technical)
* [Intersect Budget Process Hydra Voting Final Audited Results (Gitbook)](https://docs.intersectmbo.org/intersect-knowledge-base/cardano-facilitation-services/cardano-budget-2026/2026-budget-process-final-audited-results)
* [Intersect Budget Process Hydra Voting Audit Report (PDF)](ipfs://bafkreibbn432apngjzth2kahjkhp2fgw6zmvwcjnl4w6gvz6j7yq5gyaiu)
* [Automating Accountability: Cardano's Smart Contract Framework Blog](ipfs://bafybeihqx4ae72z7suqfnxrpqpqithp43cai7o2uuewnqtezgaoyc3ptyq)
* [Sundae Labs Budget Management Smart Contracts Github Repository](https://github.com/SundaeSwap-finance/treasury-contracts)
* [Budget Management Smart Contracts TxPipe Audit Report](ipfs://bafybeiccnwejbgj43wo6hrlseckkkmprtoqc5cfuy2hesm6c6yealwho3e)
* [Budget Management Smart Contracts MLabs Audit Report](ipfs://bafybeiah5fnjhda5hemj3qvaehc4mre3qllqzw2l7mkdsguytn4ftgafw4)

## Authors
