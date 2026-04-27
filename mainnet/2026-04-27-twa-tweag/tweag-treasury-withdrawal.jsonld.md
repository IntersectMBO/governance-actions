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

## References

- [Full Proposal Document (Google Docs)](https://docs.google.com/document/d/1bRDecVOH30AWjgaz0POu2r6bncqE2yJs3XJjj-q10iI/edit)
- [Tweag Cardano Project Website](https://tweag.github.io/cardano-website/)
- [Work Package: Peras v1 – Full Proposal](https://docs.google.com/document/d/1K8cPdrxHm4EsU_nDp-PcluWZTFDXsCYLDkx8Wm4EJyg/edit)
- [Work Package: Peras v2 – Full Proposal](https://docs.google.com/document/d/1WVX41CzurG0sQf_fpqwanMxkhh3iE7iCvaVDGk4Prgs/edit)
- [Work Package: History Expiry – Full Proposal](https://drive.google.com/file/d/1d4IbM0215rf2VL_3bK7Q0s7uSV12Kp6o/view)
- [Work Package: Hard Fork Mempool Bridger – Full Proposal](https://drive.google.com/file/d/1_8a9GGjp_7XqljW4PcxjvYNnSs0nDt89/view)
- [Work Package: Conformance Testing (Peras & Leios) – Full Proposal](https://drive.google.com/file/d/1cZOG5vAFIMCRIiKk3PJ8B9DCNpCh4V6N/view)
- [Work Package: Conformance Testing (Adversarial Forks) – Full Proposal](https://drive.google.com/file/d/1VrBuPrYGSnFRLeKbskFoUJziQ3w9hm7t/view)
- [Work Package: Canonical Ledger State & Mithril – Full Proposal](https://drive.google.com/file/d/1uo8x0KnZ8LT6mO4XZEQyUaQzbC46f4qv/view)
- [Work Package: Plutus Script Re-Executor – Full Proposal](https://drive.google.com/file/d/1xcllkrT7nY8pTx2jEWweNpMU_SirgMnu/view)
- [Work Package: Mutation Testing – Full Proposal](https://drive.google.com/file/d/14qMrgrCoTEc8m1zfYI5puvUx7V9ce9FR/view)
- [Work Package: Hoarding Node – Live Network Deployment](https://github.com/tweag/cardano-hoarding-node/blob/main/proposal/live-network-deployment/README.md)
- [Work Package: Hoarding Node – Distributed Mode](https://github.com/tweag/cardano-hoarding-node/blob/main/proposal/distributed-mode/README.md)
- [Work Package: Hoarding Node – Embedded Consensus Validation](https://github.com/tweag/cardano-hoarding-node/blob/main/proposal/embedded-consensus-validation/README.md)
- [Work Package: Hoarding Node – Transaction Collection](https://github.com/tweag/cardano-hoarding-node/blob/main/proposal/transaction-collection/README.md)
- [Work Package: Cardano Node Emulator – Full Proposal](https://docs.google.com/document/d/1I-6awOwssh8XEH4gFk5DAGwoJrtCSF7q527Jysb0TPw)
- [Conformance Testing of Consensus – GitHub Repository](https://github.com/tweag/cardano-conformance-testing-of-consensus)

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


