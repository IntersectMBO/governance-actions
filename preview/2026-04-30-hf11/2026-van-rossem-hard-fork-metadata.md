## Title

Hard Fork to Protocol Version 11 ("van Rossem" Hard Fork)

## Abstract

We propose to upgrade Cardano preview to Protocol Version 11. This upgrade will be achieved via an intra-era Hard Fork (called "van Rossem"). Following the upgrade:

1. The Cardano mainnet protocol will be upgraded to Major Version 11 and Minor Version 0;  
2. The ledger remains in the Conway era, there is no era transition;  
3. Several new Plutus primitives will be available, as defined in CIP-0109, CIP-0132, CIP-0133, CIP-0138 and CIP-0153;  
4. All Plutus built-in functions will be available consistently across Plutus V1, V2 and V3, expanding the capabilities of Plutus V1 and V2 scripts;  
5. “case”-expressions for built-in types (Bool, Integer and Data) will be supported in Untyped Plutus Core, providing significant performance improvements and cleaner script logic;

In line with the Cardano Constitution:

1. At least 85% of stake pools by active stake should have upgraded to a version of the node that can support protocol version 11 before ratification of this governance action.

These conditions will be verified by the Constitutional Committee and SPOs, supported by readiness reports from Intersect's Hard Fork Working Group.

## Motivation

Protocol Version 11 bundles a focused set of improvements to **Plutus performance**, **ledger consistency**, and **node-level security** into a single intra-era upgrade. Because it is an intra-era hard fork, transaction shape does not change and ecosystem upgrade effort is minimised.

### Plutus Performance and Capability

Plutus is improved in three complementary ways. First, a number of new Plutus primitives, defined in CIP-0109, CIP-0132, CIP-0133, CIP-0138 and CIP-0153; provide an on-chain modular exponentiation primitive, an efficient `dropList` operation, multi-scalar multiplication over BLS12-381, a constant-time `Array` built-in type, and a native `Value` built-in type.

Together, these additions address recognised throughput bottlenecks (constant-time indexing, fast list traversal, native `Value` handling), enabling more efficient pairing-based zero-knowledge cryptography (BLS12-381 multi-scalar multiplication), and remove the need to off-load operations such as modular inverses to off-chain processes.

Second, the upgrade unifies the set of built-in functions across Plutus V1, V2 and V3. Historically each Plutus language version exposed its own subset of built-ins, so newer functionality was generally reachable only by recompiling contracts to use the latest Plutus version. Following the hard fork, the full set of built-ins (including the ones that have been introduced) will become available across all Plutus language versions, expanding the capabilities of existing Plutus V1 and V2 scripts.

Third, `case` expressions over built-in types (`Bool`, `Integer` and `Data`) are added to the Untyped Plutus Language Core (UPLC), addressing performance bottlenecks in data matching, providing significant performance improvements, and yielding cleaner script logic.

Collectively, these changes increase script performance, reduce execution cost, and meaningfully extend what builders can accomplish in Plutus.

### Ledger consistency

Cardano’s ledger is strengthened by promoting several validation checks into proper ledger predicates and tightening existing rules. VRF key hash uniqueness is enforced at the ledger level, ensuring that no two stake pools can reuse the same VRF key.

Reference input rules for Plutus V1/V2 are revised to address predicate checks that previously caused issues for scripts using reference inputs.

The Constitutional Committee voting restriction is promoted from a mempool-only check into a proper ledger predicate failure, improving transparency and governance correctness.

The non-matching withdrawals predicate is rewritten to provide clearer error messaging and safer validation of withdrawal structures.

### Node-level diagnostics and security

Cardano-node is improved by reporting protocol parameter hash (`PPView`) mismatches with greater detail, helping operators identify and resolve configuration issues quickly, alongside the security benefits of VRF key uniqueness above.

These changes can only be activated by a hard fork. They alter the rules under which blocks and transactions are validated, so they require coordinated activation across all nodes on the network.

## Rationale

### Technical Evaluation

The submission of this governance action has been recommended by Intersect's Hard Fork Working Group on **2026-04-30**, and subsequently ratified by Intersect's Technical Steering Committee on  **2026-05-05**.

#### Functionality

The upgrade enables:

