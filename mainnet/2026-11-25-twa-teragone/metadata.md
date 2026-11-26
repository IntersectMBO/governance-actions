## Title

Withdraw ₳2,317,500 for Mithril Protocol continuous development and maintenance

## Abstract

Teragone Factory requests ₳2,317,500 from the Cardano Treasury to fund one quarter, Q1 2027, of continued Mithril protocol development, administered by Intersect.

Mithril is Cardano’s stake-based threshold multi-signature protocol which allows nodes, wallets, exchanges and light clients bootstrap and verify Cardano state in minutes instead of hours, without trusting a centralised provider.

The quarter covers six milestones:

* Ledger state certification (MVP): a new certificate type so any client can download and verify the Cardano ledger state.  
* Mithril Signer Rust library, published on crates.io, so new Rust-based node implementations can produce valid Mithril signatures, supporting node diversity.  
* Guided setup for the Mithril relay and for the aggregator, cutting SPO setup from 30–60 minutes to around 5.  
* Debt reduction and maintenance: critical and high-severity bugs resolved, new Cardano node versions supported.  
* Hosting of production and testing aggregators, SNARK provers, artifacts and Leios readiness.

## Motivation

Verifying Cardano state is still slow or depends on trust. A full node takes hours to synchronise from genesis. Light clients, wallets and many dApps fall back on centralised indexers and hosted APIs. As governance activity, ecosystem growth and scaling pressure increase, that dependency gets deeper. It weakens the decentralisation guarantees Cardano is built on.

Mithril addresses this. It uses stake-based threshold multi-signatures from SPOs to certify Cardano state, so anyone can bootstrap a node or verify chain data in minutes and trust only the stake securing the network. Mithril is already live infrastructure. SPOs run signers, aggregators serve certified snapshots on production and test networks.

Mithril’s current Treasury funding ends on 31 December 2026. The longer-term funding plan for the protocol is designed to start in April 2027. That leaves January to March 2027 with nothing funded.

That gap would have concrete consequences:

* Operations stop being funded. Production and testing aggregators, SNARK provers and the fast-bootstrap artifacts that SPOs, wallets and exchanges rely on would have no funded operator.  
* Maintenance stalls. Each new Cardano node release needs a compatible Mithril distribution. Critical and high-severity bugs need someone accountable for fixing them.  
* The team disperses. Mithril depends on a small group of engineers with deep expertise in threshold cryptography and Cardano internals. A funding gap risks losing them. Rebuilding that knowledge would cost far more than one quarter of continuity. Momentum is lost.

This proposal is bridge funding. It keeps the protocol maintained, its production and testing infrastructure online, and its core team in place until the longer-term funding plan starts.

## Rationale

This is a deliberately narrow, single-quarter request. It doesn’t commit the Treasury beyond Q1 2027 and leaves the longer-term plan to be judged on its own merits.

### Alignment with Cardano Pillars

| Pillar | Alignment | How Mithril Contributes |
| :---- | :---- | :---- |
| Pillar 1: Infrastructure & Research Excellence | Fully aligned | State proofs strengthen cross-chain interoperability. |
| Pillar 2: Adoption & Utility | Fully aligned | Faster sync times lower onboarding friction and unlock new tooling for exchanges, wallets, and monitoring. |
| Pillar 4: Community & Ecosystem Growth | Fully aligned | Mithril enables community-built tools (bridges, light wallets, full wallets, light clients, monitoring tools) to emerge around Cardano. |

### Milestones/Budget breakdown

| Milestones | Deliverable | Duration | Cost |
| ----- | ----- | :---: | :---: |
| Cardano Node Ledger state certification - MVP | A new certification type for  the deterministic ledger snapshot implemented in the Cardano node. | Q1 2027 12 weeks | ₳514,445 |
| Mithril Signer Rust Library | Rust library for the Mithril signer that exposes a well-defined API and that is published on crates.io, allowing it to be directly embedded into new Rust-based node implementations and facilitating reuse, maintainability, and long-term evolution. | Q1 2027 8 weeks | ₳408,889 |
| Enhance setup tooling for Relay | Following the completion of the one-command SPO onboarding for the signer, a new ‘relay’ subcommand is added to setup the Mithril squid relay by walking through an interactive prompt. | Q1 2027 6 weeks | ₳303,333 |
| Enhance setup tooling for Aggregator | Following the completion of the one-command SPO onboarding for the signer a new ‘aggregator’ subcommand is added to setup the Mithril aggregator by walking through an interactive prompt. | Q1 2027 6 weeks | ₳303,333 |
| Debt reduction and Maintenance | Continuous improvement of the codebase, bug fixes and creation of new distributions. | Q1 2027  6 weeks | ₳303,333 |
| Infrastructure for production and testing of Mithril | Hosting of the Mithril aggregators for the testing and production networks, the SNARK provers, and serving of the artifacts used for fast bootstrap of the Cardano node. Leios warmup. | During Q1 2027 | ₳416,667 |
| | | | |
| Delivery subtotal | | | ₳2,250,000 |
| Intersect delivery fee | | | ₳67,500 |
| **Total** | | | **₳2,317,500** |

