## Title
Withdraw 540,750 ada for Oura by TxPipe administered by Intersect

## Abstract
This Treasury Withdrawal funds Oura by TxPipe: Maintaining Cardano’s Event Pipeline.

This Treasury Withdrawal is submitted by Intersect on behalf of the vendor. The content for the following sections; Abstract, Motivation and Rationale have been sourced from the approved proposal submitted by the Vendor as part of the Intersect budget process.

## Motivation
This proposal requests 420,000 ADA (plus a 105,000 ADA contingency reserve) to fund **a part-time maintainer for Oura** ([https://github.com/txpipe/oura](https://github.com/txpipe/oura)) over 12 months at an annual rate of $105,000 USD. Oura has been funded twice through Project Catalyst (Fund 9 and Fund 13) for feature development, and this proposal seeks to establish sustained maintenance coverage through Intersect's treasury process.

Oura is a Rust-native pipeline tool that connects to Cardano nodes, monitors blockchain events, and routes matching patterns to pluggable outputs for processing. It supports multiple data sources (N2C, N2N, S3, Mithril, UTxO RPC) and a wide range of sinks (Kafka, Elasticsearch, AWS Lambda/S3/SQS, RabbitMQ, Redis, SQL databases, webhooks, and others). Oura is built on the Pallas library and designed for minimal resource footprint, making it suitable for environments ranging from production infrastructure to low-resource setups.

With 654 commits, 288 stars, 79 forks, and 58 contributors, Oura is the most starred project in the TxPipe portfolio and stands as a strong example of open-source collaboration in the Cardano ecosystem. The project remains fully open-source and actively welcomes contributions from the broader developer community.

The maintainer's work is organized across three areas, to ensure Oura remains usable, reliable, and up to date for every downstream user that depends on it:

- Essential maintenance of the codebase, including dependency updates, Cardano protocol compatibility, performance improvements, bug fixing and documentation.
- Community support includes issue triage, review of external contributions, enhancements driven by ecosystem feedback, and public communication with the developer community.
- And as an important addition to the maintenance scope, we'll focus on upgrading Oura compatibility with AI-driven development workflows by providing AI-friendly documentation and integration resources.

## Rationale
### Strategic Pillar Alignment
Oura aligns to Pillar 2 through focus area A.3 (Developer Experience), specifically the open-source incentives area, which calls for incentivizing the maintenance of core Cardano SDKs, frameworks, and infrastructure in line with open-source best practices.

Oura provides a ready-made pipeline for processing Cardano blockchain events, supporting a wide range of data sources and output sinks. By handling the complexity of node communication, event parsing, and data routing, Oura allows developers and infrastructure operators to focus on their application logic rather than building custom blockchain data pipelines. It is used across the ecosystem for indexing, monitoring, analytics, and real-time event processing. Maintaining Oura ensures the continued reliability and performance of a key open-source tool in the Cardano developer and infrastructure ecosystem.

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
* [Project Proposal In Ekklesia](https://hydra-voting.intersectmbo.org/votes/cardano-budget-2026/69f9dabb92f043aa2df1a282)
* [Details of all successful proposals (CSV)](https://REPLACEME.example/successful-proposals-2026.csv)
* [Automating Accountability: Cardano's Smart Contract Framework Blog](ipfs://bafybeihqx4ae72z7suqfnxrpqpqithp43cai7o2uuewnqtezgaoyc3ptyq)
* [Sundae Labs Budget Management Smart Contracts Github Repository](https://github.com/SundaeSwap-finance/treasury-contracts)
* [Budget Management Smart Contracts TxPipe Audit Report](ipfs://bafybeiccnwejbgj43wo6hrlseckkkmprtoqc5cfuy2hesm6c6yealwho3e)
* [Budget Management Smart Contracts MLabs Audit Report](ipfs://bafybeiah5fnjhda5hemj3qvaehc4mre3qllqzw2l7mkdsguytn4ftgafw4)

## Authors
