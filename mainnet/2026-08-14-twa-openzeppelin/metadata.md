# Treasury

## Title

Withdraw 11,787,063 ada for the OpenZeppelin Stack administered by Intersect

## Abstract

This treasury withdrawal proposal requests funding for the design, implementation, security audit, and ecosystem adoption of a comprehensive open-source development stack for Cardano, delivered over an initial 12 months in quarterly milestones. The proposal bundles three tightly coupled workstreams into a single integrated engagement, led by the Reference Implementations and built around them:

* OpenZeppelin Reference Implementations for Cardano: three production-ready, end-to-end blueprints targeting strategic DeFi and institutional use cases: a Cardano Liquid Staking Protocol, a Self-Repaying Loans Protocol, and a Tokenized Money Market Fund.
* OpenZeppelin Contracts Library for Cardano: a secure, audited, standardized contracts library tailored for Cardano's eUTXO model and Plutus environment, including Contracts Wizard integration, AI development tools, and documentation.
* Security Retainer: dedicated security capacity covering line-by-line audits of the library and full-stack security reviews and penetration testing of every Reference Implementation.

OpenZeppelin also commits to a Developer Enablement and Co-Marketing program, included at no additional cost, to drive ecosystem and institutional adoption of the libraries and Reference Implementations.

This proposal requests a total treasury withdrawal of 11,787,063 ada. The full budget breakdown and disbursement mechanics are set out in the Rationale.

## Motivation

### The Opportunity

Cardano is at an inflection point. With USDCx now live, LayerZero integration underway, and growing institutional interest in what eUTXO can uniquely offer, the ecosystem is consolidating a foundation to scale. The missing pieces are trusted, consolidated building blocks that enable developers to build securely, and clear application paths that make Cardano easier for protocols and institutions to evaluate.

### The Problem

* No reference implementations for composable financial products Cardano's ecosystem needs, including liquid staking, self-repaying loans, and composable DeFi building blocks.
* No standardized, audited contract library that builders can import and compose with confidence. Audited code is scattered across Cardano Foundation repositories, Intersect resources, and individual project codebases.
* Each team independently rebuilds foundational components, which slows adoption, fragments the ecosystem, and increases security risk.

### Continued Commitment

OpenZeppelin's commitment to Cardano is not contingent on this vote. If this proposal does not pass, we will engage relevant community stakeholders on the concerns raised, refine the proposal accordingly, and return with a revised submission.

## Rationale

### Why OpenZeppelin

