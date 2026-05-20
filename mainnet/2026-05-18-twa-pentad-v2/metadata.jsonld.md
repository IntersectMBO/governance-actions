# Markdown Representation of metadata.jsonld

## Title

Cardano Critical Integrations V2

## Abstract

This governance action requests the withdrawal of ₳23,000,000 (USD 5,750,000 based on $0.25c) from the Cardano Treasury to cover a focused ‘Year 2’ contracted cost and a 12-month enhancement & maintenance program for the critical integrations already delivered or currently being integrated under the first Cardano Critical Integrations Budget (“CCI V1”): Circle (USDCx), LayerZero, Pyth Price Feeds, Dune Analytics, and a new full native integration of Fireblocks.

The CCI V2 initiative provides the necessary funding for the ongoing operation and optimization of infrastructure previously established. While CCI V1 was responsible for delivering the primary foundational framework and launch readiness, CCI V2 ensures that this infrastructure remains functional, reliable, and equipped with advanced features to support the expanding needs of the ecosystem.

### Fund administration

Funds will be administered by Intersect under the Treasury Reserve Smart Contract Framework over a 12 month delivery window. Drawdowns occur only after signed agreements and Statements of Work are submitted and verified. Funds are expected to be ringfenced and held in stablecoins, until such time that they are needed.

### Prior Treasury Receipt Disclosure

Pursuant to Article II, Section 7, Item 2 of the Cardano Blockchain Ecosystem Constitution, the proposer discloses that the prospective recipient of this Treasury Withdrawal, acting through the Pentad steering structure with Intersect as Administrator, received ₳70,000,000 from the Cardano Treasury in the prior 24 month period under the “Cardano Critical Integrations Budget” (gov_action1lqun78lcznfa2gek49m3ydslakfnm8heargfp8sax9fk54yl6ghsqp042zv).

The following integrations have either been successfully launched on mainnet or are currently in the implementation phase under CCI V1: Circle (USDCx on Cardano), LayerZero cross-chain messaging and bridge infrastructure, Pyth pricing oracles, and Dune Analytics coverage. V2 exists only to sustain, optimize and extend what V1 built, with the addition of Fireblocks institutional custody as a new integration funded within this withdrawal.

## Motivation

### CCI V1 Contracted Year 2 Licensing/Platform fees

All primary integrations from CCI V1 - specifically Circle, LayerZero, Pyth, and Dune - require ongoing annual payments for licensing, services, or attestations to remain operational. These recurring costs represent the necessary subscription investment for top-tier infrastructure access. To prevent the risks of inadequate maintenance funding, treasury commitments must be planned around this annual baseline. Accordingly, this proposal incorporates the contracted Year 2 expenses for these foundational CCI V1 integrations.

### Maintenance Requirements by Integration

The integrations delivered under CCI V1 are live infrastructure. Keeping them live carries ongoing operating costs that must be funded year over year. Without funded maintenance, the usability of the integrations deteriorates:

* **Circle (USDCx):** Attestor infrastructure and operations, monitoring, and the operational oversight from contract administrator.

* **LayerZero:** Maintenance of the V1-delivered cross-chain messaging and bridge infrastructure: Cardano endpoint operations, DVN (security) configuration and validator set support, and protocol-version compatibility work as LayerZero ships upstream upgrades.

* **Pyth Network:** Oracle feed continuity, push and pull publisher incentives, and Cardano-specific infrastructure.

* **Dune Analytics:** Subgraph coverage, schema maintenance, and Cardano-dedicated dashboard refresh cycles.

Maintaining these systems is not optional for a chain that holds itself as infrastructure-ready. Competitive L1 ecosystems fund infrastructure maintenance as a recurring operating cost.

### Fireblocks Native Integration

Fireblocks is a core custody and digital asset operations platform for institutional market participants, including exchanges, custodians, fintechs, asset managers, and market makers. Native Cardano support gives these institutions a standard way to custody, transfer, and manage ADA and Cardano Native Tokens (CNTs) through infrastructure they already use.

CCI V2 funds the full native integration of Cardano as a supported blockchain within Fireblocks. The integration is expected to cover core Cardano asset support, including ADA, CNT custody and transfer, and the technical foundations for Cardano-specific workflows such as ADA staking and governance delegation. This lowers the operational barrier for institutions to support Cardano assets, reduces the need for bespoke custody infrastructure, and strengthens Cardano’s readiness for exchange listings, regulated custody, treasury management, and institutional adoption.