Teragone Factory has worked on Mithril for about four years alongside IOG, so delivery starts with no ramp-up. Any unused funds, and a fair share of any surplus from a rise in the ADA price, will be returned to the Treasury.

### Net Change Limit Compliance

The requested amount does not at time of submission, on its own or in aggregate, breach the applicable [500M Net Change Limit](https://cardanoscan.io/govAction/gov_action15atytcy8ru7mkcs8m7r8mx7k5x36t0h6grtgmak6v5wmf4nq07lsqhakceq) covering Epoch 613 to Epoch 713.

In accordance with the guardrail TREASURY-02a, this withdrawal does not exceed the NCL at the moment of submission.

### Audit & Oversight

Audit and oversight costs are included within the overhead applied to this proposal. The Intersect administration fee covers administrative oversight and is reflected within the cost of this proposal.Independent oversight will be provided through Intersect and technically capable third-party, including reporting obligations and milestone-based disbursement controls. The third party auditor Dquadrant will independently review key deliverables before each milestone is accepted.

### Prior Treasury Funding Disclosure

In accordance with Article II, Section 7(2), Teragone Factory discloses that it has received ada from the Cardano Treasury within the prior 24 months.

| Proposal ID | Total Budget | Currency | Duration |
| :---- | :---- | :---- | :---- |
| [gov_action1k02990lhw6wh74t7c6ufw3mqaek9ujtvyan99dj5qv5kvcs7pn8s24l0u4y](https://explorer.cardano.org/governance-action?id=b3d452bff7769d7f557ec6b8974760ee6c5e496c276652b654032966621e0ccf05) | ₳3,810,423 | ada | 6 months |

### Intersect Budget Management Tooling

To administrate treasury funds on-chain, Intersect will utilize the treasury management smart contract framework developed by Sundae Labs. A new instance of these smart contracts has been deployed for 2026, mirroring the contracts from the 2025 budget cycle.

* The 2026 Treasury Reserve Smart Contract stake address: stake1784sdxt6jjennmstphgdu7l7c2scf5d02a6cve2dgn5s2kq5u3j9v  
* The 2026 Treasury Reserve Smart Contract payment address: addr1x84sdxt6jjennmstphgdu7l7c2scf5d02a6cve2dgn5s2k8tq6vh499n88hqkrwsmealas4psng674m4sej5638fq4vqmxs59w  
* The 2026 Project Specific Smart Contract payment address: addr1x9d6k9z6t6fvsetj2djmerargk475lef9gfvshy4rwh4h7jm4v295h5jepjhy5m9hj86x3dtafljj2sjepwf2xa0t0aq048cay

#### Specifics

Intersect will utilize a single Treasury Reserve Smart Contract (TRSC), with one Project-Specific Smart Contracts (PSSC). Intersect’s management consists of five ‘admin’ and three Intersect ‘leadership’ roles. An Oversight Committee consisting of six external, independent third-party entities will provide checks and balances on Intersect, and safeguard against errors and unilateral control. The administration of both TRSC and PSSC will be managed by Intersect, with external oversight on certain actions from the Oversight Committee.  
The Oversight Committee consists of Sundae Labs, Cardano Foundation, Dquadrant, NMKR, Sundial and Eternl. Their role is to independently verify key administrative actions using on-chain logic, ensuring accuracy and consistency without exercising discretion over governance decisions.  
For all details on Intersect’s configuration please see the [Smart Contract Guide](https://admin-services.docs.intersectmbo.org/governance/smart-contracts) on the knowledgebase.  
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

* [Mithril Protocol - Q1 2027 Full Proposa (.doxc)l](https://docs.google.com/document/u/0/d/1rVkntKqFD21enB3gGcCz6zT8MLKPnDzFfb0UtoouujA/edit)  
* [Mithril Protocol - Q1 2027 Full Proposal(IPFS)](ipfs://bafkreicc67azx2mmtalfe3e2v3qc6cc3v56swbbd7nyg3olmksysntr5ai)  
* [Automating Accountability: Cardano's Smart Contract Framework Blog](ipfs://bafybeihqx4ae72z7suqfnxrpqpqithp43cai7o2uuewnqtezgaoyc3ptyq)  
* [Sundae Labs Budget Management Smart Contracts Github Repository](https://github.com/SundaeSwap-finance/treasury-contracts)  
* [Budget Management Smart Contracts TxPipe Audit Report](ipfs://bafybeiccnwejbgj43wo6hrlseckkkmprtoqc5cfuy2hesm6c6yealwho3e)  
* [Budget Management Smart Contracts MLabs Audit Report](ipfs://bafybeiah5fnjhda5hemj3qvaehc4mre3qllqzw2l7mkdsguytn4ftgafw4)

## Authors