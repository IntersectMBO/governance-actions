## Title

Withdraw 4,289,646 ada: OpenZeppelin Cardano Institutional Stack

## Abstract

This treasury withdrawal proposal requests funding for the design, implementation, security audit, and ecosystem adoption of an institutional focused open-source development stack for Cardano, delivered over six months in two milestones. The proposal bundles three tightly coupled workstreams into a single integrated engagement, led by a Tokenised Money Market Fund Reference Implementation and built around it:

* OpenZeppelin Tokenized Money Market Fund Reference Implementation for Cardano: a production-ready, end-to-end blueprint for a Tokenized Money Market Fund, built on components the ecosystem already funded, including the Cardano Foundation’s CIP-113 programmable tokens.
* OpenZeppelin Contracts Library for Cardano: a secure, audited, standardized contracts library focused on institutional usage, written in Aiken and tailored for Cardano's eUTXO model. It is limited to the new components the Tokenized Money Market Fund Reference Implementation requires and that are not already available or planned in the ecosystem. Includes Contracts Wizard integration and documentation.
* Security Retainer: dedicated security capacity covering line-by-line audits of the new library components and Reference Implementation smart contracts, security reviews of the ecosystem components we adopt, and full-stack security reviews and penetration testing of the Reference Implementation.

OpenZeppelin also commits to a Developer Enablement and Co-Marketing program, included at no additional cost, to drive ecosystem and institutional adoption of the Tokenized Money Market Fund Reference Implementation and Contracts Library.

This proposal requests a total treasury withdrawal of 4,289,646 ada. The full budget breakdown and disbursement mechanics are set out in the Rationale.

## Motivation

### Changes Highlights Since our Previous Submission

These are some of the changes introduced into this proposal following the feedback provided by the community for our previous submission (gov_action1gxxltxr02p28a398p8c6t08xhpg82wkkv9xgwvuxkly48lhgf20sqlkl2l8).

| Feedback on the Previous Submission | Change in this proposal |
| :---- | :---- |
| The proposal does not build on what the ecosystem already funds | The new proposed library is limited to developing components the Tokenized MMF needs and that Input Output’s contracts library does not provide or plan; the Tokenized MMF is built on components the ecosystem already funds (e.g., CIP-113 and its KYC modules), security-reviewed by OpenZeppelin. (See section: Workstream B) |
| CIP-113 is already published and funded | Our Tokenized MMF and library will adopt the CIP-113 implementation from the Cardano Foundation, including its KYC modules for credential verification. (See section: Workstream B) |
| Two Reference Implementations poorly targeted | The updated proposal is scoped down to focus on institutional usage, and targets only the Tokenized MMF Reference Implementation. Liquid Staking and Self-Repaying Loans have been removed from the proposal. (See section: Workstream A) |
| Security retainer sized to the wrong scope | 10 researcher-weeks (down from 22) over six months, scoped to perform audits and security reviews of the Tokenized Money Market Fund, new library components and reviews of ecosystem components adopted, plus a penetration test of the Reference Implementation (Workstream C) |
| S&P Global acquisition not disclosed | Disclosed (See section: OpenZeppelin and S&P Global) |
| One 2027 strategy with vendors selected by RFP | Bounded six-month scope, with a 6-Month Scope Review as input to the ecosystem’s 2027 planning; 2027 proposals will be submitted through the ecosystem’s preferred method (See section: Continued Commitment) |

### The Opportunity

Cardano is at an inflection point. With USDCx now live, CIP-113 programmable tokens live on mainnet, and growing institutional interest in what eUTXO can uniquely offer, the ecosystem is consolidating a foundation to scale. The missing piece is a clear application path that makes Cardano easier for institutions to evaluate.

### The Problem

* No reference implementation showing institutions how to issue and administer a compliant tokenized fund on Cardano.
* No standardized, audited contract components that institutional teams can import and compose with confidence.
* Each team independently rebuilds foundational components, which slows adoption, fragments the ecosystem, and increases security risk.

### Continued Commitment