Fireblocks Year 1 cost is included in CCI V2 and covers the Fireblocks blockchain integration fee and the initial annual platform fee.

### Enhancements and Ad Hoc Tooling

Any new integration layer needs tooling around it to become usable, and deeper connectivity across the ecosystem’s dApps surfaces new tooling requirements continuously. This is a feature of live infrastructure. Examples include: monitoring and alerting enhancements around attestors and oracle feeds, improved reconciliation tooling between smart contract state and off-chain counterparties, observability infrastructure for cross-chain flows, and operational automation where manual intervention has been heavier than planned. A ring-fenced enhancement and tooling reserve allows the Steering Committee to fund these targeted upgrades within the 12 month window without standing up a separate governance action for each one. This reserve will go back to the treasury if not used.

### Current Gap and Urgency

While initial development and launch are funded as one-off costs as covered in CCI V1, the ongoing work of keeping them live beyond year 1, secure, operational, and effective remains a continuous responsibility for as long as the network depends on them. CCI V1 contracting ran through 2025 and into early 2026. Several operating agreements expire or require renewal decisions within the 12 month window this V2 covers. Without a ratified V2 budget in effect, individual maintenance line items would require individual treasury actions, each with its own governance timeline, creating operational gaps in infrastructure the ecosystem now depends on.

### Why Treasury Funding

Placing the CCI V2 budget under Intersect administration continues the constitutional framework already in effect for CCI V1: separate auditable addresses, auto-abstain delegation, milestone validation, independent audits, dispute resolution, and public reporting. This preserves community oversight and decentralized governance over the integration pipeline, without reinventing the administration structure that CCI V1 already established.

### Steering Committee

The Pentad Steering Committee established as part of CCI V1 provides high-level business direction and integration governance for this initiative. The committee oversees maintenance prioritization, enhancement reserve deployment, and working group stewardship. Its purpose is to ensure that each agreement and drawdown delivers measurable ecosystem value and that decisions are made in the best interest of the Cardano community.

The Steering Committee operates as a five-member group representing Input Output Global, the Cardano Foundation, EMURGO, Midnight Foundation, and Intersect (non-voting, acting as Administrator). Members act independently to maintain neutrality. Together, they evaluate maintenance and enhancement priorities, approve disbursements against the ring-fenced categories, and supervise the Pentad working groups.

While ultimate accountability sits with the Steering Committee, dedicated sub-working groups continue to take operational responsibility across commercial, legal, technical delivery, analytics, and community and communications. Conflict of interest policies apply to all Steering Committee members when making allocation and disbursal decisions.

## Rationale

**Scope of CCI V2:**

1) **Operations & Maintenance:** Operations and Maintenance: 12 months of ongoing operational costs for the CCI V1 integrations. Covers contracted Year 2 platform and licensing fees payable to integration partners, smart contract and protocol-compatibility upgrade work, ongoing developer support for live deployments, and the Cardano-side infrastructure required to keep each integration operational. This infrastructure includes attestor operations for Circle USDCx, DVN and endpoint operations for LayerZero, infrastructure for Pyth Price Feeds, and subgraph and schema maintenance for Dune Analytics.

2) **Fireblocks Native Integration:** Full native integration of Cardano as a supported blockchain within the Fireblocks institutional platform. Scope includes support for ADA and Cardano Native Tokens (CNTs), with technical foundations for Cardano-specific workflows such as ADA staking and governance delegation. Costs cover the blockchain integration fee and Year 1 annual platform fee.

3) **Enhancement & Tooling Reserve:** A ring-fenced fund for ad hoc technical upgrades and the "connective layer." This includes:  
   1) **SDKs & Reference Implementations:** Lowering the barrier for dApps and wallets (e.g., the USDCx SDK).  
   2) **Protocol Compatibility:** Updates to ensure integrations evolve alongside Cardano’s protocol standards.

4) **Compliance & Oversight:** Necessary legal, audit, and administrative costs and constitutional oversight.

   **Drawdown Oversight:** Controlled by the Steering Committee based on defined scope, adoption metrics, and semi-annual reporting.

**Exclusions**

CCI V2 **excludes** the following:

* **New Tier-1 Integrations:** Uncontracted targets from V1 (e.g., USDT0, specific custodial solutions, or new OFTs) are excluded and will be presented as separate governance actions if required.  
* **Application Layer:** Direct investment into individual dApps is excluded; these remain the domain of independent funding, however continuous onboarding support is provided by Intersect.

