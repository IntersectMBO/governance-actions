# Markdown Representation of tweag-treasury-withdrawal.jsonld

## Title

Tweag Core Cardano Infrastructure: Treasury Withdrawal 2026–2028

## Abstract

This treasury withdrawal requests **₳39,787,316** (USD $9,946,829) to fund Tweag by Modus Create's delivery of 17 work packages across 9 core infrastructure areas for the Cardano ecosystem over 2026–2028.

The primary focus is the **mainnet deployment of Peras** (faster finality: ~2 min vs. ~12 min today), alongside improvements to resilience, scalability, developer tooling, and network observability. Work packages include:

- **Peras v1** – production cryptography, KillSwitch, mainnet readiness
- **Peras v2** – pre-agreement algorithm, cooldown recovery, performance optimizations
- **History Expiry** – partial-history nodes to reduce SPO storage costs
- **Hard Fork Mempool Bridger** – transaction preservation during fork incidents
- **Conformance Testing** – CTC framework extended for Peras and Leios
- **Adversarial Fork Testing** – Genesis property-based test improvements
- **Canonical Ledger State & Mithril** – standardized state snapshots (CIP-0165)
- **Plutus Script Re-Executor** – debugging tooling for DApp developers
- **Mutation Testing** – test suite adequacy framework for Haskell/Cardano
- **Hoarding Node** – live deployment, distributed mode, embedded consensus validation, transaction collection
- **Block Cost Investigation** – empirical and analytical cost models
- **Genesis Sync Accelerator & Node Emulator** – ongoing maintenance

Intersect is requested to serve as proposal and contract administrator. All deliverables are open-source and publicly tracked.

## Motivation

## Problem Statement

Cardano's next growth phase depends on two critical protocol upgrades: **Peras** (faster finality) and **Leios** (higher throughput). Together they unlock significantly higher transaction volume, staking rewards, and TVL. However, these upgrades do not deliver value on their own — they require:

1. **Production-grade mainnet delivery** — Peras v1 remains undeployed on mainnet. Real cryptography, operational tooling, and Hard Fork readiness must be completed.
2. **Resilience and correctness scaffolding** — Protocol changes of this complexity require conformance testing, mutation testing, adversarial fork simulation, and audit infrastructure to de-risk deployment.
3. **Sustainable node economics** — Increased throughput from Leios will cause SPO disk usage to surge (~1 GB/hour at 100–1000 TPS). Without History Expiry, full-history requirements will become economically prohibitive, threatening decentralization.
4. **Network observability** — Orphaned blocks, invalid slot leader claims, mempool anomalies, and adversarial behavior are currently difficult to detect and attribute. The Hoarding Node fills this gap.
5. **Developer tooling** — Plutus script debugging remains difficult. The PSR extension reduces friction for DApp developers and improves smart contract reliability.
6. **Incident response** — Hard fork incidents result in orphaned transactions. The Mempool Bridger directly mitigates this risk.
7. **Ecosystem continuity** — The Genesis Sync Accelerator and Cardano Node Emulator require ongoing maintenance to remain compatible with evolving protocol versions.

Tweag has been engaged on Cardano's core infrastructure since January 2018, leading the consensus and ledger teams, implementing Ouroboros Genesis, and contributing to Peras design. This proposal represents the natural continuation of that work, focused on ensuring prior investments reach mainnet and are adopted by the community.

## Rationale

## Why This Proposal Addresses the Problem

### Delivery Strategy
This proposal is structured as a **single delivery pipeline**, not a modular menu. The 17 work packages are interdependent: Hoarding Node deployments and conformance/mutation/audit testing provide the instrumentation and correctness scaffolding required to validate Peras v1/v2, History Expiry, and block-cost safety changes. Treating them as separable would increase delivery risk.

### Two-Year Timeline Justification
The 2-year duration (2026–2028) is necessary to:
- Align Peras v2 completion with a Hard Fork Combinator (HFC) window, avoiding a full-year delay waiting for the next HFC cycle.
- Allow Peras v2 to begin in parallel with Peras v1 finalization, using a staggered delivery approach.
- Accommodate mandatory security audits, conformance testing, and integration across 17 packages.

