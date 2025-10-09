# Title

Plutus Parameter Changes (Part 1)

# Abstract

Intersect's Parameter Committee proposes a Parameter Update governance action that will:

1) increase Plutus script memory unit limits to allow greater flexibility for DApp developers;

2) update the Plutus V2 Cost Model to enable new Plutus primitives that were previously introduced in Plutus V3 only.

No other protocol parameters or Plutus cost model setting will be changed.

This represents the first part of two linked increases to the Plutus memory limits.

# Motivation

The update is motivated by two issues:

1) Community members have expressed a desire to increase the Plutus script memory unit limits to simplify DApp development and enhance scalability  - see [PCP-003](https://forum.cardano.org/t/pcp-003-max-tx-ex-mem-pilanningham/125506).

2) The Plutus team wish to provide more consistency for developers between Plutus V2 and Plutus V3.

This proposal deals with both these issues.

# Rationale

Intersect's Parameter Committee proposes to update the Plutus memory unit limits (`maxTxExecutionUnits[memory]` and `maxBlockExecutionUnits[memory]`) to enable more work to be done by a Plutus script. It also proposes to enable conversions between byte strings and integers in Plutus V2 (previously only available in Plutus V3).  This will improve consistency between Plutus versions.

## Technical Evaluation

The changes described in this governance action have been recommended by Intersect's Parameter Committee on 2025-05-08, and subsequently ratified by Intersect's Technical Steering Committee on 2025-XX-XX.


### Functionality

As described below, the main effect of the update will be to enable more work to be done by Plutus scripts within a single block. This removes or reduces pain points for DApp developers and users.

Moreover, 2 new Plutus v2 primitives will be enabled following this governance action via the revised Plutus v2 cost model that were previously only available in Plutus V3.   No changes will be made to the cost model values for any existing Plutus V2 primitives or to the Plutus V1 and V3 cost models.

### Security

No specific security concerns are raised by this change.  Performance results indicate that Praos timing guarantees will be maintained following this change.

### Performance

There is no impact on overall performance or timing guarantees from increasing `maxTxExecutionUnits[memory]`.  The impact on overall performance from increasing `maxBlockExecutionUnits[memory]` has been evaluated by IOE's Performance and Tracing team using node versions [10.2](https://updates.cardano.intersectmbo.org/reports/2025-03-execbudget-memory-10.2/) and [10.3](https://updates.cardano.intersectmbo.org/reports/2025-05-execbudget-memory-10.3/).  These benchmarking results indicate that there is adequate headroom in critical timing metrics to allow the proposed increase.

In line with [Plutus benchmarking procedures](https://github.com/IntersectMBO/plutus/blob/master/plutus-core/cost-model/CostModelGeneration.md), [standard benchmarking has been undertaken on a reference machine](https://github.com/IntersectMBO/plutus/blob/master/plutus-core/cost-model/data/benching-conway.csv) to determine the settings for `integerToByteString` and  `byteStringToInteger`.  Since Plutus script execution times and memory usage are bounded by `maxBlockExecutionUnits[steps/memory]` and `maxTxExecutionUnits[steps/memory]`, there will be no overall performance impact on the node from the new cost model settings for these primitives.

### Sustainability

The upgrade:

1) reduces a pain point when building Plutus scripts (reducing the need for manual tweaking to meet per-transaction limits);

2) allows more work to be done by an existing Plutus script;

3) potentially allows more Plutus scripts to execute per block, if the work remains the same;

4) provides new Plutus V2 functionality for datatype conversions that aligns with that for Plutus V3.

These upgrades ensure decentralized applications on Cardano can scale sustainably.

## Plutus Memory Unit Changes

Per-transaction and per-block Plutus memory unit limits will both be increased by the maximum recommended by the guardrails. This will ensure that the same number of maximally sized transactions (4) will fit into a single block.

1) `maxTxExecutionUnits[memory]` will be increased from 14,000,000 memory units to 16,500,000 memory units (a 17.9% increase);

2) `maxBlockExecutionUnits[memory]` will be increased from 62,000,000 memory units to 72,000,000 memory units (an 18.1% increase).

### Impact of the Change to Memory Unit Limits

The Plutus memory unit settings serve to limit the total execution time that a Plutus script can take, as well as the memory usage.  Measurements show that this is a more significant restriction on total Plutus execution time than `maxTxExecutionUnits[steps]` and `maxBlockExecutionUnits[steps]`. The limits have been increased historically, but were restricted by the need to adhere to Praos security guarantees.  New benchmarking results following improvements to the Plutus interpreter and elsewhere indicate that there is now sufficient headroom to increase these limits.


### Subsequent Changes

This governance action represents the first part of a proposed two-step increase of 25% to both `maxTxExecutionUnits[memory]` and `maxBlockExecutionUnits[memory]`.  A subsequent governance action will propose to increase `maxTxExecutionUnits[memory]` to 17,500,000 units and `maxBlockExecutionUnits[memory]` to 77,500,000 units.  To comply with the current guardrails, that governance action would need to be enacted no less than 2 epochs after the enactment of this proposal.