CCI V2 is scoped to four cost categories:

**Contracted integration costs**  
Contracted annual license, platform, service, and attestation fees payable to Circle, LayerZero, Pyth and Dune under existing commercial agreements. These are the subscription costs of access to tier-one infrastructure and recur for as long as each integration is live. Fireblocks integration fee and the initial annual platform fee for Year 1 is also included.

**Maintenance costs**  
Cardano-side operational costs to keep each integration live: attestor and relayer operations, endpoint and oracle feed continuity, partner-side protocol upgrade compatibility work, monitoring and alerting, and pass-through infrastructure expenses.

**Enhancement and tooling reserve**  
Ring-fenced reserve for targeted upgrades to the monitoring, reconciliation, observability, and operational tooling around the V1 integrations. Drawdown requires Steering Committee approval against a defined scope request. A minimum allocation to this line is necessary to make the raw integrations usable at all: without shared connective tooling - SDKs, reference implementations, and builder-facing libraries - the raw integration endpoints are not accessible to most builders and  every dapp has to build its own bridge to each integration, which is a tax that each dapp and the entire ecosystem pays on every new deployment. The reserve delivers broad benefit at marginal cost by providing white-glove tooling support to dapp builders rather than forcing each team to solve the same problems independently.

**Legal, audit, contract administration, and contingency**  
Due diligence, independent audits (satisfying Article II.7.4), legal and compliance costs, contract administration, and a small contingency reserve to accommodate market shifts within the 12 month window.

The ₳23,000,000 request reflects the cost of running the CCI V1 integrations for a 12 month period, plus the Fireblocks Year 1 costs (integration fee and Year 1 annual fee). It also includes the enhancement and tooling reserve, and the audit and contingency lines constitutionally required. The figure is set to fit within the applicable Net Change Limit at the time of submission and is denominated in ada consistent with TREASURY-03a.

### High-level budget breakdown

Due to confidentiality obligations with several integration partners, specific vendor-level costs cannot be publicly disclosed. The breakdown is presented by category and as a percentage of the total request. The Steering Committee is entrusted with executive decisions on allocation within each category. Unused funds at the end of the 12 month period will be returned to the Cardano Treasury.

| Category | Allocation (₳) | Allocation % | Description |
| :---- | :---- | :---- | :---- |
| Integration and maintenance costs | 20,700,000 | ~90% | Operating costs for CCI V1 integrations: Circle USDCx, LayerZero, Pyth, and Dune. Includes licensing, platform, attestor, relayer, oracle, custody, infrastructure fees, and Fireblocks blockchain integration fee and Year 1 annual fee. |
| Enhancement and tooling reserve | 1,150,000 | ~5% | Ring-fenced reserve for ad hoc upgrades to monitoring, reconciliation, observability, and operational tooling around CCI V1 integrations. This reserve will be returned to the treasury if not used. |
| Legal, audit, and contract administration | 1,150,000 | ~5% | Due diligence, independent audits, legal and compliance, contract administration. Satisfies Article II.7.4. |
| **Total** | **23,000,000** | **100%** |  |

## Explicit Exclusions

The following are explicitly excluded from this withdrawal. Each may be brought as its own governance action so the community can vote on priority, pace, and preferred lead entity. Nothing in this withdrawal funds, pre-commits, or reserves capacity for any of them.

**New integrations:**

1. **Tether (USDT0) integration:** May be brought as an individual community governance action following Pentad working group alignment and direct commercial negotiation.  
2. **LayerZero OFT (Omnichain Fungible Token) expansion:** Extensions to LayerZero beyond the V1 messaging and bridge infrastructure (including OFT standard deployment) may be brought as an individual community governance action.  
3. **Additional DeFi, custodial, analytics, and compliance integrations:** Any new integration outside the CCI V1 perimeter may be brought as an individual community governance action.

**Application and ecosystem layer:**

1. **Dapp funding and individual project investments.** Dapp grants, individual protocol investments, and application-layer funding are not included in this withdrawal. New or existing external or community funding vehicles may be sought to support on a case by case basis, led by Dapp or individual project/s. Venture funding for early-stage teams is the role of existing vehicles such as Draper Dragon and Cardano Foundation Venture Capital.  
2. **External liquidity attraction and DeFi liquidity deployment.** Any treasury-funded liquidity programs will be brought as separate governance actions, scoped independently and reviewed on their own merits.  
3. **Marketing, content creator/KOL, and events programs.** Any marketing or events funding will be brought as separate governance actions.  
4. **Dapp upgrade programs and application layer tooling beyond the V1 integration perimeter.** Out of scope for this withdrawal.

