## Title
Withdraw 1,684,050 ada for Tx3 by TxPipe: Open API Layer for Cardano's dApp P...

## Abstract

This Treasury Withdrawal funds Tx3 by TxPipe: Open API Layer for Cardano's dApp Protocols.

This Treasury Withdrawal is submitted by Intersect on behalf of the vendor. The content for the following sections; Abstract, Motivation and Rationale have been sourced from the approved proposal submitted by the Vendor as part of the Intersect budget process.

## Motivation

This proposal requests 1,308,000 ADA (plus a 327,000 ADA contingency reserve) over 12 months to deliver an open, standardized interface across Cardano's leading on-chain protocols, so any developer or AI agent can discover, integrate, and compose them through a single consistent surface.

Today, there is no common interface mechanism across the ecosystem. Every integrator is forced to relearn each protocol from scratch, and rebuild the same understanding independently. This raises the cost of every integration, locks users into official frontends that may not survive a downturn, and makes cross-protocol composability impractical.

This problem is about to get worse. The next wave of on-chain activity will come from AI agents executing workflows autonomously — but blockchain is uniquely susceptible to AI slop: a hallucinated transaction on-chain can move real assets irreversibly. For Cardano to capture agent-driven activity, its protocols need to be discoverable, understandable, and executable by agents through a shared interface layer — one where agents express intents that users can audit before signing, while the underlying transactions remain deterministic.

Tx3 is the framework that solves this. Each protocol is described once with a verified interface definition, from which the framework produces documentation, auto-generated SDKs in multiple languages, and live JSON-RPC endpoints. This proposal extends the framework with the agent layer: agent-first documentation, protocol skills packaging operations, and an MCP server that lets agents discover and call any published protocol directly.

