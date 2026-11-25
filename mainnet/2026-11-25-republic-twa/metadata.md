## Title

Withdraw 2,600,000 ada for Republic Integration: Wallet, & Token Management

## Abstract

Republic requests a treasury withdrawal of 2,600,000 ada to integrate Cardano into its regulated private markets and on-chain infrastructure.

The work is delivered in two phases, each tied to a milestone with acceptance criteria that DReps can verify:

1. **Republic Wallet:** Cardano Native Token (CNT) support so users can hold, send, and receive Cardano-based assets, with every new Republic Wallet also provisioning a self-custodial Cardano wallet.  
2. **Token Management Platform c/o Upside:** Cardano-based assets connected to Republic's post-issuance tooling, including token holder management, cap table management, and licensed transfer agent services.

Republic and its subsidiaries hold broker-dealer, ATS, and transfer agent licenses and operate a registered funding portal, so Cardano gains a regulated path for issuers and investors without building one from scratch. The proposal aligns with Pillar 2 (Adoption & Utility) and Pillar 4 (Community & Ecosystem Growth) of the Cardano strategy framework.

## Motivation

Cardano is built for mission-critical applications, and tokenized real-world assets are a natural next use case. Issuers and investors bringing regulated assets on-chain need a complete path around the chain: a self-custodial Cardano wallet built for RWAs, tooling to manage tokens after issuance, and the compliance controls that regulators and issuers expect. Making that path easy to adopt turns Cardano's technical strengths into real, non-speculative activity on the network.

Republic already operates this regulated stack end to end across blockchains: wallet, tokenization, cap table management, licensed transfer agent services, and a fundraising venue. This proposal extends that stack to Cardano, giving issuers and investors a ready-made, regulated way to use it.

Republic brings relevant experience in regulated private-market offerings and digital securities. Through Republic, investors gained retail access to a [Hamilton Lane Advisors](https://republic.com/hamilton-lane-private-infrastructure-fund) private infrastructure fund, including access for non-accredited investors. Republic also operates [Republic Note](https://republic.com/note), its own digital security, which trades on Republic’s ATS and distributes dividends in USDC. These examples demonstrate Republic’s experience supporting investment offerings and managing digital securities. ⁠

## Rationale

Republic's approach is to extend infrastructure that is already live and licensed rather than build something new, so funds go to integration work, not to standing up a platform.

* **Sequenced by dependency:** wallet support comes first because holders must be able to hold and transact Cardano-based assets before issuers can manage them. Token management follows.  
* **Verifiable delivery:** each milestone has acceptance criteria shown through recorded demonstrations, so anyone can confirm what was delivered.  
* **Independent oversight:** Intersect acts as Administrator, with milestone-based disbursement and reporting obligations.  
* **Prior Cardano funding:** Republic has not previously received funding from the Cardano Treasury, Catalyst, or related ecosystem programs.  
* **Open-source commitment:** The project deliverables and code will be open-sourced in accordance with Cardano ecosystem standards.  
* **Third-party auditing and review:** Independent technical oversight will involve third-party review of code, testnet transaction verification, and recorded demonstrations for community oversight.  
* **Wallet setup and stake registration:** Initial wallet setup includes registering a stake address via wallet settings to ensure deposit recovery.

Platform services and ecosystem value: Republic will provide Cardano support across its self-custodial wallet and token management infrastructure. Users will be able to hold and transact supported Cardano assets, while issuers will have access to post-issuance tools such as cap table management, investor accounts, token transfers, vesting administration, and licensed transfer agent services. Republic will also provide access to its Tokenized Deal Room and monthly issuer-matching sessions to help introduce Cardano as an option for prospective issuers.

### Strategic alignment

The proposal supports **Pillar 2: Adoption & Utility** by extending regulated financial infrastructure and user-facing wallet functionality to Cardano. It also supports **Pillar 4: Community & Ecosystem Growth** by connecting Cardano with Republic’s issuer network and demonstrating real-world use cases.

### Milestone Breakdown & Budget Summary

The project funding request for delivery is **USD 338,000.00** over a 12-month engagement, calculated using a reference exchange rate of **USD 0.13 per ADA**. The total requested amount is **2,600,000 ADA**, comprising **2,525,000 ADA** allocated to project delivery and **75,000 ADA** allocated to Intersect’s administration fee.

| Milestone | Deliverables | Timing | Budget |
| ----- | ----- | ----- | ----- |
| 0. One time-setup | Team setup and labor cost | Start of the engagement | *500,000 ada* |
| 1. Republic Wallet | *Cardano support configured for Republic Wallet and platform workflows* *Wallet configuration and customization* *Support for Cardano-based asset interactions* *Real-time transaction status support* *Sign, send, and receive transaction support* *Automated fee calculation* *Native asset formatting for supported Cardano assets* | 6–8 weeks from the enactment date | *1,025,000 ada* |
| 2. Token Management Platform | *Cardano Native Tokens support connected to the Token Management Platform c/o Upside Token holder management support Cap table management support Transfer agent service support where applicable* | 8-12 weeks from the enactment date | *1,000,000 ada* |
| Delivery Subtotal | | | *2,525,000 ada* |
| Intersect’s budget administration fee (3%) | | | *75,000 ada* |
| Total | | | *2,600,000 ADA* |

### Net Change Limit Compliance

The requested amount does not at time of submission, on its own or in aggregate, breach the applicable [500M Net Change Limit](https://cardanoscan.io/govAction/gov_action15atytcy8ru7mkcs8m7r8mx7k5x36t0h6grtgmak6v5wmf4nq07lsqhakceq) covering Epoch 613 to Epoch 713.

In accordance with the guardrail TREASURY-02a, this withdrawal does not exceed the NCL at the moment of submission.

### Audit & Oversight

Audit and oversight costs are included within the overhead applied to this proposal. The Intersect administration fee covers administrative oversight and is reflected within the cost of this proposal.Independent oversight will be provided through Intersect and technically capable third-party, including reporting obligations and milestone-based disbursement controls.

### Prior Treasury Funding Disclosure

In accordance with Article II, Section 7(2), Republic discloses that it has not received ada from the Cardano Treasury within the prior 24 months, nor Project Catalyst funding. This is the Republic's first funding request to the Cardano Treasury.

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

* [Cardano <> Republic CBC Budget Proposal(.docx)](https://docs.google.com/document/d/1RcByfqF9PmH9k8GRs_QljZ6qSIa1rkj5bITYDpNe21s/edit?usp=sharing)  
* [Cardano <> Republic CBC Budget Proposal(ipfs)](ipfs://bafybeiaa5kznsf5sna64j4yxjiu5hbqpgkbnvqt4pdm5x4nmenulybphtq)  
* [Republic Tokenization](https://republic.com/tokenization)  
* [Republic Wallet](https://republic.com/wallet)  
* [Blockchain Integrations](https://republic.com/integrations)  
* [The Republic Note](https://republic.com/note)  
* [Node Infrastructure](https://republic.com/infrastructure)