Any future integration, liquidity program, or marketing program referenced in parallel IOG, Cardano Foundation, EMURGO, Midnight Foundation, or Intersect strategic documents is treated as forward planning only. No funding, commitment, or reserved capacity flows from this withdrawal to any of those items. Each will stand on its own merits when brought to the community.

### Administration of Funds

This treasury withdrawal is submitted by Intersect in its role as the Administrator, and has been compiled with the endorsement and collaboration of the Cardano Foundation, Input Output Global, EMURGO, and Midnight Foundation as co-proposers. All treasury funds will be administered by Intersect under Article II, Section 7.5 of the Constitution, using the Treasury Reserve Smart Contract Framework. Intersect acts as the Administrator for the entire budget. Contracting for integrations will be assigned by the Steering Committee based on the best-fit entity that has the required skills, stability, and capacity.

#### Steering Committee Authority

The Steering Committee will approve maintenance renewals and enhancement reserve drawdowns. Quorum for any allocation decision is 3/4 of all Steering Committee voting members. Once an allocation is approved, Intersect administers and executes the associated disbursements to the contracting entity. The Steering Committee will publish progress reports upon achieving maintenance milestones and upon each enhancement reserve drawdown.

### Role of Intersect and Contractual Counterparties

Intersect will receive the funds and administer this budget. Intersect will also, in its capacity as an Administrator, receive regular reporting and insight into budget expenditure. Upon enactment, funds will be received into the Treasury Reserve Smart Contract framework administered by Intersect, with multi-sig oversight from DQuadrant, NMKR, Cardano Foundation, Xbererus, and Sundae Labs.

Funds will be disbursed according to the contracting arrangements. Disbursements will be made directly from the smart contract framework or an institutional-grade custodian to vendors, as selected by the Steering Committee. For maintenance renewals with existing V1 counterparties, disbursements will follow the operational cadence of those contracts. Intersect and the co-proposers will endeavor to negotiate contracts that allow for as much public disclosure as reasonably possible, and the Steering Committee will disclose such information in progress reports.

Co-proposers or other entities chosen by the Steering Committee may, if required, act as the contracting counterparty with a maintenance or enhancement partner. When this occurs, Intersect and the Cardano Development Holdings will enter into a contract with the designated entity defining the scope, obligations, reporting requirements, and drawdown conditions. Intersect will only act as a contracting counterparty when it has completed its own due diligence and satisfied its Delivery Assurance standards.

All contracts established under this program will include clearly defined scope, obligations, reporting requirements, drawdown conditions, and dispute resolution provisions, in order to comply with Article II.7.1 of the Constitution.

### Payment Execution and Safeguards

Disbursements will be executed through either smart contracts or institutional-grade custodians. These disbursements will follow the Statements of Work and commercial terms approved by the Steering Committee.

### Unused funds and program conclusion

If at the end of the 12 month period the budget has not been fully utilized, all remaining funds will be returned to the Cardano Treasury. A final reconciliation and summary will be included in the oversight reporting by Intersect, in collaboration with the Steering Committee.

### Refund Circumstances

Remaining ada will be returned to the Cardano Treasury in any of the following circumstances:

* Conclusion of the 12 month delivery period with unused balance.  
* Termination of a maintenance or enhancement contract with funds previously earmarked but not yet disbursed.  
* A Steering Committee determination that any specific category (maintenance, enhancement reserve, or administration) has been fully satisfied with balance remaining.  
* Any material change in circumstance that renders continued disbursement inappropriate under the scope of this withdrawal.

### Cardano Addresses

Treasury funds will be received and held by Intersect, acting as the Administrator, to a dedicated address addr1xxzc8pt7fgf0lc0x7eq6z7z6puhsxmzktna7dluahrj6g6v9swzhujsjlls7dajp59u95re0qdk9vh8mumlemw89535s4ecqxj which is publicly viewable.  
To fulfill constitutional requirements, this address will be delegated to the predefined auto abstain voting option and will not be staked to any Stake Pool Operator (SPO), ensuring that the funds do not influence governance or generate staking rewards. Intersect will ensure oversight and transparency through independent audits and access to information.  
Through this arrangement, the Cardano Development Holdings administered by Intersect maintains full custody transparency, enabling verifiable auditing and milestone tracking under Cardano’s constitutional governance framework, satisfying Articles II.7.4, II.7.5, and II.7.6 in particular.