### Budget Justification
The total ask of **₳39,787,316** is based on an average market rate of $176/hour for senior Cardano infrastructure engineers, a conservative ADA/USD conversion rate of 0.25 (based on a 5-year average), and 2 years of effort across the full portfolio. CBU/ARK research subcontracts for Peras cryptography are included as fixed-price line items.

### Governance Separation
Where success depends on governance (Hard Fork activation, CIP progression), Tweag commits to **'ready-for-activation' deliverables** — merged code, reproducible releases, runbooks, benchmarks, and governance-action packages. Ecosystem activation is reported separately with clear owners and risks.

### Intersect as Administrator
Tweag requests Intersect serve as contract and audit administrator per the Cardano Constitution, using Milestone-Based Fixed Price contracts where scope is well-defined.

### Strategic Alignment
- **Pillar 1: Infrastructure and Research Excellence** — all 17 packages directly advance L1 protocol infrastructure.
- **Pillar 5: Ecosystem Sustainability and Resilience** — History Expiry, Hoarding Node, and maintenance work directly protect long-term network health.

### Community Engagement Commitments
- Public demos at minimum every 2 months, recorded and published at https://tweag.github.io/cardano-website/
- Regular status updates on the Tweag project website
- Dedicated Discord channel for community engagement
- Program-level Slack channel for cross-team coordination with IOG and other ecosystem contributors

## Prior Treasury Receipts
TWEAG has been accountable for delivering work funded by the Cardano Treasury. The total funds allocated are **₳11,070,322.68** within the Treasury Smart Contract. To date, TWEAG has withdrawn [INTERSECT TO CONFIRM].  ID: `680d1b63565577986442d24e`. 

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

* [Full Proposal Document (Google Docs)](https://drive.google.com/file/d/1OpB-NGxACxp3R678EVYl4yBfhtNRQCwl/view)
* [Tweag Cardano Project Website](https://tweag.github.io/cardano-website/)
* [Work Package: History Expiry – Full Proposal](https://drive.google.com/file/d/1nEuvhOsAX7VPgFJajz86AeOE4hP_Bd8j/view)
* [Work Package: Hard Fork Mempool Bridger – Full Proposal](https://drive.google.com/file/d/1wPp6jfPfwajUIIEGnOSrw24Lj9flaXdy/view)
* [Work Package: Conformance Testing (Peras & Leios) – Full Proposal](https://drive.google.com/file/d/1gz8XpH1vo1iXXW8rYOXx_MkvX27l4b7H/view)
* [Work Package: Conformance Testing (Adversarial Forks) – Full Proposal](https://drive.google.com/file/d/1p0REpPeR0RWvoawXOERfE0UNcs9-wWEz/view)
* [Work Package: Canonical Ledger State & Mithril – Full Proposal](https://drive.google.com/file/d/1uo8x0KnZ8LT6mO4XZEQyUaQzbC46f4qv/view)
* [Work Package: Plutus Script Re-Executor – Full Proposal](https://drive.google.com/file/d/1mTn9OTq4r890BoDRsi5GPNZ2piOA0NIa/view)
* [Work Package: Mutation Testing – Full Proposal](https://drive.google.com/file/d/1X6AX7eTRsTELKhJzaEKts601PyjS5p8X/view)
* [Work Package: Hoarding Node – Live Network Deployment](https://drive.google.com/file/d/1JfSZqTYckt462Cz5CPs2qcHlq-b9WgRk/view)
* [Work Package: Hoarding Node – Distributed Mode](https://drive.google.com/file/d/1LtHfh3SgjCG-xzgvqGIU2x6VYvdoQHty/view)
* [Work Package: Hoarding Node – Embedded Consensus Validation](https://drive.google.com/file/d/1DtU1Sr3pQoKIs23srNYf3v5gideTQWVG/view)
* [Work Package: Hoarding Node – Transaction Collection](https://drive.google.com/file/d/1NbpyLDYaIXoAI2n6Re9sL23YadIMNo8C/view)
* [Work Package: Cardano Node Emulator – Full Proposal](https://drive.google.com/file/d/1k1Ktgk3S3qV7CYXrtDmneodySRgfspF5/view)

## Authors

{
  "name": "Tweag by Modus Create",
  "witness": {
    "witnessAlgorithm": "ed25519",
    "publicKey": "REPLACE_WITH_PUBLIC_KEY",
    "signature": "REPLACE_WITH_SIGNATURE"
  }
}

## Onchain