OpenZeppelin's commitment to Cardano is not contingent on this vote. After our previous submission (gov_action1gxxltxr02p28a398p8c6t08xhpg82wkkv9xgwvuxkly48lhgf20sqlkl2l8) expired, we return with this revised proposal addressing the issues raised by voters. Further OpenZeppelin proposals for 2027 will be submitted through the ecosystem’s preferred method at the time, including RFPs where they apply.

This proposal is not sponsored or endorsed by Intersect. OpenZeppelin has independently brought the proposal forward and, having met the requirements for Intersect’s Administration service, Intersect is prepared to act as administrator should the Cardano community choose to approve it.

### OpenZeppelin and S&P Global

On 17 September 2026, S&P Global announced an agreement to acquire OpenZeppelin. OpenZeppelin will continue to operate as its own business division through Zeppelin Group Ltd and its leadership, security audits, engineering and ecosystem programs continue as today, delivered by the same team. All code under this proposal is released open source, and every released version remains open source by the terms of such license. All obligations of OpenZeppelin will be set out in its standard form of Ecosystem Agreement executed through Intersect’s administration.

## Rationale

### Why OpenZeppelin

Founded in 2015, [OpenZeppelin](https://www.openzeppelin.com/) is a leader in securing blockchain applications and smart contracts. Its open-source contract libraries are an industry standard for smart contract development.

| Metric | Value |
| :---- | :---- |
| Total Value Transferred via OpenZeppelin Contracts | +$39 trillion |
| TVL importing OpenZeppelin Contracts | $140B+ |
| Market share in top 50 DeFi protocols | ~85% |
| Transactions processed since 2018 | 7.7B+ |
| Average weekly NPM downloads | ~900K |
| Yearly documentation views | +1.8M |
| Yearly Contracts Wizard views | +1.6M |

### Strategic Fit

OpenZeppelin has built UTXO-based architecture expertise through its Midnight engagement and brings experience translating standards into production-ready building blocks across ecosystems. OpenZeppelin will collaborate with Input Output, the Cardano Foundation, Intersect, and other ecosystem stakeholders, while providing developer-experience feedback on existing ecosystem tooling, and setting a clear path that enables institutional adoption.

### Strategic Pillar Alignment

This proposal advances three pillars of the Cardano 2030 Strategy.

* **Adoption & Utility:** the Tokenized Money Market Fund Reference Implementation gives institutions a production-ready path to evaluate, fork, and build high-value financial use cases on Cardano, with the enterprise-grade security patterns they require.  
* **Infrastructure & Research Excellence:** an audited, standardized Contracts Library focused on institutional use cases, and security reviews of the ecosystem components we build on, will harden the ecosystem's shared building blocks.  
* **Community & Ecosystem Growth:** the Contracts Wizard, documentation, and the Developer Enablement program (included at no additional cost) cultivate a skilled Cardano developer base.

All code is released open source, and the deliverables are designed to enable measurable on-chain impact.

### Specification

#### Objective

* Accelerate institutional adoption by providing a production-ready Tokenized Money Market Fund Reference Implementation that teams can evaluate, fork, and build upon rather than starting from scratch.
* Standardize secure development by providing audited, composable primitives that developers import and compose.
* Bridge the adoption gap by delivering an institutional focused Contracts Library, Contracts Wizard, and documentation for Cardano.
* Improve ecosystem tooling through active collaboration and developer-experience feedback while building on Cardano's stack.

#### Implementation Mechanics

The three workstreams connect directly. The Tokenized Money Market Fund Reference Implementation and Contracts Library reinforce each other. The Reference Implementation requirements define the library scope, reusable primitives are extracted into standalone components, and those library components, together with the adopted ecosystem components, are used inside the Reference Implementation. Security is the baseline that makes the Reference Implementation and contract libraries production-grade and ready for adoption.

#### Workstream A: Tokenized Money Market Fund Reference Implementation

We will develop a Tokenized Money Market Fund Reference Implementation. An end-to-end blueprint for a tokenized money market fund on Cardano, covering share issuance, credential verification, NAV-based subscription and redemption, dividend distribution, and regulatory reporting. Built on the Cardano Foundation’s CIP-113 programmable tokens and KYC modules, other components the ecosystem already funds, and settled in USDCx or another USD stablecoin.

The end-to-end implementation will include working reference code, architecture documentation, a demo front end, and threat model and security considerations. It will be designed with institutional composability in mind and can include patterns such as credential-based access, multi-signature controls, and pausing of subscriptions and redemptions.

[OpenZeppelin Contracts underpin all ten of the largest tokenized money market funds by market cap](https://www.openzeppelin.com/); this Reference Implementation brings proven patterns to Cardano’s eUTXO model, built on CIP-113 and other components the ecosystem already funds and that OpenZeppelin will validate.

#### Workstream B: Contracts Library

OpenZeppelin proposes a secure, audited, and well-documented contracts library for Cardano, with a focus on institutional usage. The library will be written in Aiken. In this proposal it will be limited to standardizing the components the Tokenized Money Market Fund requires, so that they can also be reused for other institutional use cases. Our library will complement Input Output’s contracts library ([https://github.com/input-output-hk/contracts-library](https://github.com/input-output-hk/contracts-library)), with a clear division of roles (Input Output’s library focuses on general-purpose, developer-experience contracts; OpenZeppelin’s on institutional and regulated-finance components): the two libraries can be used independently or together, and existing ecosystem components are composed in the Reference Implementation.

Specific contract types to be implemented will be determined as the architecture for the Tokenized Money Market Fund Reference Implementation is defined. Some of the contract types to be supported may include but are not limited to:

* Cryptographic Utilities: signature verification for signed NAV updates and other oracle attestations, and Merkle proof verification.
* Access Control and Roles: fund administrator, transfer agent and NAV roles.
* DeFi Math Library: NAV-per-share, subscription, redemption and dividend arithmetic.
* Vaults: NAV-priced share accounting for asynchronous subscriptions and redemptions of permissioned fund shares, evaluated first against existing designs such as Sundae Labs’ SundaeSwap v4 pools.
* Additional Cardano standards needed for institutional usage (e.g., async subscription/redemption, NAV publication, dividend distribution).

**For every individual contract type required for the Tokenized Money Market Fund Reference Implementation, we will analyze if existing ecosystem components already fulfill the role of a smart contract standard implementation, reusing them and contributing upstream where possible.**

- Components available in the ecosystem will be reused and built upon in the Tokenized Money Market Fund, not rebuilt. These may include the Cardano Foundation’s CIP-113 programmable tokens and KYC and freeze-and-seize modules, components from Input Output’s contracts library (developed under its treasury-funded Developer Experience Initiative) and, where applicable, Anastasia Labs’ Aiken design patterns, the MeshJS and TrustLevel Aiken open-source smart contract library and other ecosystem components planned to be production-ready within our proposed timeline. Credentials and Claims and Multi-Sig components may be covered using or extending the CIP-113 KYC modules and Cardano native multi-signature scripts.  
- OpenZeppelin will perform a risk-prioritized security review of each component it imports into its Tokenized Money Market Fund Reference Implementation. Existing or planned audits for these components will be considered to minimize the new security review effort. Where no audit covers the imported version or a new extension developed and contributed upstream by OpenZeppelin, the code paths the Tokenized Money Market Fund uses will be audited by OpenZeppelin, with issues disclosed responsibly, reports published and fixes contributed upstream.  
- Adopted components meet the same quality standards as OpenZeppelin’s own, findings and changes are contributed upstream, and they are documented and offered in the Contracts Wizard and OpenZeppelin documentation with attribution.
- Input Output’s contracts library ([https://github.com/input-output-hk/contracts-library](https://github.com/input-output-hk/contracts-library)) is not duplicated: OpenZeppelin builds only components that are neither implemented nor selected in Input Output’s public roadmap and contract catalog ([https://github.com/input-output-hk/contracts-library/issues/16](https://github.com/input-output-hk/contracts-library/issues/16)) for release within our timeline, and that are necessary for institutional usage and our Tokenized Money Market Fund Reference Implementation. Where a needed component already exists or is planned elsewhere in the ecosystem, OpenZeppelin documentation will point developers to it.

#### Developer Tools

* Contracts Wizard.
* Comprehensive documentation with a dedicated Cardano section on OpenZeppelin Documentation, including and linking to adopted components and tools with attribution.

#### Workstream C: Security Retainer

OpenZeppelin will dedicate 10 researcher-weeks of security capacity over six months, allocated as a single risk-prioritized pool, plus a dedicated penetration test of the Reference Implementation, covering:

* Smart contract security audits across the Tokenized Money Market Fund Reference Implementation onchain components and Contracts Library, including code paths of unaudited ecosystem components the Reference Implementation uses.
* Security reviews of the adopted ecosystem components, starting from their existing or planned audits, validating and complementing — not repeating — security work they already cover.
* Full-stack security review of the Reference Implementation.
* Penetration testing against the Reference Implementation deployment.
* Continuous Coverage and OpenZeppelin AI-Security Agent support, with findings reviewed and validated by OpenZeppelin auditors.
* Immunefi bug bounty assistance, with OpenZeppelin funding bounty payouts at the same levels as its standard OpenZeppelin Contracts bug bounty program. This covers the OpenZeppelin Contracts library for Cardano.

This security capacity is scoped to OpenZeppelin-produced code and the ecosystem components the Tokenized Money Market Fund adopts. All security findings and reports will be published alongside the audited releases. OpenZeppelin develops and audits its libraries with an internal separation between its engineering and security research teams to avoid conflicts of interest.

#### Developer Enablement and Co-Marketing

* Dedicated Technical Account Manager for the Cardano ecosystem.
* In-depth tutorials and step-by-step guides for each release.
* Hackathon coaching and workshops.
* Interactive demos and feedback sessions.
* Co-marketing campaigns for developer awareness and adoption of the Reference Implementation.
* Dedicated Cardano Network Page on OpenZeppelin's website.
* Technical workshops at Cardano's flagship event or strategic conferences.
* Community feedback sessions at each milestone via community calls, X-spaces, Discord, and developer office hours.

#### Architectural Alignment

* Institutional Adoption, Secure Development and Developer Experience.
* Security and Resilience.
* Financial Workflows and Composability.
* Ecosystem Standards Leadership through CIP-113 integration, security reviews and validation of shared ecosystem components, and standards discussions for adopted and newly implemented components.

#### Backward Compatibility

There is no backward compatibility impact. The Reference Implementation and Contracts Library components are new additions to the ecosystem and will be built with ecosystem tooling and library compatibility in mind. Library components implementing CIPs will follow published specifications and maintain compatibility with existing ecosystem tooling.

### Milestones, Deliverables and Acceptance Criteria

Delivery runs six months in two milestones of three months each, commencing on the date the Legal Contract with Cardano Development Holdings is signed, with approximately 20 days from signing to resolve staffing and commence development (contemplated within the Timing proposed below). Indicative dates assume signature in December 2026.

OpenZeppelin submits for each milestone a Milestone Acceptance Form supported by publicly accessible evidence and complying with the acceptance criteria described below.

| Milestone | Timing | Focus | Scope | Acceptance Criteria |
| :---- | :---- | :---- | :---- | :---- |
| Milestone 1 | Months 1–3 (indicative: January–March 2027) | Foundations and Ecosystem Components Security Reviews | Research and design for the Tokenized MMF Reference Implementation; Access Control and Roles; Cryptographic Utilities; DeFi Math Library; initial Cardano documentation; security reviews of adopted ecosystem components; Continuous Coverage and AI-Security Agent. | Architecture document for the Tokenized Money Market Fund Reference Implementation published. Access Control, Cryptographic Utilities, and DeFi Math components implemented and demonstrated with working examples. All library code compiles against the Aiken toolchain and passes CI with 100% test pass rate. At least 90% code coverage confirmed via automated test reporting. All code published in public GitHub repositories under MIT license (OpenZeppelin tooling under AGPL 3.0). Security review report for adopted ecosystem components published, with findings responsibly disclosed to their maintainers first. |
| Milestone 2 | Months 4–6 (indicative: April–June 2027) | Tokenized MMF Reference Implementation and Contracts Library production releases. | Tokenized MMF Reference Implementation (core on-chain flows with CIP-113, credentials and multi-sig integration, pause controls; NAV-based subscription and redemption; dividend distribution; regulatory reporting; USDCx settlement or equivalent; demo front end); Vaults and additional institutional standards; Contracts Wizard and Documentation; security audits of the Contracts Library components and the Reference Implementation (audit reports published); full-stack security review and penetration test of the Reference Implementation; 6-Month Scope Review Report (public report on delivered scope and recommendations as input to the ecosystem’s 2027 planning). | Tokenized MMF Reference Implementation demonstrable on testnet using the Cardano Foundation's CIP-113 modules. Share issuance with credential verification, NAV-based subscription and redemption, dividend distribution, regulatory reporting, and settlement via USDCx or equivalent. Demo front-end functional for core flows. Threat model identifies and documents eUTXO-specific attack vectors. Vaults and additional institutional standard components pass at least 90% code coverage with full CI integration. Educational materials on building institutional applications on Cardano published alongside the Reference Implementation. Contracts Wizard generates valid Cardano contract code configurations. Cardano Network section on OpenZeppelin Documentation is comprehensive for all released library components and documents adopted components with attribution. Contracts Library and Reference Implementation audit reports, and full-stack security review and penetration test reports published with all critical and high findings resolved. At least 1 independent Cardano developer has reviewed and provided feedback on the library components (written confirmation) 6-Month Scope Review Report published. |

### Budget Summary

The project funding requested for delivery is USD $708,000 over six months. The on-chain withdrawal is received in ada and additionally covers the Intersect administration fee. The total ada request for this proposal is 4,289,646 ada, calculated at a reference rate of USD 0.17 per ada. This total is distributed at the reference rate as 4,164,705 ada for delivery plus a 124,941 ada Intersect administration fee (3%). Amounts in the table below are expressed in ada at this reference rate.

As agreed with the administrator, the ada needed to fund the USD 708,000 delivery budget is converted at contract signature to a USD-denominated stablecoin using Intersect’s stablecoin conversion service. This is used for the subsequent kick-off and milestone payments. Any remaining ada not required for the delivery budget or the Intersect administration fee is not converted and is returned to the Cardano Treasury at the end of the engagement.

A kick-off payment of 20% of the delivery budget (subject only to legal sign-off) is released once the Legal Contract is signed. The remaining 80% is paid in two equal stablecoin denominated milestone payments, per the milestone table below.

Each of the two milestone payments is released only after: (i) OpenZeppelin submits the Milestone Acceptance Form with publicly accessible evidence against every acceptance criterion; and (ii) Intersect Delivery Assurance verifies and approves. Funds remaining in the contract at expiry sweep back to the Cardano Treasury automatically at the contract level.

| Milestone | Tokenized Money Market Fund Reference Implementation | Contracts Library | Security | Dev Enablement | ada (@ USD 0.17) | USD-denominated stablecoin | % |
| :---- | :---- | :---- | :---- | :---- | :---- | :---- | :---- |
| Kick-off (upfront) | - | - | - | - | 832,941 | 141,600 | 20% |
| M1 | Research and Design | Access Control, Cryptography, DeFi Math | Security Reviews for adopted components, Continuous Coverage | Included at no additional cost | 1,665,882 | 283,200 | 40% |
| M2 | Tokenized MMF, 6-month Review | Vaults, Additional standards,  Documentation, Wizard. | Audits, Security Reviews, Pen Tests, Continuous Coverage. | Included at no additional cost | 1,665,882 | 283,200 | 40% |
| Delivery subtotal |  |  |  |  | 4,164,705 | 708,000 | 100% |
| Intersect Budget Administration fee (3%) |  |  |  |  | 124,941 | - | - |
| **Total treasury withdrawal** |  |  |  |  | **4,289,646** | **-** | **-** |

### Licensing

All code produced under this proposal is released as open source in public GitHub repositories. The Tokenized Money Market Fund Reference Implementation and Contracts Library are released under the MIT license, and OpenZeppelin tooling (including Cardano support in the Contracts Wizard) under the AGPL 3.0 license. Adopted ecosystem components keep their original licenses and are credited wherever they are used. Every released version remains open source.

### Support and Maintenance

For three months after delivery of Milestone 2, OpenZeppelin will provide Standard Tier support and maintenance, as defined below, at no additional cost. This covers the code OpenZeppelin delivers under this proposal: the Tokenized Money Market Fund Reference Implementation, the Contracts Library components, and Cardano support in the Contracts Wizard and OpenZeppelin documentation.

| Item | Standard Tier |
| :---- | :---- |
| Support channels | Dedicated Slack/Telegram; up to 2 named contacts |
| Coverage | Business hours (9–6 ET, Mon–Fri), all severities |
| SLAs | S0 fix in prod ≤1 wk; S1 ≤3 wks; S2 ≤45 days; S3 scheduled; ack ≤1 business day |
| Proactive | Quarterly dependency reviews + patch notifications |

Adopted ecosystem components remain the responsibility of their maintainers, and OpenZeppelin reports any issues to them and documents dependency statuses in our deliverables.

Continued support and maintenance after this period will be handled through new proposal submissions, using the ecosystem’s preferred method at the time.

### Net Change Limit Compliance

The requested amount does not at time of submission, on its own or in aggregate, breach the applicable 500M [Net Change Limit](https://cardanoscan.io/govAction/gov_action15atytcy8ru7mkcs8m7r8mx7k5x36t0h6grtgmak6v5wmf4nq07lsqhakceq) covering Epoch 613 to Epoch 713.

In accordance with the guardrail TREASURY-02a, this withdrawal does not exceed the NCL at the moment of submission.

### Audit & Oversight

Audit and oversight costs are included within the overhead applied to this proposal. The Intersect administration fee covers administrative oversight and is reflected within the cost of this proposal. Independent oversight will be provided through Intersect and technically capable third-party, including reporting obligations and milestone-based disbursement controls.

### Prior Treasury Funding Disclosure

In accordance with Article II, Section 7(2), OpenZeppelin discloses that it has not received ada from the Cardano Treasury within the prior 24 months, nor Project Catalyst funding. This is OpenZeppelin's second funding request to the Cardano Treasury; the first submission (gov_action1gxxltxr02p28a398p8c6t08xhpg82wkkv9xgwvuxkly48lhgf20sqlkl2l8), expired without ratification and no funds were withdrawn.

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

* [Withdraw 11,787,063 ada for the OpenZeppelin Stack administered by Intersect (previous submission)](https://explorer.cardano.org/governance-action?id=418df5986f50547ec4a709f1a5bce6b850753ad6614c873386b7c953fee84a9f00)

* [S&P Global Enters Agreement to Acquire OpenZeppelin](https://www.openzeppelin.com/news/spglobal-enters-agreement-to-acquire-openzeppelin)

* [Input Output Contracts Library](https://github.com/input-output-hk/contracts-library)

* [Cardano Foundation CIP-113 Programmable Tokens](https://github.com/cardano-foundation/cip113-programmable-tokens)

* [OpenZeppelin Website](https://www.openzeppelin.com/)

* [Automating Accountability: Cardano's Smart Contract Framework Blog](ipfs://bafybeihqx4ae72z7suqfnxrpqpqithp43cai7o2uuewnqtezgaoyc3ptyq)

* [Sundae Labs Budget Management Smart Contracts Github Repository](https://github.com/SundaeSwap-finance/treasury-contracts)

* [Budget Management Smart Contracts TxPipe Audit Report](ipfs://bafybeiccnwejbgj43wo6hrlseckkkmprtoqc5cfuy2hesm6c6yealwho3e)

* [Cardano Blockchain Ecosystem Constitution](ipfs://bafkreieyuknozbtewyurfqoagvplvykadn6a4u6wglupavdz46bbsnnl6e)