### Acceptance Criteria and Milestone-Based Disbursement

For maintenance drawdowns, acceptance is tied to continuation of operational service-level agreements with existing V1 counterparties. For enhancement reserve drawdowns, acceptance is tied to a Steering Committee approved scope request with defined deliverables and a Statement of Work. A “milestone zero” payment may cover essential setup costs of this initiative, including conversion of ada into a stablecoin for fiat-denominated partner payments, stablecoin minting fees, and custody fees. Converted assets will be held in a regulated custodian. Legal costs for maintenance and enhancement contracting are included in this early operational budget.

Any ada received from the treasury withdrawal will be held by the Administrator in one or more separate, dedicated accounts that can be audited by the Cardano Community, and such accounts shall not be delegated to an SPO but must be delegated to the predefined abstain voting option, in accordance with Article II.7.6. Any conversion of ada into stablecoins or other assets will occur only as part of an approved disbursement under a Statement of Work, and only after the relevant ada has been released from the Administrator's custody to the Treasury Withdrawal Recipient.

### Reporting

Intersect and the Steering Committee will publish a bi-annual report covering:

1. **Financial Summary and Treasury Reconciliation:** Total funds disbursed, remaining, and audited by category.  
2. **Maintenance Status:** Status of each CCI V1 integration under the maintenance umbrella (Circle, LayerZero, Pyth, and Dune), including uptime, renewals, and operational health.  
3. **Fireblocks integration status:** Status of the integration of Fireblocks.  
4. **Enhancement Reserve Activity:** Each enhancement drawdown, its scope, Statement of Work, and delivered outcome.  
5. **Audit and Compliance Statement:** Summary of independent audit findings.  
6. **Governance and Future Outlook:** Proposed next steps and the slate of individual community governance actions expected to follow from Steering Committee consultation and community prioritisation.

## References

- [Cardano Critical Integrations - Programme Report](https://intersectmbo.org/news/cardano-critical-integrations-program-status-update-report)
- [Cardano Critical Integrations V1 Governance Action (explorer.cardano.org)](https://explorer.cardano.org/governance-action/8f54d021c6e6fcdd5a4908f10a7b092fa31cd94db2e809f2e06d7ffa4d78773d00)
- [Automating Accountability: Cardano’s Smart Contract Framework Blog](ipfs://bafybeihqx4ae72z7suqfnxrpqpqithp43cai7o2uuewnqtezgaoyc3ptyq)
- [Sundae Labs Budget Management Smart Contracts GitHub Repository](https://github.com/SundaeSwap-finance/treasury-contracts)
- [Budget Management Smart Contracts TxPipe Audit Report](ipfs://bafybeiccnwejbgj43wo6hrlseckkkmprtoqc5cfuy2hesm6c6yealwho3e)
- [Budget Management Smart Contracts MLabs Audit Report](ipfs://bafybeiah5fnjhda5hemj3qvaehc4mre3qllqzw2l7mkdsguytn4ftgafw4)

## Authors

{
  "name": "Intersect",
  "witness": {
    "witnessAlgorithm": "ed25519",
    "publicKey": "05568f86955e65c1a59df5ac1985449b167c3828dccd00b3da9df36a1cf1c743",
    "signature": "393775989e133756e3073ca62c0ef0fdd0787b3ad3a3ef53dec3217a81d0b347d3397214e4e9f31e61ea127bc0ee9d15db04a50d1f1308824c5f3a1ca43fc60e"
  }
}

## Onchain

{
  "deposit": "100000000000",
  "reward_account": "stake1uyvjdz9rxsfsmv44rtk75k2rqyqskrga96dgdfrqjvjjpwsefcjnp",
  "gov_action": {
    "tag": "treasury_withdrawals_action",
    "rewards": [
      {
        "key": "stake17xzc8pt7fgf0lc0x7eq6z7z6puhsxmzktna7dluahrj6g6ghh5qjr",
        "value": "23000000000000"
      }
    ],
    "policy_hash": "fa24fb305126805cf2164c161d852a0e7330cf988f1fe558cf7d4a64"
  }
}