## Plutus Primitives that will be Enabled in Plutus V2 after this governance action

Two new primitives will be enabled in Plutus V2 that were previously available only in Plutus V3.  These primitives allow conversions between integers and byte strings in either direction.

``
integerToByteString,
byteStringToInteger
``

### Differences to the current Plutus cost models that will be enacted by this governance action.

Each of the two new primitives introduces both CPU and memory unit cost model settings for Plutus V2.

The full difference from the current on-chain Plutus V2 cost model settings is shown below.  These changes are all additions to the existing Plutus V2 cost model.  There are no changes to the Plutus V1 or V3 cost models.

``
    "integerToByteString-cpu-arguments-c0": 1293828,
    "integerToByteString-cpu-arguments-c1": 28716,
    "integerToByteString-cpu-arguments-c2": 63,
    "integerToByteString-memory-arguments-intercept": 0,
    "integerToByteString-memory-arguments-slope": 1,
    "byteStringToInteger-cpu-arguments-c0": 1006041,
    "byteStringToInteger-cpu-arguments-c1": 43623,
    "byteStringToInteger-cpu-arguments-c2": 251,
    "byteStringToInteger-memory-arguments-intercept": 0,
    "byteStringToInteger-memory-arguments-slope": 1
``


## Consistency with Guardrails


The relevant guardrails in the Cardano Constitution are:

- **PARAM-03a**: Critical protocol parameters require an SPO vote in addition to a DRep vote: SPOs must say "yes" with a collective support of more than 50% of all active block production stake. This is enforced by the Guardrails on the stake pool voting threshold.

- **PARAM-04a**: At least 3 months should normally pass between the publication of an off-chain proposal to change a critical protocol parameter and the submission of the corresponding on-chain governance action. This Guardrail may be relaxed in the event of a Severity 1 or Severity 2 network issue following careful technical discussion and evaluation.

- **NETWORK-01**: No individual network parameter should change more than once per two epochs.

- **NETWORK-02**: Only one network parameter should be changed per epoch unless they are directly correlated, e.g., per-transaction and per-block memory unit limits.

- **MTEU-M-01**: `maxTxExecutionUnits[memory]` must not exceed 40,000,000 units

- **MTEU-M-02**: `maxTxExecutionUnits[memory]` must not be negative

- **MTEU-M-03**: `maxTxExecutionUnits[memory]` must not be decreased

- **MTEU-M-04**: `maxTxExecutionUnits[memory]` should not be increased by more than 2,500,000 units in any epoch

- **MBEU-M-01**: `maxBlockExecutionUnits[memory]` must not exceed 120,000,000 units

- **MBEU-M-02**: `maxBlockExecutionUnits[memory]` must not be negative

- **MBEU-M-03**: `maxBlockExecutionUnits[memory]` should not be changed (increased or decreased) by more than 10,000,000 units in any epoch

- **MBEU-M-04a**: The impact of any change to maxBlockExecutionUnits[memory] must be confirmed by detailed benchmarking/simulation and not exceed the requirements of the block diffusion/propagation time budgets, as also impacted by `maxBlockExecutionUnits[steps]` and `maxBlockBodySize`. Any increase must also consider previously agreed future requirements for the total block size (`maxBlockBodySize`) measured against the total block diffusion target of 3s with 95% block propagation within 5s. Future Plutus performance improvements may allow the per-block memory limit to be increased, but must be balanced against the overall diffusion limits as specified in the previous sentence, and future requirements

- **MEU-M-01**: `maxBlockExecutionUnits[memory]` must not be less than `maxTxExecutionUnits[memory]`

- **PCM-01:** Cost model values must be set by benchmarking on a reference architecture

- **PCM-02:** The cost model must be updated if new primitives are introduced or a new Plutus language version is added

- **PCM-03:** Cost model values should not be negative

This governance action is consistent with all these guardrails.  PARAM-03a, MTEU-M-01, MTEU-M-02, MBEU-M-01, and MBEU-M-02 can be checked by the automated guardrails script.

### Consistency with PARAM-03a

`maxBlockExecutionUnits[memory]` is a critical system parameter. The ledger rules require an SPO vote to change this setting; the corresponding SPO voting threshold then automatically enforces the voting requirement.

### Consistency with PARAM-04a

`maxBlockExecutionUnits[memory]` is a critical system parameter. The off-chain proposal was [published](XX) on 2025-XX-XX. It does not relate to a Severity 1 or Severity 2 network issue, so the guardrail cannot be relaxed.

### Consistency with NETWORK-01

The previous linked parameter update did not change either `maxTxExecutionUnits[memory]` or `maxBlockExecutionUnits[memory]`, and was enacted more than two epochs before this update would be enacted.

### Consistency with NETWORK-02

`maxTxExecutionUnits[memory]` and `maxBlockExecutionUnits[memory]` are related network parameters, and are explicitly identified as such in the guardrail.

### Consistency with MTEU-M-01

The proposed setting of `maxTxExecutionUnits[memory]` is less than 40,000,000 units.

### Consistency with MTEU-M-02

The proposed setting of `maxTxExecutionUnits[memory]` is positive.

