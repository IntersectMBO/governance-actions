# Markdown Representation of metadata.jsonld

## Title

Tweag Core Cardano Infrastructure: Treasury Withdrawal 2026–2027

## Abstract

This treasury withdrawal requests **₳18,263,496.00** (USD $4,565,874.00) to fund Tweag by Modus Create's delivery of 3 work packages across core infrastructure areas for the Cardano ecosystem over 2026–2027.

The primary focus is the **mainnet deployment of Peras** (faster finality: ~2 min vs. ~12 min today), alongside improvements to resilience, scalability, developer tooling, and network observability. Work packages include:

- **Peras v1** – production cryptography, KillSwitch, mainnet readiness and further support and maintenance
- **History Expiry** – partial-history nodes to reduce SPO storage costs
- **Conformance Testing** – CTC framework extended for Peras and Leios

Intersect is requested to serve as proposal and contract administrator. All deliverables are open-source and publicly tracked.

## Motivation

## Problem Statement

Cardano's next growth phase depends on two critical protocol upgrades: **Peras** (faster finality) and **Leios** (higher throughput). Together they unlock significantly higher transaction volume, staking rewards, and TVL. However, these upgrades do not deliver value on their own — they require:

1. **Production-grade mainnet delivery** — Peras v1 remains undeployed on mainnet. Real cryptography, operational tooling, and Hard Fork readiness must be completed.
2. **Resilience and correctness scaffolding** — Protocol changes of this complexity require conformance testing, mutation testing, adversarial fork simulation, and audit infrastructure to de-risk deployment.
3. **Sustainable node economics** — Increased throughput from Leios will cause SPO disk usage to surge (~1 GB/hour at 100–1000 TPS). Without History Expiry, full-history requirements will become economically prohibitive, threatening decentralization.
Tweag has been engaged on Cardano's core infrastructure since January 2018, leading the consensus and ledger teams, implementing Ouroboros Genesis, and contributing to Peras design. This proposal represents the natural continuation of that work, focused on ensuring prior investments reach mainnet and are adopted by the community.

## Rationale

## Why This Proposal Addresses the Problem

### Delivery Strategy

This proposal is structured as a **single delivery pipeline**, not a modular menu. The 3 work packages are interdependent: conformance testing provide the instrumentation and correctness scaffolding required to validate Peras, History Expiry helps to reduce SPO's costs. Treating them as separable would increase delivery risk.

### Budget Justification

The total ask of **₳18,263,496** is based on an average market rate of $176/hour for senior Cardano infrastructure engineers, a conservative ADA/USD conversion rate of 0.25 (based on a 5-year average). CBU/ARK research subcontracts for Peras cryptography are included as fixed-price line items.

### Governance Separation

Where success depends on governance (Hard Fork activation, CIP progression), Tweag commits to **'ready-for-activation' deliverables** — merged code, reproducible releases, runbooks, benchmarks, and governance-action packages. Ecosystem activation is reported separately with clear owners and risks.

### Intersect as Administrator

Tweag requests Intersect serve as contract and audit administrator per the Cardano Constitution, using Milestone-Based Fixed Price contracts where scope is well-defined.

### Treasury Governance & Compliance

#### **Contract Management**

A written off-chain Legal Contract will be created between Tweag and the Cardano Development Holdings (CDH), as mandated by the Constitution, and will be administered by Intersect. This will include details of the project delivery schedule and dispute resolution.

##### Project Delivery

All milestones, acceptance criteria, payment amounts and expected delivery dates will be agreed between the Tweag and Intersect, acting on behalf of the CDH. Tweag will deliver according to the agreed-upon project schedule within the Legal Contract, of which the necessary information will be made public via the budget management platform via transaction metadata.

Defined by the milestones within a Legal Contract, Tweag will submit and attest milestone acceptance to the community, Intersect or 3rd Party Assurer. All technical deliverables will undergo a rigorous, multi-stage review process to ensure protocol integrity and security. This includes mandatory code review by Input Output Global (IOG), as primary maintainers of the target Cardano repositories, to preserve architectural consistency. Independent validation will be provided by No Witness Labs, engaged as a third-party assessor across the relevant work packages.

Project progress will be monitored via Intersect's delivery assurance function which will be communicated to the community.

Acceptance of the work will be supported by a 3rd Party Assurer, who will be responsible for reviewing and signing off the work completed at each project milestone against the corresponding milestone deliverables detailed within the Legal Contract. This work is funded from a portion of this treasury withdrawal.

#### **Auditable Accounts & Fund Delegation**

##### Budget Management Tooling

To administrate treasury funds on-chain, Intersect will utilize the treasury management smart contract framework developed by Sundae Labs. The smart contracts have been extensively tested including audits from TxPipe and MLabs.

Final mainnet validation test can be seen via the Disburse action within transaction: 0f591dc544ae14102dbb4a74d5311a6acffc1772b163d8b7a9656b9525950b17

This withdrawal will utilise Intersect’s 2025 treasury reserve contract with address being: stake17xzc8pt7fgf0lc0x7eq6z7z6puhsxmzktna7dluahrj6g6ghh5qjr
Funds will later be migrated to a 2026  treasury reserve contract once established.

##### Budget Management Specifics