Through Catalyst Fund 14, TxPipe has already put the developer layer into production with 5 protocols live on the [Tx3 Protocol Registry](https://tx3.land). This proposal funds 12 additional onboardings (3 per quarter) with full developer and agent coverage, and the development of the MCP server and skill framework as shared infrastructure for all protocols on the registry.

## Rationale

### Strategic Pillar Alignment

**Pillar 2 — Adoption & Utility:**

This proposal aligns to Pillar 2 through focus area A.3 (Developer Experience), specifically the open-source incentives area, which calls for incentivizing the maintenance of core Cardano SDKs, frameworks, and infrastructure.

Tx3 provides a standard, open-source interface to Cardano protocols — documentation, multi-language SDKs, and live RPC endpoints — removing the need for developers to reverse-engineer transaction patterns or depend on centralized infrastructure. Protocols such as Strike Finance, Indigo Protocol, VyFinance, Bodega Market, and Fluid Tokens are already accessible this way. Expanding protocol coverage and adding agent-facing infrastructure (MCP server, per-protocol tools, skills and LLM-structured documentation) ensures that Cardano protocols are accessible not only to developers but also to AI agents — positioning the ecosystem for the shift toward autonomous on-chain interaction.

**Pillar 4 — Community & Ecosystem Growth:**

This proposal also aligns to Pillar 4 through focus area C.2 (Global Engagement & Market Adoption), which calls for proactively demonstrating ecosystem value and building confidence with partners and users.

Cardano has real architectural strengths — a deterministic UTxO model, formal verification heritage, and a growing base of on-chain protocols — but these are difficult to communicate externally when the integration path remains complex and Cardano-specific. By making protocols agent-ready through standard interfaces, structured documentation, and an MCP server, Tx3 creates a concrete demonstration of Cardano as the most AI-compatible blockchain ecosystem. This lowers the barrier for skilled developers and businesses to engage with Cardano — they can interact with protocols using the same tools and patterns they already use, whether through SDKs or AI agents — and gives the ecosystem a differentiated, credible narrative in a market where every chain is competing for developer attention.

### Intersect Budget Process

This proposal achieved the required 67% support threshold during the 2026 Intersect Budget Process Hydra Voting phase and has therefore been advanced for on-chain Treasury Withdrawal Governance Action submission in accordance with the approved Budget Process Framework.

### Net Change Limit Compliance

The requested amount does not at time of submission, on its own or in aggregate, breach the applicable [350M Net Change Limit](https://explorer.cardano.org/governance-action/gov_action1m3xx08yv788vfxqh6nfvrjtvmqpwezsy0ggaczctkyjmttc2wmxsq4jsr7q) covering Epoch 613 to Epoch 713.  
In accordance with the guardrail TREASURY-02a, this withdrawal does not exceed the NCL at the moment of submission.

### Audit & Oversight

Audit and oversight costs are included within the overhead applied to this proposal. The Intersect administration fee covers administrative oversight and is reflected within the cost of this proposal. Independent oversight will be provided through Intersect and technically capable third-party, including reporting obligations and milestone-based disbursement controls.

### Prior Treasury Funding Disclosure

TxPipe has received funding through 30 Project Catalyst proposals across Funds 9 through 14, of which 26 have been successfully delivered and 4 are currently under development and on schedule.

In addition, TxPipe received open-source maintenance funding through Intersect's 2025 budget cycle for Pallas, Dolos, and UTxO RPC, all of which are being delivered on schedule.

### Budget Summary

| Work Package | Total (ADA) |
|---|---|
| Open API Layer for Cardano Protocols | 1,635,000 |
| Intersect Budget Administration fee | 49,050 |
| **Total** | **1,684,050** |

### Intersect Budget Management Tooling

To administrate treasury funds on-chain, Intersect will utilize the treasury management smart contract framework developed by Sundae Labs. A new instance of these smart contracts has been deployed for 2026, mirroring the contracts from the 2025 budget cycle.

- The 2026 Treasury Reserve Smart Contract stake address: `stake1784sdxt6jjennmstphgdu7l7c2scf5d02a6cve2dgn5s2kq5u3j9v`  
- The 2026 Treasury Reserve Smart Contract payment address: `addr1x84sdxt6jjennmstphgdu7l7c2scf5d02a6cve2dgn5s2k8tq6vh499n88hqkrwsmealas4psng674m4sej5638fq4vqmxs59w`
- The 2026 Project Specific Smart Contract payment address: `addr1x9d6k9z6t6fvsetj2djmerargk475lef9gfvshy4rwh4h7jm4v295h5jepjhy5m9hj86x3dtafljj2sjepwf2xa0t0aq048cay`

#### Specifics

Intersect will utilize a single Treasury Reserve Smart Contract (TRSC), with one Project-Specific Smart Contracts (PSSC). Intersect’s management consists of five ‘admin’ and three Intersect ‘leadership’ roles. An Oversight Committee consisting of six external, independent third-party entities will provide checks and balances on Intersect, and safeguard against errors and unilateral control. The administration of both TRSC and PSSC will be managed by Intersect, with external oversight on certain actions from the Oversight Committee.

The Oversight Committee consists of Sundae Labs, Cardano Foundation, Dquadrant, NMKR, Sundial and Eternl. Their role is to independently verify key administrative actions using on-chain logic, ensuring accuracy and consistency without exercising discretion over governance decisions.

For all details on Intersect’s configuration please see the [**Smart Contract Guide**](https://admin-services.docs.intersectmbo.org/governance/smart-contracts) on the knowledgebase.

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

* [Project Proposal via Intersect Budget Process Hydra Voting](https://hydra-voting.intersectmbo.org/votes/cardano-budget-2026/69fc5a8785ddd26899aaf208)
* [Intersect Budget Process Hydra Voting Documentation](https://docs.hydra-voting.intersectmbo.org/)
* [Intersect Budget Process Hydra Voting Auditor Guide](https://docs.ekklesia.vote/audit/technical)
* [Intersect Budget Process Hydra Voting Final Audited Results (Gitbook)](https://docs.intersectmbo.org/intersect-knowledge-base/cardano-facilitation-services/cardano-budget-2026/2026-budget-process-final-audited-results)
* [Intersect Budget Process Hydra Voting Audit Report (PDF)](ipfs://bafkreibbn432apngjzth2kahjkhp2fgw6zmvwcjnl4w6gvz6j7yq5gyaiu)
* [Automating Accountability: Cardano's Smart Contract Framework Blog](ipfs://bafybeihqx4ae72z7suqfnxrpqpqithp43cai7o2uuewnqtezgaoyc3ptyq)
* [Sundae Labs Budget Management Smart Contracts Github Repository](https://github.com/SundaeSwap-finance/treasury-contracts)
* [Budget Management Smart Contracts TxPipe Audit Report](ipfs://bafybeiccnwejbgj43wo6hrlseckkkmprtoqc5cfuy2hesm6c6yealwho3e)
* [Budget Management Smart Contracts MLabs Audit Report](ipfs://bafybeiah5fnjhda5hemj3qvaehc4mre3qllqzw2l7mkdsguytn4ftgafw4)

## Authors
