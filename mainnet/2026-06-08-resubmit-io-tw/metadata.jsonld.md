# Markdown Representation of metadata.jsonld

## Title

IO: Hydra

## Abstract

**Proposal as pdf: [https://ipnso-com.ipns.inbrowser.link/?cid=Qmbk3jHKKLQ1VrniKaD7sGMscJxCKvoXqt1sQoEnRLTku4](https://ipnso-com.ipns.inbrowser.link/?cid=Qmbk3jHKKLQ1VrniKaD7sGMscJxCKvoXqt1sQoEnRLTku4)**

**Hydra is the only production-grade Layer 2 on Cardano, already running live workloads for Delta DeFi, Masumi, Intersect, Vtechcom and others.** This proposal funds four workstreams - performance optimization, operational excellence, ecosystem support, and developer experience - delivering a feature-complete and hardened Hydra v2 so we offer a competitive scaling solution to existing builders and new builders adopt Cardano. Hydra delivers sub-second finality, near-zero fees, and high parallel throughput with L1-grade settlement. It unlocks verticals such as institutional and perpetual DEXes, agent-to-agent commerce, micropayments, gaming, point of sale, and verifiable information processing. The work aligns with the treasury's TVL, transaction, active-user, throughput, reliability, and protocol-revenue KPIs, and with Pillars 1, 2, 4, and 5. The ask is **₳5,100,781**. This will be milestone-gated, with independent third-party assurance and Intersect providing administrative treasury governance.

## Motivation

### Executive Summary

***Enabling high-performance applications on Cardano through production hardening and performance improvements of Hydra v2.***

**What is Hydra**

Hydra is a Layer 2 state channel for Cardano. Instead of every transaction going through Cardano's main network, which takes minutes to hours and incurs non-trivial fees. Hydra lets users transact instantly and at near-zero cost among themselves. It then settles the final result on Cardano L1. The result is sub-second finality, near-zero fees, and high throughput, with Cardano L1 as the security and settlement backstop.

**Why this matters now**

Due to its focus on decentralization and security, Cardano L1 takes minutes to hours to finalize a transaction and costs around $0.17 per transaction. Competing ecosystems offer sub-second finality and sub-cent fees, so builders driving the current and next wave of adoption exclude Cardano at the selection stage, before they ever evaluate its strengths. L1 upgrades such as Leios and Peras will expand the base layer, but they are not yet available and, by the constraints of the scaling trilemma, cannot reach the zero-fee, sub-second, high-throughput envelope that high-performance applications require.

Long finality breaks the user experience and makes entire categories of applications impossible. Throughput becomes decisive as adoption scales. Hydra closes these gaps today.

**Hydra is the only production-grade L2 on Cardano**

Hydra has powered the following applications so far:

* **Delta DeFi**, a perpetual DEX and Cardano's closest analog to Hyperliquid, which clears around $5bn daily, with its entire product staked on Hydra.

* **Masumi**, live agent-to-agent commerce, where buyer and seller agents each run a hydra-node and co-sign every snapshot.

* **Hydra Doom**, the largest gaming demonstration any Cardano L2 has produced.

* **Glacier Drop**, routing more than 30 million users across eight blockchains through Hydra.

* **Intersect** voting infrastructure, running on Hydra.

* **VTech Labs**, building multiple applications on Hydra, including managed Hydra heads (HydraHub) and a Hydra DApp marketplace (HydraOne).

* **Blockfrost**, enabling zero-fee, instant-finality payments between SPOs and end users on Hydra, settled to L1 periodically.

* **Midgard**, fast withdrawals are enabled by Hydra

Provisional users under evaluation: Bodega Market, Atlas Defi, Wingriders, Houselink, European Public Network, and more.

Many of these use cases are live today and rely on the improvements in this proposal. If it slips, they risk migrating to competing chains, and attracting new builders to the Cardano ecosystem will be hard.

**What this proposal delivers**

Four workstreams to scale Hydra adoption:

* **Performance optimization**: 2x to 10x improvements in snapshot signing and memory profile, and reduced L1 fees through on-chain contract optimization.

* **Operational excellence**: operator runbooks, simpler node configuration, observability and logging, and an improved TUI.

* **Ecosystem support**: features requested by production users and pipeline integrators, Hydra Alliance facilitation, hackathons, and developer relations.

* **Maintenance and DevX**: CI, tooling, and technical debt reduction to keep the protocol healthy.

**Why this funds Cardano's future, not just Hydra**

* **Attracts new builders**: without a competitive L2, builders exclude Cardano before they reach its strengths of security, decentralization, the eUTXO model, and formal verification.

* **Grows the pie**: Hydra applications generate activity that is economically impractical on L1 today. Without Hydra, that activity goes to Solana or Ethereum L2s; with Hydra, it stays on Cardano.

* **Funds the treasury**: every Hydra head open, addition and removal of funds, and head closure triggers L1 transactions and L1 fees. Where a head charges non-zero internal fees, the application can be designed to route a portion to the L1 treasury on settlement. As usage scales, L1 revenue scales with it.

* **Protects prior investment**: years of R&D have made Hydra the most mature L2 on Cardano. This funding converts that investment into sustained adoption.

**KPI and pillar alignment**

This proposal advances the treasury KPIs for TVL, monthly active users, monthly transactions, throughput capacity, reliability and uptime, and annual protocol revenue, and aligns with Pillars 1 (Infrastructure and Research Excellence), 2 (Adoption and Utility), 4 (Community and Ecosystem Growth), and 5 (Ecosystem Sustainability and Resilience).

**The ask**: **₳5,100,781**, milestone-gated, with independent third-party assurance and Intersect’s administrative treasury governance.

## Rationale

### 1. The Proposal (What)

#### 1.1 Description

**Problem:** Cardano L1 delivers over two hours of finality, approximately $0.17 per transaction, and roughly 7 to 10 transactions per second (TPS). Competing platforms offer 400ms to 2s finality, sub-cent fees, and 1,000 to 7,000+ TPS. As a result, high-performance verticals such as decentralized finance (DeFi), AI agent micropayments, gaming, and consumer payments often exclude Cardano at the selection stage, even before a fuller technical evaluation begins. This prevents consideration of Cardano's unique selling points (USPs): its superior security model, formal verification approach, and extended unspent transaction output (EUTXO) design.

Four structural gaps compound the problem:

* **The Finality Gap:** over two hours of L1 finality makes UX uncompetitive for DeFi, AI agents, gaming, and any other use case where transactions have to settle fast on-chain.

* **The Cost Gap:** current L1 fees represent up to 1,000x overhead versus competitors, making high-transaction-volume applications economically unviable on L1.

* **The Developer Burden:** the UTXO concurrency model encourages complex, centralized batcher infrastructure, stretching development timelines significantly compared to other chains.

* **The Throughput Ceiling:** current L1 throughput of approximately 7 to 10 TPS constrains modern application networks that require far greater capacity.

Of these, finality and cost constraint today, at current transaction volumes: they break UX and rule out many use cases regardless of how much activity Cardano carries. The throughput ceiling is a scaling constraint that bites as adoption grows. Hydra addresses all four, but the immediate unlock is finality and fees.

Upcoming L1 upgrades, including Leios (targeting approximately 10 to 50x improvements) and Peras (targeting approximately two-minute finality), are expected to strengthen the base layer and expand its performance envelope. High-performance use cases, such as zero-fee or sub-second interactions, however, need L2 scaling solutions. Due to the tradeoffs in blockchain (the scaling trilemma), L1 can never reach the performance levels that L2s like Hydra can.

Hydra addresses these requirements, supporting faster finality, lower costs, and higher throughput, while maintaining integration with the base layer.

L2 solutions extend the capabilities of L1 rather than compete with it. By enabling these applications within the Cardano ecosystem, L2s contribute to increased developer activity, ecosystem growth, total value locked (TVL), and L1 settlement usage. Activity on Hydra ultimately anchors back to L1 through head opening and settlement transactions. Where a head charges non-zero internal fees, the application can be designed to route a portion of those fees to the L1 treasury on settlement, reinforcing the economic relationship between L2 activity and the base layer.

#### 1.2 What is Hydra

Hydra is not a generic L2. It is the only production ready scaling solution that gives Cardano sub-second finality with L1-grade settlement guarantees. Rollups optimize for general-purpose throughput but inherit L1 confirmation latency for full security. Centralized venues deliver speed but require full custody. Hydra occupies a unique point in the design space: cryptographic settlement anchored to Cardano L1, with execution latency that matches centralized infrastructure.

Hydra is a state channel. It lets participants move a portion of the ledger off the main chain, transact freely, and then settle the result back on-chain. The process works in three steps. First, extract: the relevant ledger state is taken from Layer 1 (Cardano) and committed into the state channel. Second, process off-chain: transactions run inside the channel, where they settle quickly and at minimal cost because they no longer compete for L1 block space or fees. Third, reintegrate: once the parties are done, the final state of the channel is written back to Layer 1, so the mainnet ledger reflects the net outcome of all the off-chain activity. Hydra v2 makes things even easier because heads can be opened without committing funds right away. Funds can then be added and removed incrementally, without having to open or close the head.

The effect is that L1 provides security and final settlement while the heavy transaction throughput happens off-chain, giving participants L1-grade guarantees on the opening and closing states without paying L1 costs for everything in between.

**Key benefits of Hydra**

* **Throughput and horizontal scaling.** Cardano's Layer 1 settles roughly 10 TPS. A single Hydra Head processes up to 1,000+ TPS in payment benchmarks, with lower figures for script-heavy DeFi workloads, which the performance workstream in this proposal directly targets. Because Heads run independently and in parallel, aggregate throughput scales close to linearly with the number of Heads rather than being capped by a single global pipeline.

* **Near-instant finality.** Within a Head, transactions confirm as soon as participants sign, rather than waiting for L1 block production and settlement.

* **Zero transaction costs.** On L1, a payment transaction costs approximately $0.17, and a DeFi transaction costs $1 to $3. Inside a Head, fees can be set to zero, which makes a decisive difference for high-volume use cases.

* **Isomorphic ledger, the same Plutus as L1.** Hydra uses the same scripts, the same Plutus, and the same EUTXO model as Cardano. What runs on Cardano runs in Hydra unchanged.

* **Safest custody model.** Every state advance in a Head requires a signature from every participant (unanimous consensus), so a single honest participant can always reclaim their funds even if everyone else colludes. This 1-of-n honest assumption is a stronger guarantee than the honest-majority (51%) of Nakamoto chains, the two-thirds majority of BFT chains, or the single trusted sequencer most rollups rely on.

* **L1-anchored settlement.** If anything goes wrong, the global Cardano ledger is the fallback. Participants exit on the strength of cryptographic guarantees, not operator trust. Funds and final state can always be reclaimed on L1.

* **Optional privacy.** Activity inside a Head is visible only to its participants, so a Head can offer transaction privacy where the use case calls for it.

* **DevEx improvements.** Eliminates batching infrastructure and reduces burdens from minUTxO, rollbacks, and Tx size constraints.

**Benefits beyond builders**

The benefits above are builder-facing. Hydra's impact extends to the wider ecosystem.

***For end users***

* Sub-second finality and near-zero fees bring Cardano to UX parity with the fastest chains and centralized venues.

* Users keep L1-grade custody guarantees: in the direct setup, a single honest participant can always reclaim funds, and in the delegated setup, L1 remains the settlement backstop.

* Optional privacy where the use case calls for it.

***For Cardano, the treasury, SPOs, and ADA holders***

* **Grows the pie**: Hydra runs activity that is economically impossible on L1, expanding total ecosystem activity rather than cannibalizing L1. Without Hydra, that volume migrates to Solana or Ethereum L2s.

* **Retains builders and capital**: a competitive L2 keeps high-performance teams on Cardano instead of losing them at the selection stage.

* **Treasury sustainability**: head lifecycle transactions and optionally routed head fees create usage-linked L1 fee accrual that scales with adoption.

* **Drives adoption and utility**: by making high-performance applications viable on Cardano, Hydra increases real network usage and the ADA demand that comes with it through fees, staking, and collateral, so value accrues to the ecosystem and to ADA holders broadly rather than flowing to competing chains.

* **SPOs and stake**: more L1 settlement activity feeds transaction fees into the reward pot, and a higher-utility network supports ADA value and therefore stake value, an indirect, second-order benefit.

* **Protects prior investment**: turns years of Hydra R&D into sustained production adoption.

#### 1.3 Why Hydra: use cases unlocked, present and future

Hydra operates in two modes, direct and delegated, each unlocking different kinds of use cases.

**Direct setup: participants run their own hydra-nodes.**

Every participant co-signs every snapshot. The head state cannot advance without your signature. There is no operator trust at all.

This suits institutional market makers, financial actors, and autonomous agents who already run infrastructure. Hydra is not meant for retail use in the direct setup mode. It can serve retail through the delegated setup described below.

Direct-setup use cases with high ROI:

* **Institutional OTC settlement.** Market makers in a Hydra head arbitrage across DEXes by OTC trading between each other: sourcing liquidity, rebalancing inventory, and executing liquidation-to-USD flows, all at sub-second finality with zero fees. In mature DeFi markets, institutional traders dominate trading volume even though retail dominates TVL. That volume is Hydra's market.

* **Agent-to-agent commerce.** In Masumi's model, buyer and seller agents each run their own hydra-node. They are the participants, and they co-sign every snapshot. This is a direct setup because agents are software: running a hydra-node is operationally identical to running an API server. Circle launched Nanopayments on testnet in March 2026 for this exact market, built on Circle Gateway: off-chain aggregation, batched L1 settlement, the same pattern Hydra uses. But Gateway is centralized, custodial, USDC-only, and payment-only. Masumi on Hydra is a full commerce layer: escrow, dispute resolution, programmable service contracts, and continuous micropayment streams. x402 and Nanopayments let an agent pay for an API call. Masumi lets agents run actual commerce. Citi projects hundreds of billions in agent-driven transaction value by 2030. Cardano has a first-mover advantage here.

* **B2B payment rails.** Known counterparties, contractual relationships, both running infrastructure. Net outflows throughout the day settle to L1 once.

**Delegated setup: operators run the head; users transact through an application layer.**

Operators control execution, but unanimous consensus means safety is preserved as long as one honest operator remains. This works where trust points already exist, and Hydra adds no custodial risk on top:

* **Prediction markets** already trust a resolver to settle outcomes. If the operator set overlaps with the resolver set, Hydra adds zero marginal trust. Polymarket's election cycle did $9bn in volume.

* **Institutional DEXes** accept federated operator trust in exchange for CEX-like performance. Hyperliquid clears around $5bn daily on a 25-validator BFT chain. Delta DeFi is the closest Cardano analog, targeting that same market with L1 settlement as a stronger backstop.

* **RWA platforms** are federated by regulatory necessity: custodians, auditors, and KYC'd participants. Hydra absorbs trust that already exists. BlackRock's BUIDL passed $2.5bn in 2025, tokenized treasuries crossed $7bn, and BCG projects $16tn by 2030.

The pattern across all of these: **trust already exists in the application layer.** Hydra absorbs it into a structured protocol with cryptographic settlement guarantees rather than introducing new trust. The realistic comparison is not 'trustless versus custodial' but 'fully centralized service versus federated head with L1-anchored settlement.' Most of the L2 landscape, including Optimism, Base, and Arbitrum, runs on trusted sequencers today, and Hydra's delegated setup provides stronger custody guarantees through unanimous-consent settlement.

**Further use cases**

* **Gaming.** Hydra Doom is the largest gaming demonstration any Cardano L2 has produced. Real-time gameplay runs as head transactions that confirm the moment participants sign, enabling in-game economies and true token-based asset ownership that are uneconomic at L1 fees, with the session settled to L1.

* **Verifiable information processing.** Beyond payments, a head can validate authenticated inputs, aggregate them deterministically, and commit the result to L1. N-of-N snapshot signatures give a built-in audit trail, and isomorphic Plutus makes the logic auditable on-chain. Intersect already runs governance voting infrastructure on Hydra over a bounded, authenticated participant set; other instances include oracle aggregation, sealed-bid auctions, reputation systems, and compliance attestations.

* **Point of sale.** Retail payments need sub-second confirmation and near-zero fees that L1 latency rules out. In the delegated model, the merchant or payments provider operates the head, and customers transact through the application; the Hydra Vending Machine is a live demonstration, with further point-of-sale integrators in the pipeline.

* **Micropayments and metered payments.** L1 fees have long made sub-cent payments uneconomic, blocking pay-per-call APIs, usage-based billing, pay-per-use content, and machine-to-machine metering. Inside a head, a fraction-of-a-cent payment is operationally identical to a large one, and settlement amortizes across millions of off-chain transactions, so these models become viable. The market is already converging on this pattern: Circle's Gateway, Circle's own centralized, custodial, EVM-only, USDC-only infrastructure, productizes the same deposit-once, transact-off-chain, settle-on-chain architecture commercially. Hydra delivers it natively and non-custodially, on any asset, with full Plutus programmability for escrow, conditional payments, and dispute resolution, and aligned with emerging standards such as x402. On Cardano, Blockfrost already uses a Hydra head to enable zero-fee, instant-finality payments between SPOs and end users, with periodic settlement on L1.

#### 1.4 Protocol maturity

Hydra has already matured from research to market validation. It is the only Cardano L2 currently running production workloads:

* **Delta DeFi** is Cardano's closest analog to Hyperliquid. Hyperliquid clears around $5bn in daily volume on a 25-validator BFT chain; Delta DeFi targets that market with L1 settlement as a stronger backstop than Hyperliquid's BFT-only model. Delta DeFi has staked its entire perpetual DEX product on Hydra.

* **Masumi** is live agent-to-agent commerce. Buyer and seller agents each run their own hydra-node and co-sign every snapshot, delivering sub-second finality with full participant sovereignty.

* **Hydra Doom** ran the largest gaming demonstration any Cardano L2 has ever produced.

* **Glacier Drop** is the most rigorous stress test any Cardano L2 has faced, routing more than 30 million users across eight blockchains through Hydra infrastructure.

* **Intersect** voting infrastructure runs on Hydra.

* **VTech Labs** is building multiple applications on Hydra, including managed Hydra heads (HydraHub)  and a Hydra DApp marketplace (HydraOne).

* **Blockfrost** uses Hydra to enable zero-fee, instant-finality payments between SPOs and end users, settling to L1 periodically.

* **Hydra Vending Machine** is a small but illustrative deployment showing the protocol's reach into retail point of sale.

Hydra now has a growing production base. Early production users have surfaced real issues; many are already fixed, and more remain in scope. The difference now is that we have genuine feedback loops from actual users, which is driving production hardening. That feedback did not exist before. The Hydra team has delivered:

* **v1.3:** stable and performant, addressing issues raised by production users.

* **v2 alpha:** released, with directly opening heads for a simpler workflow and lower costs.

* **Partial fanout:** released ahead of the milestone deadline.

Hydra is Cardano's most mature, stress-tested scaling solution. Real users depend on it in production. The hardening work in this proposal closes the remaining gap that those users have surfaced.

#### 1.5 Adoption

Now that Hydra is production-ready, the next key step for adoption is distribution and builder acquisition.

We are working with the ecosystem to address this, for example, with:

* The Hydra Working Group: ensuring Hydra is built with real user requirements in mind.

* Cardano Foundation: helping with evangelization and distribution.

* VTechcom: offering managed Hydra Heads to make builder adoption easier.

* MeshJS and VTechcom: building SDKs for Hydra.

#### 1.6 Economics: Hydra grows the Cardano pie

There is a misconception that L2s steal liquidity and fees from L1. In reality, L2s do not destroy liquidity; they expand the total addressable liquidity pool.

A perpetual DEX on Hydra, an institutional OTC settlement flow, or an AI agent micropayment stream on a Hydra state channel: these are not transactions that would otherwise settle on L1. They are economically and technically impossible on L1. Without Hydra, these applications go to Solana or Ethereum L2s. With Hydra, they exist on Cardano, generating ecosystem activity, developer mindshare, TVL, and ultimately L1 settlement fees.

If Cardano's L1 remains too slow and expensive for high-performance applications, that capital will not stay on L1. It will simply migrate to competing ecosystems. By providing a high-performance L2 that settles on Cardano, we keep value within the Cardano ecosystem, drive demand for Ada, and benefit the entire ecosystem, including the base layer.

#### 1.7 Why now

Delta DeFi, Masumi, and the next wave of integrators are already building in the current cycle. The opportunity to strengthen Hydra into a platform that supports these teams is available today, but it is time-bound and may narrow as other ecosystems consolidate early traction. If these initial production use cases are not successfully supported, the impact would extend beyond near-term adoption metrics. It would also shape external perceptions of Cardano's L2 trajectory, making future efforts to attract and support similar builders more demanding in terms of time and resources. Over time, this creates a compounding effect, where early execution choices influence the cost and difficulty of later recovery and expansion.

### 2. Proposed Value Delivered (Why)

#### 2.1 KPIs

| KPI | Alignment | KPI Alignment Narrative |
| :---- | :---- | :---- |
| TVL | Yes: Fully | Applications on Hydra lock funds on L1, directly increasing TVL. Hydra is best suited to the high-performance, operator-mediated segment of DeFi: perpetual DEXes, central-limit-order-book venues, institutional OTC settlement, and high-frequency trading among known participants. Fully permissionless AMMs and shared-liquidity pools are better served by rollups; Hydra targets the segment where a bounded operator set with sub-second, zero-fee execution is decisive. That segment is large: Hyperliquid alone clears around $5bn in daily volume, and Delta DeFi is the Cardano-native analog already building on Hydra. Cardano's current DeFi share of roughly $150m grows only with competitive L2 infrastructure. |
| Monthly Transactions | Yes: Fully | Hydra increases total transaction capacity dramatically. While some activity moves off-chain for settlement, net ecosystem transaction volume grows as previously non-viable use cases, such as micropayments, high-frequency trading, and agent commerce, become feasible. Hydra delivers sub-second finality and near-zero fees, expanding Cardano's effective transaction capacity by orders of magnitude. |
| Monthly Active Users (MAU) | Yes: Fully | Finality and fee UX are the primary filters determining whether users acquire and retain, and they bind at current volumes, not only at scale. Hydra brings Cardano to competitive parity on the two metrics that matter most at the acquisition stage. More viable applications produce more active users, and the pre-selection problem means the current MAU figure understates Cardano's potential audience: Hydra unlocks verticals that currently self-eliminate. |

#### 2.2 Additional KPIs

| KPI | Alignment | KPI Alignment Narrative |
| :---- | :---- | :---- |
| Reliability: Monthly Uptime (6 epochs) | Yes: Fully | Hydra's operational excellence workstream directly improves node reliability through operator runbooks, observability tooling, and logging improvements, supporting high-uptime targets for production deployments serving Delta DeFi, Masumi, and pipeline integrators. |
| Operational Resilience: Voting Power Distribution of Controlling Stake | N/A | |
| Operational Resilience: Alternative Full Node Clients | N/A | |
| Revenue / Adoption: Annual Protocol Revenue | Yes: Fully | Every Hydra head open, settlement, and close triggers L1 transactions and L1 protocol fees. Where a head charges non-zero internal fees, a portion can be routed to the L1 treasury on settlement. As Hydra usage scales, this L1 fee accrual scales with it, an ongoing contribution to treasury sustainability rather than value flowing to competing ecosystems. |
| Governance: DRep Participation Rate | N/A | |
| Scalability: Throughput Capacity per day | Yes: Fully | Hydra expands Cardano's effective throughput by orders of magnitude through unlimited parallel heads, the capacity that matters as adoption scales. Equally decisive at today's volumes, it delivers the sub-second finality and near-zero fees that determine whether applications are usable at all. Throughput is the scaling headroom; finality and fees are the constraints binding now. |

### 3. Deliverables and Roadmap

| Item | Description | Benefits |
| :---- | :---- | :---- |
| Hydra Performance Optimization | Memory usage reduction, maximum TPS improvement, benchmarking suite, and binary protocol improvements. Expecting 2x to 10x runtime performance of snapshot signing, similar gains in memory profile, and concerted effort to optimize the on-chain contracts to reduce L1 fees. | Removes the performance ceilings live users hit today. Faster snapshot signing and a lighter memory profile let production users process more volume and concurrency per head; on-chain contract optimization lowers L1 settlement cost, and a public benchmarking suite gives builders credible, defensible numbers to design against. |
| Hydra Operational Excellence | Resilience improvements, hydra-node operator recipes, easier node configuration, documentation improvements, improved TUI, observability, and logging. | Turns Hydra from runnable by experts into operable in production. Operator runbooks, simpler configuration, and observability and logging let teams run heads reliably and recover from incidents, directly supporting the uptime targets live services depend on and lowering the operational barrier that currently deters adoption. |
| Hydra Ecosystem Support | Specific feature requests from production users, hackathons and workshops, developer relations, and Hydra Alliance and Working Group facilitation. | Converts real user feedback into shipped features and builds the developer pipeline. Production users get the specific capabilities they have surfaced, hackathons, workshops, and developer relations lower the learning curve and grow the builder base, and the Hydra Alliance and Working Group give the ecosystem structured coordination. |
| Hydra Maintenance & DevX  (Over Q3-Q4 2026\) | CI improvements, tooling improvements, and technical debt reduction. | Protects the protocol's long-term health and the treasury's investment in it. Reliable CI, better tooling, and reduced technical debt keep Hydra maintainable and safe to change, shorten contributor feedback cycles, and lower the cost and risk of future development. |

#### 3.1 Budget

**Total Treasury ask**: ₳5,100,781

| Funding Distribution | | |
| :---: | :---: | :---: |
| Development | ₳4,386,671 | 86% |
| Infrastructure | ₳51,008 | 1% |
| Security & Audits | ₳51,008 | 1% |
| Legal & Compliance | ₳51,008 | 1% |
| Engagement & Ecosystem support | ₳306,047 | 6% |
| Operations & Delivery | ₳153,023 | 3% |
| Governance | ₳51,008 | 1% |
| Others | ₳51,008 | 1% |

**Pricing Principles**: IO is requesting funding in ada, and any USD figures provided are for reference only. A portion of the funding shall be specifically tied to demonstrating measurable impact on Cardano's KPIs and pillars

* **Personnel and Delivery**: The majority of costs needed to fund the delivery resources across IO internal engineers, additional Cardano engineers, and contractors  
* **Infrastructure**: Cumulative cost of machine instances for network, monitoring, testing, benchmarking, and testnet operations across all workstreams  
* **Ecosystem support, Audit, Assurance & Contingency**: Leadership, ecosystem, and delivery to support execution and wider alignment. Independent work assurance and audits, plus contingency to account for complexities during execution

### 4. Treasury Governance & Compliance

#### 4.1 Contract Management

A written off-chain Legal Contract will be created between Input Output and the Cardano Development Holdings (CDH), as mandated by the Constitution, and will be administered by Intersect. This will include details of the project delivery schedule and dispute resolution.

**Project Delivery**  
All milestones, acceptance criteria, payment amounts, and expected delivery dates will be agreed between the Input Output and Intersect, acting on behalf of the CDH. Input Output will deliver according to the agreed-upon project schedule within the Legal Contract, of which the necessary information will be made public via the budget management platform via transaction metadata.

Defined by the milestones within a Legal Contract, Input Output will submit and attest milestone acceptance to the community, Intersect, or 3rd Party Assurer.

Project progress will be monitored via Intersect's delivery assurance function, which will be communicated to the community.

Acceptance of the work will be supported by a 3rd Party Assurer, who will be responsible for reviewing and signing off the work completed at each project milestone against the corresponding milestone deliverables detailed within the Legal Contract. This work is funded by a portion of this treasury withdrawal.

#### 4.2 Auditable Accounts & Fund Delegation

**Budget Management Tooling**  
To administer treasury funds on-chain, Intersect will utilize the treasury management smart contract framework developed by Sundae Labs. The smart contracts have been extensively tested, including audits from TxPipe and MLabs.

Final mainnet validation test can be seen via the Disburse action within transaction: 0f591dc544ae14102dbb4a74d5311a6acffc1772b163d8b7a9656b9525950b17

This withdrawal will utilize Intersect’s 2025 treasury reserve contract with the address being: stake17xzc8pt7fgf0lc0x7eq6z7z6puhsxmzktna7dluahrj6g6ghh5qjr
Funds will later be migrated to a 2026 treasury reserve contract once established.

**Budget Management Specifics**  
Intersect will utilize a single Treasury Reserve Smart Contract (TRSC) with many Project-Specific Smart Contracts (PSSC), managed by Intersect. Intersect's management consists of three 'admin' and two 'leadership' roles. An Oversight Committee consisting of five external, independent third-party entities will provide checks and balances on Intersect and safeguard against errors and unilateral control. The administration of both TRSC and PSSCs will be managed by Intersect, with external oversight of certain actions from the Oversight Committee.

The 2025 TRSC Oversight Committee consists of Sundae Labs, Cardano Foundation, Dquadrant, Xerberus, and NMKR. Their role is to independently verify key administrative actions using on-chain logic, ensuring accuracy and consistency without exercising discretion over governance decisions.  
For all details on Intersect's configuration, please see the Smart Contract Guide on the knowledge base.

The high-level permissions are as follows:

* TRSC Fund and PSSC Modify  
  * Two of the three Intersect admins, two of the five trusted entities, and one of the two Intersect leadership sign-offs must authorize  
* TRSC Disperse  
  * Two of three Intersect admins, three of five trusted entities, and two of two Intersect leadership sign-off must authorize  
* TRSC Pause and Resume  
  * Two of three Intersect admins, and one of two Intersect leadership sign-offs must authorize  
* TRSC Sweep  
  * One of three Intersect admins and one of two Intersect leadership sign-offs must authorize  
* TRSC Reorganize  
  * Two of three Intersect admins and three of five trusted entities must authorize

**Processes**  
Upon enactment of this governance action, funding for this project will be directed into the TRSC's stake account. All instances of TRSC and PSSC can not be staked with a SPO and will be delegated to the auto-abstain predefined DRep. From here, funds will be withdrawn into a UTxO remaining at the TRSC.

When a 2026 TRSC is established, the funding for this project will be migrated via the ‘disburse’ action.  

When the Legal contract is prepared and IO is ready, funding for this project will be transferred using the Fund action to a PSSC. All milestones will be outlined within the metadata.

A dashboard will be available for the community to audit the TRSC or PSSC and track metrics related to this withdrawn ada, as well as being immutably verifiable on-chain.

#### 4.3 Funding Denomination

All amounts in this proposal are denominated in ada (₳). The total Treasury ask is **₳5,100,781**.  USD figures ($816,125) are provided for reference only, based on an ADA/USD rate of 0.16.

#### 4.4 Refund Conditions

All funds not disbursed by the end of the delivery period will be returned to the Cardano Treasury. A final reconciliation will be published as part of the oversight reporting cycle. In the event of partial delivery or scope reduction, unspent funds associated with cancelled or reduced deliverables will be returned proportionally.

#### 4.5 Prior Treasury Receipts

IO and its affiliated entities have been accountable for the delivery of work funded by the Cardano Treasury. The total funds allocated have been ₳130,708,860 across a number of projects within Treasury Smart Contract. To date, IOG has withdrawn ₳84,909,073.

| Workstream | Ada received | % of allocation | Corresponding Governance Action |
| :---: | :---: | :---: | ----- |
| Blockfrost | ₳1,137,500 | 88% | 8ad3d454f3496a35cb0d07b0fd32f687f66338b7d60e787fc0a22939e5d8833e#2 |
| Catalyst | ₳3,095,400 | 60% *\* | 8ad3d454f3496a35cb0d07b0fd32f687f66338b7d60e787fc0a22939e5d8833e#23 |
| IOE | ₳53,487,088 | 55% | 8ad3d454f3496a35cb0d07b0fd32f687f66338b7d60e787fc0a22939e5d8833e#1 |
| IOR | ₳26,840,000 | 100% | 8ad3d454f3496a35cb0d07b0fd32f687f66338b7d60e787fc0a22939e5d8833e#32 |
| Governance | ₳349,085 | 59% | 8ad3d454f3496a35cb0d07b0fd32f687f66338b7d60e787fc0a22939e5d8833e#22 |

*\*Note: for Catalyst, this only reflects the workstream that focuses on the Hermes Infrastructure and UX/UI improvements, not the execution and operation of Funds 14-16. Per Info Action, this is in the process of transitioning to the Cardano Foundation.

#### 4.6 Net Change Limit Compliance

The requested amount does not, at the time of submission, on its own or in aggregate, breach the applicable [350M Net Change Limit](https://explorer.cardano.org/governance-action/gov_action1m3xx08yv788vfxqh6nfvrjtvmqpwezsy0ggaczctkyjmttc2wmxsq4jsr7q) covering Epoch 613 to Epoch 713.  
In accordance with the guardrail TREASURY-02a, this withdrawal does not exceed the NCL at the moment of submission.

#### 4.7 Audit & Oversight

Audit and oversight costs are included within the overhead applied to this proposal. The Intersect administration fee covers administrative oversight and is reflected within the cost of this proposal. Independent oversight will be provided through Intersect and a technically capable third party, including reporting obligations and milestone-based disbursement controls.

## References



## Authors

{
  "name": "Input Output Global",
  "witness": {
    "witnessAlgorithm": "CIP-0008",
    "publicKey": "cd674a98d12e3bc0ea847ea95e354ef91ccb0ab7f7b6c7396f22ea576e263487",
    "signature": "84582aa201276761646472657373581de1e0edfd468983df75e52cc1776e0eba518023cd8f540db616e414716fa166686173686564f45820044fc47d18b3af0cbb686fefe1b48daa7f862cfc3b87e5705019246eda6598b45840aada578c864768d9605c245f8911746de4f81dab7dacbb970f53909a9be21044899231fba1026c4dce61a5b0e4bd5b0c24357755fb90e3bae687a72ff37e460c"
  }
}

## Onchain

{
  "deposit": "100000000000",
  "reward_account": "stake1uy7ucfwsxtv36lz2drg4nw538xswshmg9pw8h2yzqd4qrzgzhyrsg",
  "gov_action": {
    "tag": "treasury_withdrawals_action",
    "rewards": [
      {
        "key": "stake17xzc8pt7fgf0lc0x7eq6z7z6puhsxmzktna7dluahrj6g6ghh5qjr",
        "value": "5100781000000"
      }
    ]
  }
}