Founded in 2015, [OpenZeppelin](https://www.openzeppelin.com/) is a leader in securing blockchain applications and smart contracts. Its open-source contract libraries are an industry standard for smart contract development.

| Metric | Value |
| :---- | :---- |
| Total Value Transferred via OpenZeppelin Contracts | +$36 trillion |
| TVL importing OpenZeppelin Contracts | $110B+ |
| Market share in top 50 DeFi protocols | ~85% |
| Transactions processed since 2018 | 5.9B+ |
| Average weekly NPM downloads | ~590K |
| Yearly documentation views | +1.8M |
| Yearly Contracts Wizard views | +1.6M |

### Strategic Fit

OpenZeppelin has built UTXO-based architecture expertise through its Midnight engagement and brings experience translating standards into production-ready building blocks across ecosystems. OpenZeppelin will collaborate with Input Output, the Cardano Foundation, Intersect, and other ecosystem stakeholders, while providing developer-experience feedback on existing ecosystem tooling.

### Strategic Pillar Alignment

This proposal advances three pillars of the Cardano 2030 Strategy.

* **Adoption & Utility:** the Reference Implementations give protocols and institutions production-ready paths to evaluate, fork, and build high-value financial use cases on Cardano - liquid staking, self-repaying loans, and a tokenized money market fund - with the enterprise-grade security patterns they require.  
* **Infrastructure & Research Excellence:** an audited, standardized Contracts Library, CIP-113 contributions, and a proposed Cardano Contract ABI harden the ecosystem's shared building blocks and interoperability standards.  
* **Community & Ecosystem Growth:** the Contracts Wizard, AI-enhanced development tools, documentation, and the Developer Enablement program (included at no additional cost) cultivate a skilled Cardano developer base.

All code is released open source, and the deliverables are designed to enable measurable on-chain impact.

### Specification

#### Objective

* Accelerate DeFi and institutional adoption by providing production-ready Reference Implementations that teams can evaluate, fork, and build upon rather than starting from scratch.
* Standardize secure development by providing audited, composable contract primitives that developers import and compose.
* Bridge the developer gap by delivering a Contracts Library, Contracts Wizard, AI tools, and documentation for Cardano.
* Improve ecosystem tooling through active collaboration and developer-experience feedback while building on Cardano's stack.

#### Implementation Mechanics

The three workstreams connect directly. The Reference Implementations and Contracts Library reinforce each other: Reference Implementation requirements feed the library roadmap, reusable primitives are extracted into standalone components, and those library components are used inside the Reference Implementations. Security is the baseline that makes the Reference Implementations and contract libraries production grade and ready for adoption.

#### Workstream A: Reference Implementations

Each end-to-end implementation will include working reference code, architecture documentation, a demo front end, and threat model and security considerations. All Reference Implementations will be designed with institutional composability in mind and can include patterns such as credential-based access and multi-signature controls.

* Cardano Liquid Staking Protocol: an end-to-end blueprint for an ADA liquid staking protocol that issues a transferable, yield-bearing token representing staked ADA.
* Self-Repaying Loans Protocol: an end-to-end blueprint for a self-repaying loan protocol on Cardano.
* Tokenized Money Market Fund: an end-to-end blueprint for a tokenized money market fund on Cardano, covering share issuance, credential verification, NAV-based subscription and redemption, dividend distribution, and regulatory reporting.

#### Workstream B: Contracts Library

OpenZeppelin proposes a secure, audited, and well-documented contracts library for Cardano that serves the same role as OpenZeppelin Contracts for Solidity. The component list below is preliminary and indicative. The specific smart contract language targeted will be determined during the initial evaluation phase in collaboration with ecosystem stakeholders.

* Library support for existing CIPs, including CIP-113 where stable and ecosystem-ready.
* Access Control and Roles.
* Cryptographic Utilities.
* DeFi Math Library.
* Vaults and DeFi Primitives.
* Timelock and Pause.
* Staking and Delegation Utilities.
* Governance.
* Credentials and Claims.
* Modular Account Abstraction and Multi-Sig.
* Vesting Contracts.
* Standardized Messaging Gateway.
* Cardano Contract ABI.
* Additional Cardano standards to be determined with ecosystem stakeholders.

#### Developer Tools

* Contracts Wizard and Documentation for Cardano.
* OpenZeppelin UI Builder for front-end interfaces.
* AI-Enhanced Development Tools, including Contracts MCP Server, AI Development Skills, and Claude Plugin packaging Cardano-specific MCP tools, skills, and development resources.
* Comprehensive documentation with a dedicated Cardano section on OpenZeppelin Documentation.

#### Workstream C: Security Retainer

OpenZeppelin will dedicate 22 researcher-weeks of security capacity over 12 months, covering:

* Smart contract security audits across the Contracts Library and Reference Implementations.
* Full-stack security reviews of each Reference Implementation.
* Penetration testing against Reference Implementation deployments where applicable.
* Continuous Coverage and AI-Security Agent support, with findings reviewed and validated by OpenZeppelin auditors.
* Immunefi bug bounty assistance, with OpenZeppelin funding bounty payouts at the same levels as its standard OpenZeppelin Contracts bug bounty program.

This security capacity is scoped to OpenZeppelin-produced code. All security findings and reports will be published alongside the audited releases.

#### Developer Enablement and Co-Marketing

* Dedicated Technical Account Manager for the Cardano Foundation.
* In-depth tutorials and step-by-step guides for each release.
* Hackathon coaching and workshops.
* Interactive demos and feedback sessions.
* Co-marketing campaigns for developer awareness and adoption of the Reference Implementations.
* Dedicated Cardano Network Page on OpenZeppelin's website.
* Technical workshops at Cardano's flagship event and strategic conferences.
* Quarterly community feedback sessions via community calls, X-spaces, Discord, and developer office hours.

#### Architectural Alignment

* App Building and Developer Experience.
* Security and Resilience.
* Financial Workflows and Composability.
* Ecosystem Standards Leadership through CIP-113, a proposed Cardano Contract ABI, and standards discussions.

#### Backward Compatibility

There is no backward compatibility impact. The Contracts Library and Reference Implementations are new additions to the ecosystem. Library components implementing existing CIPs will follow published specifications and maintain compatibility with existing ecosystem tooling.

### Milestones, Deliverables and Acceptance Criteria

Delivery runs twelve months in four quarterly milestones, commencing on the date the Legal Contract with Cardano Development Holdings is signed, with approximately 20 days from signing to resolve staffing and commence development (contemplated within the Timing proposed below).

OpenZeppelin submits for each milestone a Milestone Acceptance Form supported by publicly accessible evidence and complying with the acceptance criteria described below.

| Milestone | Timing | Focus | Scope | Acceptance Criteria |
| :---- | :---- | :---- | :---- | :---- |
| Milestone 1 | Q1: October 1, 2026 - December 31, 2026 | Foundations and dApp Framework | Research and design for the three Reference Implementations; Access Control and Roles; Cryptographic Utilities; DeFi Math Library; initial Cardano documentation; security audits of library components; Continuous Coverage and AI-Security Agent. | Architecture documents for the 3 Reference Implementations published and reviewed by pre-agreed counterparties. Access Control, Cryptographic Utilities, and DeFi Math components implemented and demonstrated with working examples. All library code compiles against the chosen Cardano toolchain and passes CI with 100% test pass rate. 90% code coverage confirmed via automated test reporting. All code published in public GitHub repositories under MIT license (OpenZeppelin tooling under AGPL 3.0). |
| Milestone 2 | Q2: January 1, 2027 - March 31, 2027 | Liquid Staking and DeFi Enablers | Liquid Staking Reference Implementation; Vaults; DeFi Primitives; Timelock and Pause; Staking and Delegation Utilities; security audits of Milestone 1 deliverables (audit report published); security reviews and penetration tests of RI 1. | Liquid Staking RI demonstrable on testnet: deposit, delegation across an SPO set, LST issuance and accrual, and redemption. Demo front-end functional for core Liquid Staking flows. Threat model identifies and documents eUTXO-specific attack vectors. Vaults, DeFi Primitives, Timelock/Pause, and Staking & Delegation components pass >90% code coverage with full CI integration. Educational materials on building DeFi protocols on Cardano published alongside the RI. M1 audit report published with all critical and high findings resolved. |
| Milestone 3 | Q3: April 1, 2027 - June 30, 2027 | Self-Repaying Loans and DevTools | Self-Repaying Loans Reference Implementation; Governance; Credentials and Claims; Modular Account Abstraction and Multi-Sig; Contracts Wizard, UI Builder, Documentation, and AI-Enhanced Development Tools for Cardano; security audits of Milestone 2 deliverables (audit report published); security reviews and penetration tests of RI 2. | Self-Repaying Loans RI demonstrable on testnet: collateral deposit, synthetic-debt issuance, a harvest mechanism applying accrued yield to debt, and redemption. Demo front-end functional for core flows. Governance, Credentials & Claims, and Multi-Sig / Account Abstraction components pass >90% code coverage with full CI integration. Contracts Wizard generates valid Cardano contract code for token and vault configurations. AI tools (MCP Server) return correct library component usage patterns for Cardano-specific queries. Cardano Network section on OpenZeppelin Documentation is comprehensive for all released library components. M2 audit report published with all critical and high findings resolved. At least 1 independent Cardano developer has reviewed and provided feedback on the library components (written confirmation). |
| Milestone 4 | Q4: July 1, 2027 - September 30, 2027 | Tokenized MMF, Interop, and Standards Leadership | Tokenized MMF Reference Implementation; Vesting Contracts; Standardized Messaging Gateway; Cardano Contract ABI; CIP-113 participation and design contributions; security audits of Milestones 3 and 4 deliverables (audit reports published for Milestone 3 audits; established timeline for Milestone 4 audit publication); security reviews and penetration tests of RI 3. | Tokenized MMF RI demonstrable on testnet: share issuance with KYC/AML credential verification, NAV-based subscription and redemption, dividend distribution, and settlement via USDCx or equivalent. Demo front-end functional for core flows. Vesting, Standardized Messaging Gateway, and Cardano Contract ABI components pass >90% code coverage with full CI integration. M3 audit reports published with all critical and high findings resolved. Critical and high findings in M4 audits reports addressed. Agreed publication timeline of M4 audit reports. 12-Month Scope Review completed with a Year 2 continuation proposal shared with the Cardano Foundation. |

### Budget Summary

The project funding requested for delivery is USD $1,831,000 over 12 months. The on-chain withdrawal is received in ada and additionally covers the Intersect administration fee. The total ada request for this proposal is 11,787,063 ada, calculated at a reference rate of USD 0.16 per ada. This total is distributed as 11,443,750 ada for delivery plus a 343,313 ada Intersect administration fee (3%). Amounts in the table below are expressed in ada at this reference rate.

As agreed with the administrator, the delivery portion (11,443,750 ada) is converted at contract signature to a USD-denominated stablecoin using Intersect’s stablecoin conversion service. A kick-off payment of 20% of the delivery budget (subject only to legal sign-off) is released once the Legal Contract is signed. The remaining 80% is paid in four equal stablecoin denominated milestone payments, per the milestone table below.

Each of the four milestone payments is released only after: (i) OpenZeppelin submits the Milestone Acceptance Form with publicly accessible evidence against every acceptance criterion; and (ii) Intersect Delivery Assurance verifies and approves. Funds remaining in the contract at expiry sweep back to the Cardano Treasury automatically at the contract level.

| Milestone | Reference Implementations | Contracts Library | Security | Dev Enablement | ada (@ USD 0.16) | USD-denominated stablecoin | % |
| :---- | :---- | :---- | :---- | :---- | :---- | :---- | :---- |
| Kick-off (upfront) | - | - | - | - | 2,288,750 | 366,200 | 20% |
| M1 | Research and Design | Access Control, Cryptography, DeFi Math | Audits, Continuous Coverage | Included | 2,288,750 | 366,200 | 20% |
| M2 | RI 1: Liquid Staking | Vaults, DeFi Primitives, Timelock/Pause, Staking and Delegation | Audits, Reviews, Pen Tests | Included | 2,288,750 | 366,200 | 20% |
| M3 | RI 2: Self-Repaying Loans | Governance, Credentials and Claims, Multi-Sig/AA, Wizard, AI Tools | Audits, Reviews, Pen Tests | Included | 2,288,750 | 366,200 | 20% |
| M4 | RI 3: Tokenized MMF, 12-month Review | Vesting, Messaging Gateway, Contract ABI, CIP-113 design contributions, Additional Standards | Audits, Reviews, Pen Tests | Included | 2,288,750 | 366,200 | 20% |
| Delivery subtotal | | | | | 11,443,750 | 1,831,000 | 100% |
| Intersect Budget Administration fee (3%) | | | | | 343,313 | - | - |
| **Total treasury withdrawal** | | | | | **11,787,063** | **-** | **-** |

### Net Change Limit Compliance

The requested amount does not at time of submission, on its own or in aggregate, breach the applicable 500M [Net Change Limit](https://cardanoscan.io/govAction/gov_action15atytcy8ru7mkcs8m7r8mx7k5x36t0h6grtgmak6v5wmf4nq07lsqhakceq) covering Epoch 613 to Epoch 713.

In accordance with the guardrail TREASURY-02a, this withdrawal does not exceed the NCL at the moment of submission.

### Audit & Oversight

Audit and oversight costs are included within the overhead applied to this proposal. The Intersect administration fee covers administrative oversight and is reflected within the cost of this proposal. Independent oversight will be provided through Intersect and technically capable third-party, including reporting obligations and milestone-based disbursement controls.

### Prior Treasury Funding Disclosure

In accordance with Article II, Section 7(2), OpenZeppelin discloses that it has not received ada from the Cardano Treasury within the prior 24 months, nor Project Catalyst funding. This is OpenZeppelin's first funding request to the Cardano Treasury.

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

* [OpenZeppelin Cardano Proposal dated August 13, 2026](ipfs://bafybeidb5wgwdqqdrm72ir4bbcyfxrbx5ip3q5gs3uuxndoafqthxboe4e)
* [OpenZeppelin Website](https://www.openzeppelin.com/)
* [Automating Accountability: Cardano's Smart Contract Framework Blog](ipfs://bafybeihqx4ae72z7suqfnxrpqpqithp43cai7o2uuewnqtezgaoyc3ptyq)
* [Sundae Labs Budget Management Smart Contracts Github Repository](https://github.com/SundaeSwap-finance/treasury-contracts)
* [Budget Management Smart Contracts TxPipe Audit Report](ipfs://bafybeiccnwejbgj43wo6hrlseckkkmprtoqc5cfuy2hesm6c6yealwho3e)
* [Cardano Blockchain Ecosystem Constitution](ipfs://bafkreieyuknozbtewyurfqoagvplvykadn6a4u6wglupavdz46bbsnnl6e)