### Consistency with MTEU-M-03

The proposed setting  of `maxTxExecutionUnits[memory]` is greater than the current setting of `maxTxExecutionUnits[memory]`.

### Consistency with MTEU-M-04

The proposed setting  of `maxTxExecutionUnits[memory]` represents an increase of 2,500,000 units, the maximum that is recommended by the guardrail.

### Consistency with MBEU-M-01

The proposed setting of `maxBlockExecutionUnits[memory]` is less than 120,000,000 units.

### Consistency with MBEU-M-02

The proposed setting  of `maxBlockExecutionUnits[memory]` is positive.

### Consistency with MBEU-M-03

The proposed setting of `maxBlockExecutionUnits[memory]` represents an increase of 10,000,000 units, the maximum that is recommended by the guardrail.

### Consistency with MBEU-M-04a

Benchmarking confirms that the performance should be within the stated bounds, and that there is scope for further increases.

### Consistency with MEU-M-01

The per-block limit (`maxBlockExecutionUnits[memory]`) is significantly greater than the per-transaction limit (`maxTxExecutionUnits[memory]`).

### Consistency with PCM-01

The new cost model settings have been validated by the IOE Plutus Core developer team against the same reference machine and implementation as the existing mainnet Plutus cost model settings. The same settings will be used for both Plutus V2 and Plutus V3.


### Consistency with PCM-02

The Plutus V2 cost model has been updated because new Plutus conversion primitives will be introduced in Plutus V2 that were previously only available in Plutus V3.


### Consistency with PCM-03

None of the new cost model values is negative.

## Reversion Plan

This change has minimal or no effect on overall network performance, so it is unlikely to need to be reverted.  The change to `maxTxExecutionUnits[memory]` could be reverted, if necessary, to its current setting.  However, the change can only sensibly be reversed if no transactions or scripts have taken advantage of it: reverting `maxTxExecutionUnits[memory]` to its present setting would cause disruption to any DApp developers and users that have exploited it, requiring them to rewrite or reconfigure their Plutus scripts.  Reverting this setting without also reverting `maxBlockExecutionUnits[memory]` would increase the number of full-sized Plutus script transactions that could be processed in a single block.  This is unlikely to be harmful.

The change to `maxBlockExecutionUnits[memory]` could be reverted to its current setting if network performance showed an unexpectedly negative impact.  Reverting it without also reverting `maxTxExecutionUnits[memory]` could, however, reduce the number of full-sized Plutus script transactions that could be processed in a single block.

The changes to the Plutus V2 cost model  (`integerToByteString`, `byteStringToInteger`) can be reversed if necessary by reinstating the current set of Plutus cost model values, omitting any settings for the new primitives.  In this case, the new primitives would no longer be available for use in Plutus V2 scripts.

# References

- [Parameter Change Proposal PCP-003](https://forum.cardano.org/t/pcp-003-max-tx-ex-mem-pilanningham/125506)
- [Parameter Change Proposal PCP-004](https://forum.cardano.org/t/pcp-004-XX/XX)
- [Public Survey Results on Increase to Memory Unit Limits](https://cardanocommunity.typeform.com/report/rjRd2Fn0/UYLpnsukGSDRPJ4r)
- [Benchmarking Results supporting increase in per-tx and per-block limits - Node version 10.2](https://updates.cardano.intersectmbo.org/reports/2025-03-execbudget-memory-10.2/)
- [Differences to the Plutus V2 Cost Model for new primitives](https://www.diffchecker.com/Os8iliEp/)
- [Overview of the Plutus Primitive Benchmarking Process](https://github.com/IntersectMBO/plutus/blob/master/doc/cost-model-overview/cost-model-overview.pdf)
- [Generating and Updating the Plutus Cost Model](https://github.com/IntersectMBO/plutus/blob/master/plutus-core/cost-model/CostModelGeneration.md)
- [Plutus Primitive Benchmarking Code](https://github.com/IntersectMBO/plutus/tree/master/plutus-core/cost-model/create-cost-model)
- [Plutus Primitive Performance Results (CSV)](https://github.com/IntersectMBO/plutus/blob/master/plutus-core/cost-model/data/benching-conway.csv)
- [Technical Steering Committee Meeting Minutes Recommending Change](https://committees.docs.intersectmbo.org/intersect-technical-steering-committee/meeting-minutes/2025-tsc-meeting-minutes/meeting-minutes-october-01-2025)
- [Cardano Forum Post Proposing Change](https://forum.cardano.org/t/intention-to-changeplutus-script-memory-unit-limits-maxtxexecutionunits-memory-and-maxblockexecutionunits-memory/147270)

# Authors

{
  "name": "Ryan test 😎",
  "witness": {
    "witnessAlgorithm": "ed25519",
    "publicKey": "38f01b9b41e7ea4bca5c093e472fa01198ebaf09a55a9e97f7431c3a06df5103",
    "signature": "778b3fbb91fbc5b03124174cd7f4e00c7c1b598369d76700dc8527b78a92255d5428530647fffd6feb5ddeda6810a4c59770510bab73d58d54029b91cee9e406"
  }
}