1. **Plutus upgrades:** new primitives (CIP-0109, CIP-0132, CIP-0133, CIP-0138, CIP-0153); unified built-in availability across V1/V2/V3; and `case` expressions on `Bool`, `Integer` and `Data` in UPLC.  
2. **Ledger and Cardano Node enhancements:** VRF key hash uniqueness enforced at the ledger level; revised reference input rules for V1/V2; the Constitutional Committee voting restriction promoted from mempool to ledger predicate; a clearer non-matching withdrawals predicate; and improved `PPView` mismatch reporting.

All other Protocol Version 10 functionality is preserved, and the transaction shape is unchanged.

Testing reports demonstrate no behavioral regressions, show complete conformance between specification and implementation for the new ledger rules, and confirm the correct operation of the new Plutus primitives and `case` expressions across all of Plutus V1, V2 and V3.

#### Security

Security audits have been undertaken for the formal Agda specification of the new ledger rules, the Haskell ledger implementation, and for the new Plutus primitives, `case`-expressions and their cost models.

#### Performance

[Performance results for Cardano Node version 10.7.1](https://updates.cardano.intersectmbo.org/reports/2026-04-performance-10.7.1) show no regressions from previous versions of the Cardano node for the standard value, Plutus and voting benchmarks, and acceptable baseline performance for the new Plutus primitives and `case` expressions.

#### Sustainability

The upgrade provides new Plutus functionality that addresses long-standing performance bottlenecks for DApps (constant-time array indexing, fast list traversal, native `Value` handling, native `case`-expressions on `Data`), expands Plutus's cryptographic capabilities (BLS12-381 multi-scalar multiplication, modular exponentiation), unifies built-in availability across Plutus V1, V2 and V3, and tightens ledger rules.

### Plutus Upgrades

#### Unified Built-ins for Plutus V1, V2 and V3

Each Plutus language version has historically exposed its own subset of built-ins, so newer functionality was reachable only by recompiling contracts to the latest version. Following the van Rossem hard fork, all built-in functions, including those newly introduced by CIP-0109, CIP-0132, CIP-0133, CIP-0138 and CIP-0153, will be available for all of Plutus V1, V2 and V3.

#### `case` Expressions for Built-in Types

Untyped Plutus Core gains `case`-expressions over the built-in types `Bool`, `Integer` and `Data`. Prior to this upgrade, branching on `Data` structure (or on integer or boolean values) relies on chained `if`/`equalsInteger`/`unConstrData` patterns that are expensive at runtime and verbose at the source level, data matching is one of the major performance bottlenecks in current scripts. Native `case` expressions let the interpreter dispatch on the relevant tag or value directly, yielding significant performance gains and cleaner script logic.

#### New Plutus Primitives

The new Plutus primitives are defined in five CIPs: [CIP-0109](https://github.com/cardano-foundation/CIPs/tree/master/CIP-0109), [CIP-0132](https://github.com/cardano-foundation/CIPs/tree/master/CIP-0132), [CIP-0133](https://github.com/cardano-foundation/CIPs/tree/master/CIP-0133), [CIP-0138](https://github.com/cardano-foundation/CIPs/tree/master/CIP-0138) and [CIP-0153](https://github.com/cardano-foundation/CIPs/tree/master/CIP-0153). A complementary, previously-enacted protocol parameter update governance action (gov_action1q9xr9etnglg3gazzzrsexj3qsnzaqpf2yvfpwrvnwk9l64n089tqqqg02j9) provides the corresponding cost model entries that will enable the primitives following the hard fork.

##### **CIP-0109 | Modular Exponentiation Built-in for Plutus Core**

Modular exponentiation is used in many cryptographic protocols, including elliptic-curve and pairing-based cryptography. Without a native built-in, Plutus contracts have offloaded operations such as multiplicative inverses to off-chain processes, inflating transaction size and cost. CIP-0109 adds an efficient on-chain modular exponentiation primitive (with inverse support).

`expModInteger`

##### **CIP-0132 | New Plutus Builtin dropList**

`elemAt` and `drop` operations on lists are a throughput bottleneck for many DApps; today they require the fixed-point combinator, which is expensive on-chain and limits common optimisations such as redeemer-indexing. CIP-0132 introduces a `dropList` built-in that drops a given number of list elements directly, drastically improving `elemAt` and unlocking redeemer-indexing's full potential.

`dropList`

##### **CIP-0133 | Plutus support for Multi-Scalar Multiplication over BLS12-381**

Multi-scalar multiplication (MSM) over BLS12-381 is central to modern SNARK protocols (e.g. PLONK). Optimised MSM cannot be implemented practically in Plutus directly. CIP-0133 exposes optimised MSM functions from the `blst` library, enabling efficient on-chain verification of pairing-based zero-knowledge proofs.

`bls12_381_G1_multiScalarMul, bls12_381_G2_multiScalarMul`

##### **CIP-0138 | Plutus Core Builtin Type - `Array`**

Plutus Core's built-in list is singly-linked, with `Θ(n)` indexing, there is currently no built-in collection with constant-time lookup. CIP-0138 introduces a polymorphic `Array` built-in type with constant-time indexing, unlocking a broad class of classical algorithms and data structures for on-chain code.

`Array, indexArray, lengthOfArray, listToArray`

##### **CIP-0153 | Plutus Core Builtin Type - MaryEraValue**

`Value` (the multi-asset map of ada and native tokens) is one of the most-used types in Plutus contracts, but is currently manipulated via generic `Map`/`Data` operations, a source of script-execution overhead. CIP-0153 introduces a built-in `Value` type (modelled on the Mary-era multi-asset value) and built-in functions over it, enabling efficient native handling of multi-asset values.

`valueData, unValueData, insertCoin, lookupCoin, unionValue, scaleValue`

### Ledger and Cardano Node Enhancements

The hard fork promotes several validation checks into proper ledger predicates and tightens existing rules, improving ledger consistency, governance correctness, operator diagnostics, and node-level security.

#### VRF Key Hash Uniqueness

From the point of the hard fork, VRF key hash uniqueness is enforced at the ledger level: no two stake pools can register or operate with the same VRF key. Promoting this from a non-ledger check to a ledger predicate strengthens stake pool security and mitigates attack vectors that rely on VRF key reuse.

#### Revised Reference Input Rules for Plutus V1/V2

Reference input rules for Plutus V1 and V2 scripts are revised, adjusting predicate checks that previously caused incorrect script failures, while preserving V3 semantics.

#### Constitutional Committee Voting Restriction Promoted to a Ledger Rule

The restriction governing which Constitutional Committee votes are permitted is promoted from a mempool-only check to a ledger predicate failure. Where previously an offending vote could only be rejected at the mempool layer, it now causes a deterministic on-chain ledger failure, improving transparency and ensuring all participants observe the same outcome regardless of submission path.

#### Non-matching Withdrawals Predicate

The predicate validating reward withdrawals is rewritten for clearer error messaging and safer validation, easing diagnosis for tooling and reducing the surface area for incorrect withdrawal handling.

#### Improved Protocol Parameter Hash Mismatch Reporting

Errors from a mismatch between a transaction's protocol parameter view (`PPView`) hash and the expected hash for the current ledger state are now reported in greater detail, helping operators identify and resolve configuration issues quickly.

### Consistency with Guardrails

The relevant guardrails in the Cardano Constitution are:

* **HARDFORK-01:** "The major protocol version must be the same as or one greater than the major version that will be enacted immediately prior to this change. If the major protocol version is one greater, then the minor protocol version must be zero."  
* **HARDFORK-02:** "The minor protocol version must be no less than the minor version that will be enacted immediately prior to this change."  
* **HARDFORK-03:** "At least one of the protocol versions (major or minor or both) must change."  
* **HARDFORK-04:** "At least 85% of stake pools by active stake should have upgraded to a Cardano node version that is capable of processing the rules associated with the new protocol version."  
* **HARDFORK-05:** "Any new updatable protocol parameters that are introduced with a hard fork must be included in this Appendix and suitable guardrails defined for those parameters."  
* **HARDFORK-06:** "Settings for any new protocol parameters that are introduced with a hard fork must be included in the appropriate Genesis file."  
* **HARDFORK-07:** "Any deprecated protocol parameters must be indicated in this Appendix."  
* **HARDFORK-08:** "New Plutus versions must be supported by a version-specific Plutus cost model that covers each primitive that is available in the new Plutus version."

This governance action is consistent with all eight guardrails, provided attention is paid to HARDFORK-04, as described below. None of these guardrails can be checked by the automated guardrails script.

#### Consistency with HARDFORK-01

The protocol version will be changed from major version 10 (minor version 0) to major version 11 (minor version 0).

#### Consistency with HARDFORK-02

The minor protocol version will be unchanged (0 in both cases).

#### Consistency with HARDFORK-03

The major protocol version will change from 10 to 11.

#### Consistency with HARDFORK-04

The stake pool upgrade status will need to be determined prior to ratification of the governance action. If insufficient stake pools by stake have been upgraded, the action should not be ratified.

#### Consistency with HARDFORK-05, HARDFORK-06 and HARDFORK-07

No new protocol parameters are introduced and none are deprecated, so no guardrail updates or Genesis file changes are required.

#### Consistency with HARDFORK-08

No new Plutus version is introduced. The new Plutus primitives are made available across Plutus V1, V2 and V3, with version-specific cost model entries, covering each affected primitive in each Plutus language version, enacted by a separate, previously-enacted protocol parameter update governance action.

## **Reversion Plan**

The hard fork represents a permanent change to the on-chain ledger rules, including new Plutus capabilities. Reversion is only possible in extreme circumstances, using the disaster recovery process that is described in [CIP-0135 | Disaster Recovery Plan for Cardano networks](https://github.com/cardano-foundation/CIPs/blob/master/CIP-0135/README.md).  The new Plutus primitives are enabled by a companion governance action that will introduce new cost model settings.  If issues are discovered with the Plutus primitives, these settings could be changed so that the primitives could not be used.

### In Memory of Max van Rossem

The Cardano community has lost one of its most dedicated builders. Max van Rossem passed away in October 2025, leaving behind a legacy woven into the foundations of Cardano's governance, its community, and the generations of builders who will follow.

Max believed in planting digital trees in whose shade he would never sit, and he lived that belief. From the earliest days of AmsterdamNode, running the AMS stake pool with friends, organising the Cardano Summit in the Netherlands four years running (2021 through 2024), and enabling Amsterdam's first bar to accept ada, Max helped turn the Dutch Cardano community into one of Europe's most active hubs.

Max shaped the constitutional bedrock of on-chain governance. He served as a member and co-lead of the Constitutional Committee Election Working Group at Intersect, which delivered the first fully elected Constitutional Committee. He represented the Dutch community as a DRep and as a delegate to the Constitutional Convention in Buenos Aires, Argentina, and was a driving force behind the inclusion of Article VIII in the Cardano Constitution. He was a core contributor to the framework of the *Beyond MVG "State of Governance"* report, helping the community to see itself clearly and to visualise what comes next.

Max was also a Cardano builder. Through AdaMoments and, finally, Moments, he pursued a singular vision: that individuals should own their digital signal, their identity, and their story. *"User data = User's data"* was not a slogan for him; it was a principle he defended in code, in governance, and in every conversation. Beyond blockchain, he co-founded Stichting Oekraïne Express, personally helping drive humanitarian supplies to the Polish–Ukrainian border and bring refugees to safety.

Those who worked with Max remember him as sharp-minded, direct, deep, caring, and unwaveringly committed. He asked hard questions. He built. He showed up.

On 11 January 2026, after Max's passing, his son Max Louis Hans van Rossem was born. He will grow up in a world where the blockchain his father helped shape carries his family name, a hard fork named not for a product or a protocol milestone, but for a human being who gave his time, his mind, and his heart to a decentralised future he believed in.

The van Rossem hard fork, Cardano's Protocol Version 11, is the community's way of saying: *we remember. The trees you planted are growing. Your signal endures.*

## References

* [CIP-0109 | Modular Exponentiation Built-in for Plutus Core](https://github.com/cardano-foundation/CIPs/tree/master/CIP-0109)  
* [CIP-0132 | New Plutus Builtin dropList](https://github.com/cardano-foundation/CIPs/tree/master/CIP-0132)  
* [CIP-0133 | Plutus support for Multi-Scalar Multiplication over BLS12-381](https://github.com/cardano-foundation/CIPs/tree/master/CIP-0133)  
* [CIP-0138 | Plutus Core Builtin Type - Array](https://github.com/cardano-foundation/CIPs/tree/master/CIP-0138)  
* [CIP-0153 | Plutus Core Builtin Type - MaryEraValue](https://github.com/cardano-foundation/CIPs/tree/master/CIP-0153)  
* [CIP-0135 | Disaster Recovery Plan](https://github.com/cardano-foundation/CIPs/blob/master/CIP-0135/README.md)  
* [Cardano Node 10.7.1 Performance Report](https://updates.cardano.intersectmbo.org/reports/2026-04-performance-10.7.1)

## Authors

* Intersect
