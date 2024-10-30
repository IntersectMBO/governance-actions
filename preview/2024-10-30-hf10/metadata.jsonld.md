## Title

Hard Fork to Protocol Version 10 (Chang#2)

## Abstract

We propose to upgrade the Cardano Preview test environment to Protocol Version 10.  This upgrade will be achieved via a Hard Fork (Chang#2).  Following the upgrade:

1. The Preview protocol will be upgraded to Major Version 10 and Minor Version 0
2. All 7 governance actions that are described in CIP-1694 will be enabled
3. DRep voting will be enabled on all 7 governance actions 
4. SPO voting will be enabled on all applicable governance actions, as defined in CIP-1694
5. Constitutional Committee voting will be enabled on all applicable governance action, also as defined in CIP-1694
6. Staking rewards can be accumulated as usual, but can only be withdrawn following delegation to a DRep (including the pre-defined abstain/no-confidence options)
7. Several new Plutus primitives will be available once an update to the Plutus v3 cost model has been ratified

In line with the Interim Cardano Constitution:



1. At least 85% of stake pools by stake should have upgraded to a version of the node that can support protocol version 10.

## Motivation

Protocol Version 10 enables the remainder of the CIP-1694 functionality, ensuring that DReps can participate in voting on all governance actions.  It enables treasury withdrawals, the ability to record a new constitution, updates to the constitutional committee, and votes of no confidence.  These are in addition to the 3 existing governance actions that were enabled for Protocol Version 9 by the Chang hard fork (hard forks, parameter updates, and info actions). 

Following the hard fork, the protocol will support a number of new Plutus primitives that have been defined in CIP-0122, CIP-0123 and CIP-0127.  These provide bitwise and logical operations on byte strings, plus RIPEMD-160 cryptographic hashing functionality (for compatibility with BitCoin).  These primitives will be enabled by a complementary parameter update governance action.

## Rationale

## Technical Evaluation


### Functionality

The upgrade enables two main items: 




1. The remainder of the CIP-1694 functionality, as described below - notably: DRep voting on all action types, the remaining governance actions, and restrictions on rewards withdrawals.
2. New Plutus primitives as described below.

Existing functionality from Protocol Version 9 will be maintained.  Full testing reports have been produced for the Cardano node that demonstrate:



1. No behavioral regressions for existing functionality;
2. Conformance between the specification and implementation of the Cardano node for the new CIP-1694 functionality;
3. Correct operation of the new Plutus primitives.


### Security

Security audits have been undertaken for: 




1. The formal specification for CIP-1684 in Agda
2. The ledger implementation in Haskell that corresponds to this formal specification

A security report will be provided for the new Plutus primitives.


### Performance

Performance results for Cardano Node version 10.0 show no regressions from previous versions of the Cardano node for the standard value and Plutus benchmarks.


### Sustainability

The upgrade provides new functionality that will enhance existing governance capabilities.


## New Functionality that will be enabled by the Upgrade


### DRep Voting Changes following the Upgrade 
 
DReps will be able to vote on all 7 types of governance action, as described in CIP-1694, and will no longer be restricted to voting on Info actions. 



### New Governance Actions that will be Available following the Upgrade

Four new governance actions will be enabled as described in CIP-1694.



1. Treasury withdrawals.  Funds may be withdrawn from the treasury and deposited in designated stake credentials. 

2. New constitution/guardrails script.  A new constitution may be proposed and/or a new guardrails script may be proposed. 

3. Updates to the constitutional committee. Constitutional committee members may be removed, replaced, or new members may be elected.  The threshold for Constitutional committee voting may also be changed. 

4. Votes of no confidence.  A vote of no confidence may be raised.


### Other Governance Changes following the Upgrade

The main other governance changes in Protocol Version 10 are:



1. Rewards will still be accumulated by Ada holders when delegating to stake pools for block production as in Protocol Version 9 and before, but these rewards can only be withdrawn once the Ada holder has also delegated their stake to a DRep for voting purposes.  This vote delegation may be to a self-created DRep, to a third-party DRep, or to the pre-defined Abstain or No Confidence DReps. 

2. SPO votes will default to **No**.  It will be possible for SPOs to default to **Abstain** or **No Confidence** by delegating their reward address to the pre-defined DRep. 


### New Plutus Primitives that will be Available following the Upgrade

The new Plutus primitives are defined in three CIPs: [CIP-0122](https://github.com/cardano-foundation/CIPs/tree/master/CIP-0122), [CIP-0123](https://github.com/cardano-foundation/CIPs/tree/master/CIP-0123) and [CIP-0127](https://github.com/cardano-foundation/CIPs/tree/master/CIP-0127). Those in CIP-0122 are:

- Bitwise logical AND, OR, XOR and complement;
- Reading a bit value at a given index;
- Setting bits value at given indices; and
- Replicating a byte a given number of times.

> ``
> andByteString, orByteString, xorByteString, complementByteString, readBit, writeBits, replicateByte
> ``

Those in CIP-0123 are:

- Bit shifts and rotations
- Counting the number of set bits (popcount)
- Finding the first set bit

> ``
> shiftByteString
> rotateByteString
> countSetBits
> findFirstSetBit
> ``


and those in CIP-0127 are:

- [RIPEMD-160 hashing](https://homes.esat.kuleuven.be/~bosselae/ripemd160/pdf/AB-9601/AB-9601.pdf)

> ``
> ripemd_160
> ``


The new primitives will not be enabled on chain until a parameter update action with appropriate cost model settings is also enacted.  This will be submitted via a separate governance action.  


## Consistency with Guardrails


The text of the guardrails states:


*“The hard fork initiation action requires both a new major and a new minor protocol version to be specified as positive integers.  As the result of a hard fork, new updatable protocol parameters may be introduced. Guardrails may be defined for these parameters, which will take effect following the hard fork. Existing updatable protocol parameters may also be deprecated by the hard fork, in which case the guardrails become obsolete for all future changes.”*

All these conditions apply to this proposal.  The upgrade will have major protocol version 10 and minor protocol version 0.  No new updatable parameters will be introduced or deprecated.

The relevant guardrails in the Interim Constitution are: 




* **HARDFORK-01:** “The major protocol version must be the same as or one greater than the major version that will be enacted immediately prior to this change. If the major protocol version is one greater, then the minor protocol version must be zero*.” 
*
* **HARDFORK-02:** “The minor protocol version must be no less than the minor version that will be enacted immediately prior to this change.” 

* **HARDFORK-03:** “At least one of the protocol versions (major or minor or both) must change.” 

* **HARDFORK-04** “At least 85% of stake pools by active stake should have upgraded to a Cardano node version that is capable of processing the rules associated with the new protocol version.” 

* **HARDFORK-05** “Any new updatable protocol parameters that are introduced with a hard fork must be included in this Appendix and suitable guardrails defined for those parameters.” 

* **HARDFORK-06:** “Settings for any new protocol parameters that are introduced with a hard fork must be included in the appropriate Genesis file.” 

* **HARDFORK-07:** “Any deprecated protocol parameters must be indicated in this Appendix.” 

* **HARDFORK-08:** “New Plutus versions must be supported by a version-specific Plutus cost model that covers each primitive that is available in the new Plutus version.”

* **INTERIM-01**: “To provide sufficient time for DReps to register and campaign and for Ada holders to choose their initial voting delegations, at least 18 epochs (90 days, or approximately 3 months) must elapse after the Chang hard fork before the subsequent hard fork can be ratified. Once the subsequent hard fork is enacted, DRep voting can occur as described in CIP-1694.”

This governance action is consistent with all nine guardrails, provided attention is paid to HARDFORK-04 and INTERIM-01, as described below.  None of these guardrails can be checked by the automated guardrails script.


### Consistency with HARDFORK-01: 

The protocol version will be changed from major version 9 (minor version 0) to major version 10 (minor version 0).


### Consistency with HARDFORK-02: 

The minor protocol version will be unchanged (0 in both cases).


### Consistency with HARDFORK-03: 

The major protocol version will change from 9 to 10.


### Consistency with HARDFORK-04: 

The stake pool upgrade status will need to be determined prior to ratification of the governance action.  If insufficient stake pools by stake have been upgraded, the action should not be ratified.


### Consistency with HARDFORK-05: 

No new updatable protocol parameters will be introduced by this hard fork, so the guardrails do not need to be updated.


### Consistency with HARDFORK-06: 

No new protocol parameters will be introduced by this hard fork, so a new Genesis file is not needed.


### Consistency with HARDFORK-07: 

No protocol parameters are deprecated by this hard fork.


### Consistency with HARDFORK-08: 

No new Plutus version is introduced.  The new Plutus primitives are provided as part of Plutus v3.

### Consistency with INTERIM-01: 

This guardrail applies to Mainnet rather than Preview.


## Reversion Plan

The hard fork represents a permanent change to the on-chain ledger rules.  Reversion is only possible in extreme circumstances, using the disaster recovery process that is described in [CIP-0135](https://github.com/cardano-foundation/CIPs/blob/master/CIP-0135/README.md).

## References

- [Public Public from the Parameter Committee Describing the Proposal](https://forum.cardano.org/t/oct-10-2024-voltaire-era-parameter-committee-intermediate-state/137361)
- [CIP-0122](https://github.com/cardano-foundation/CIPs/tree/master/CIP-0122)
- [CIP-0123](https://github.com/cardano-foundation/CIPs/tree/master/CIP-0123)
- [CIP-0127](https://github.com/cardano-foundation/CIPs/tree/master/CIP-0127)
- [CIP-0135](https://github.com/cardano-foundation/CIPs/tree/master/CIP-0135)
- [Full List of Ledger Fixes for Protocol Version 10](https://github.com/IntersectMBO/cardano-ledger/issues/4572)
- [RIPEMD-160 hashing](https://homes.esat.kuleuven.be/~bosselae/ripemd160/pdf/AB-9601/AB-9601.pdf)

## Authors