Intersect will utilize a single Treasury Reserve Smart Contract (TRSC), with many Project-Specific Smart Contracts (PSSC), managed by Intersect. Intersect's management consists of three 'admin' and two Intersect 'leadership' roles. An Oversight Committee consisting of five external, independent third-party entities will provide checks and balances on Intersect, and safeguard against errors and unilateral control. The administration of both TRSC and PSSCs will be managed by Intersect, with external oversight on certain actions from the Oversight Committee.

The 2025 TRSC Oversight Committee consists of Sundae Labs, Cardano Foundation, Dquadrant, Xerberus and NMKR. Their role is to independently verify key administrative actions using on-chain logic, ensuring accuracy and consistency without exercising discretion over governance decisions.

For all details on Intersect's configuration please see the Smart Contract Guide on the knowledgebase.

The high level permissions are as follows:

- TRSC Fund and PSSC Modify  
  - Two of the three Intersect admins, two of the five trusted entities and one of the two Intersect leadership sign-off must authorize  
- TRSC Disperse  
  - Two of three Intersect admins, three of five trusted entities and two of two Intersect leadership sign-off must authorize  
- TRSC Pause and Resume  
  - Two of three Intersect admins, and one of two Intersect leadership sign-off must authorize  
- TRSC Sweep  
  - One of three Intersect admins, and one of two Intersect leadership sign-off must authorize  
- TRSC Reorganize  
  - Two of three Intersect admins and three of five trusted entities must authorize

##### Processes

Upon enactment of this governance action, funding for this project will be directed into the TRSC's stake account. All instances of TRSC and PSSC can not be staked with a SPO and will be delegated to the auto-abstain predefined DRep. From here funds will be withdrawn into a UTxO remaining at the TRSC.

When a 2026 TRSC is established, the funding for this project will be migrated via the ‘disburse’ action.  

When the Legal contract is prepared and Tweag is ready, funding for this project will be transferred using the Fund action to a PSSC. All milestones will be outlined within the metadata.

A dashboard will be available for the community to audit the TRSC or PSSC and track metrics related to this withdrawn ada as well as being immutably verifiable on chain.

### Strategic Alignment

- **Pillar 1: Infrastructure and Research Excellence** — all 3 packages directly advance L1 protocol infrastructure.
- **Pillar 5: Ecosystem Sustainability and Resilience** — History Expiry.

### Community Engagement Commitments

- Public demos at minimum every 2 months, recorded and published at https://tweag.github.io/cardano-website/
- Regular status updates on the Tweag project website
- Dedicated Discord channel for community engagement
- Program-level Slack channel for cross-team coordination with IOG and other ecosystem contributors

## Prior Treasury Receipts

TWEAG has been accountable for delivering work funded by the Cardano Treasury. The total funds allocated are **₳11,070,322.68** within the Treasury Smart Contract. ID: `680d1b63565577986442d24e`.

## Refund Conditions

All funds not disbursed by the end of the delivery period will be returned to the Cardano Treasury. A final reconciliation will be published as part of the oversight reporting cycle. In the event of partial delivery or scope reduction, unspent funds associated with canceled or reduced deliverables will be returned proportionally.

## Net Change Limit Compliance

The requested amount does not at time of submission, on its own or in aggregate, breach the applicable 350M Net Change Limit covering Epoch 613 to Epoch 713.
In accordance with the guardrail TREASURY-02a, this withdrawal does not exceed the NCL at the moment of submission.

## Audit & Oversight

Audit and oversight costs are included within the overhead applied to this proposal. The Intersect administration fee covers administrative oversight and is reflected within the cost of this proposal. Independent oversight will be provided through Intersect and technically capable third-party, including reporting obligations and milestone-based disbursement controls.

## Standardized Format & Immutable Hosting

Upon finalization, this proposal will be hosted on IPFS in an immutable format. The blake2b-256 hash of the document will be provided for on-chain reference and verification.

## References

- [Full Proposal Document (IPFS)](ipfs://QmPJxnx5jTqvqnKXPgqpoH5yvL6xgBFTkvEjF4np3k8eHr)
- [Full Proposal Document (PDF)](https://drive.google.com/file/d/1DRXu717-os3-vFDpbWXmrBG3XfhviE3Z/view)
- [Tweag Cardano Project Website](https://tweag.github.io/cardano-website/)
- [Work Package: History Expiry – Full Proposal](ipfs://QmNcegfkH3WFf8xgjrKKTH9YoMRdmkAYUvCwmJy514XxdK/T3._History_Expiry.pdf)
- [Work Package: Conformance Testing (Peras & Leios) – Full Proposal](ipfs://QmNcegfkH3WFf8xgjrKKTH9YoMRdmkAYUvCwmJy514XxdK/T5.CTCFrameworkPeras_and_Leios.pdf)

## Authors



## Onchain

{
  "deposit": "100000000000",
  "reward_account": "stake1uyvjdz9rxsfsmv44rtk75k2rqyqskrga96dgdfrqjvjjpwsefcjnp",
  "gov_action": {
    "tag": "treasury_withdrawals_action",
    "rewards": [
      {
        "key": "stake17xzc8pt7fgf0lc0x7eq6z7z6puhsxmzktna7dluahrj6g6ghh5qjr",
        "value": "18263496000000"
      }
    ]
  }
}
