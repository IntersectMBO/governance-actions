# Title

Plutus V3 Cost Model Parameter Changes Prior to Chang#2

# Abstract

We propose to update the Plutus V3 Cost Model via a Parameter Update governance action to enable the new Plutus primitives that will be available following the Chang#2 hard fork (to Protocol Version 10).  Existing Plutus cost model settings will not be changed.  Note that the primitives will not be enabled in Protocol version 9 (as enabled by the Chang hard fork).

# Motivation

Following the hard fork to Protocol Version 10, 12 new Plutus primitives will be available for bitwise and cryptographic operations. This governance action provides cost model settings so that these primitives can be used following the Chang#2 hard fork.

# Rationale

We propose to update the Plutus V3 Cost Model via a Parameter Update governance action to enable the new Plutus primitives that will be available following the Chang #2 hard fork (to Protocol Version 10).  Existing Plutus cost model settings will not be changed.  Note that the new primitives will not be enabled in Protocol version 9 (as enabled by the Chang hard fork). 

## Technical Evaluation

The changes described in this governance action have been recommended by Intersect’s Parameter Committee on 2024-10-10, as evidenced by [this post in the Cardano Forum](https://forum.cardano.org/t/oct-10-2024-voltaire-era-parameter-committee-intermediate-state/137361), and subsequently ratified unanimously by Intersect's Technical Steering Committee on 2024-10-18.


### Functionality

As described below, 12 new Plutus v3 primitives will be enabled following the Chang#2 hard fork. These will provide new bitwise and cryptographic hashing functions that have a variety of uses, and which will enhance interoperability with BitCoin and Ethereum.  The revised Plutus v3 cost model will enable those new primitives.  The changes are all additions to the existing Plutus V3 cost model.  No changes will be made to the cost model values for any existing Plutus primitives or to the Plutus V1 and V2 cost nodels.
### Security


No specific security concerns are raised by this change. A security report will be provided for the new Plutus primitives to support the Chang#2 hard fork.


### Performance

Standard benchmarking has been undertaken on a reference machine to determine these cost model settings and align them with existing Plutus primitives.  Since Plutus script execution times and memory usage are bounded by `maxBlockExecutionUnits[steps/memory]` and `maxTxExecutionUnits[steps/memory]`, there will be no overall performance impact on the node from these cost model settings.

### Sustainability

The upgrade provides new Plutus functionality that will enhance its bitwise and cryptographic capabilities and provide better interoperability with BitCoin and Ethereum.

## New Plutus Primitives that will be Enabled after the Chang#2 Hard Fork


The new Plutus primitives are defined in three CIPs: [CIP-0122](https://github.com/cardano-foundation/CIPs/tree/master/CIP-0122), [CIP-0123](https://github.com/cardano-foundation/CIPs/tree/master/CIP-0123) and [CIP-0127](https://github.com/cardano-foundation/CIPs/tree/master/CIP-0127).

### CIP-0122
Bitwise operations, both over fixed-width and variable-width blocks of bits, have a range of uses, including data structures (especially succinct ones) and cryptography. Currently, operations on individual bits in Plutus Core are difficult, or outright impossible, while also keeping within the tight constraints required onchain. While it is possible to some degree to work with individual bytes over BuiltinByteStrings, this isn't sufficient, or efficient, when bit maniputations are required.

The new Plutus primitives defined by CIP-0122 are:

- Bitwise logical AND, OR, XOR and complement;
- Reading a bit value at a given index;
- Setting bits value at given indices; and
- Replicating a byte a given number of times.

> ``
> andByteString, orByteString, xorByteString, complementByteString, readBit, writeBits, replicateByte
> ``

### CIP-0123
The new bitwise operations that are defined in CIP-0123 extend the set that is provided by CIP-0123 to provide a usefully 'complete' set of bitwise operations.

The new Plutus primitives defined by CIP-0123 are:

- Bit shifts and rotations
- Counting the number of set bits (popcount)
- Finding the first set bit

> ``
> shiftByteString,
> rotateByteString,
> countSetBits,
> findFirstSetBit
> ``


### CIP-0127
The integration of the ECDSA and Schnorr signatures over the secp256k1 curve into Plutus was a significant step towards interoperability with the Ethereum and Bitcoin ecosystems. However, full compatibility is still impossible due to the absence of the RIPEMD-160 hashing algorithm in the Plutus interpreter. This is a fundamental component of Bitcoin's cryptographic framework.

Adding RIPEMD-160 support to Plutus enhances the potential for cross-chain solutions between Cardano and Bitcoin blockchains and complements the set of primitives which are already available. It will allow for the verification of Bitcoin addresses and transactions on-chain. This addition also enables the verification of signed messages that identify the signer by the public key hash, which has not yet been witnessed on the Bitcoin blockchain.

The new Plutus primitive defined by CIP-0127 is:

- [RIPEMD-160 hashing](https://homes.esat.kuleuven.be/~bosselae/ripemd160/pdf/AB-9601/AB-9601.pdf)

> ``
> ripemd_160
> ``

Each of the new primitives has both CPU and memory unit cost models.


## Differences to the current Plutus cost model that will be enacted by this governance action.


The full difference from the current on-chain Plutus V3 cost model settings is shown below.  These changes are all additions to the existing Plutus V3 cost model.  There are no changes to the Plutus V1 or V2 cost models.


    "andByteString": {
       "cpu": {
           "arguments": {
               "intercept": 100181,
               "slope1": 726,
               "slope2": 719
           },
           "type": "linear_in_y_and_z"
       },
       "memory": {
           "arguments": {
               "intercept": 0,
               "slope": 1
           },
           "type": "linear_in_max_yz"
       }
    },
    "orByteString": {
       "cpu": {
           "arguments": {
               "intercept": 100181,
               "slope1": 726,
               "slope2": 719
           },
           "type": "linear_in_y_and_z"
       },
       "memory": {
           "arguments": {
               "intercept": 0,
               "slope": 1
           },
           "type": "linear_in_max_yz"
       }
    },
    "xorByteString": {
       "cpu": {
           "arguments": {
               "intercept": 100181,
               "slope1": 726,
               "slope2": 719
           },
           "type": "linear_in_y_and_z"
       },
       "memory": {
           "arguments": {
               "intercept": 0,
               "slope": 1
           },
           "type": "linear_in_max_yz"
       }
    },
    "complementByteString": {
       "cpu": {
           "arguments": {
              "intercept": 107878,
               "slope": 680
           },
           "type": "linear_in_x"
       },
       "memory": {
           "arguments": {
              "intercept": 0,
               "slope": 1
           },
           "type": "linear_in_x"
       }
    },
    "readBit": {
       "cpu": {
          "arguments": 95336,
           "type": "constant_cost"
       },
       "memory": {
          "arguments": 1,
           "type": "constant_cost"
       }
    },
    "writeBits": {
       "cpu": {
           "arguments": {
               "intercept": 281145,
               "slope": 18848
           },
           "type": "linear_in_y"
       },
       "memory": {
           "arguments": {
               "intercept": 0,
               "slope": 1
           },
           "type": "linear_in_x"
       }
    },
    "replicateByte": {
       "cpu": {
           "arguments": {
               "intercept": 180194,
               "slope": 159
           },
           "type": "linear_in_x"
       },
       "memory": {
           "arguments": {
               "intercept": 1,
               "slope": 1
           },
           "type": "linear_in_x"
       }
    },
    "shiftByteString": {
       "cpu": {
           "arguments": {
               "intercept": 158519,
               "slope": 8942
           },
           "type": "linear_in_x"
       },
       "memory": {
           "arguments": {
               "intercept": 0,
               "slope": 1
           },
           "type": "linear_in_x"
       }
    },
    "rotateByteString": {
       "cpu": {
           "arguments": {
               "intercept": 159378,
               "slope": 8813
           },
           "type": "linear_in_x"
       },
       "memory": {
           "arguments": {
               "intercept": 0,
               "slope": 1
           },
           "type": "linear_in_x"
       }
    },
    "countSetBits": {
       "cpu": {
           "arguments": {
               "intercept": 107490,
               "slope": 3298
           },
           "type": "linear_in_x"
       },
       "memory": {
           "arguments": 1,
           "type": "constant_cost"
       }
    },
    "findFirstSetBit": {
       "cpu": {
           "arguments": {
               "intercept": 106057,
               "slope": 655
           },
           "type": "linear_in_x"
       },
       "memory": {
           "arguments": 1,
           "type": "constant_cost"
       }
    },
    "ripemd_160": {
       "cpu": {
           "arguments": {
               "intercept": 1964219,
               "slope": 24520
           },
           "type": "linear_in_x"
       },
       "memory": {
           "arguments": 3,
           "type": "constant_cost"
       }
    }


## Consistency with Guardrails


The relevant guardrails in the Interim Constitution are:


- **PCM-01:** "Cost model values must be set by benchmarking on a reference architecture"
- **PCM-02:** "The cost model must be updated if new primitives are introduced or a new Plutus language version is added"
- **PCM-03:** "Cost model values should not be negative"


This governance action is consistent with all three guardrails.  None of these guardrails can be checked by the automated guardrails script.


### Consistency with PCM-01

The new cost model settings have been validated by the IO Engineering Plutus Core developer team against the same reference machine and implementation as the existing mainnet Plutus cost model settings.


### Consistency with PCM-02

The cost model has been updated because new Plutus primitives will be introduced following the upgrade to Protocol Version 10.


### Consistency with PCM-03

None of the new cost model values is negative.




## Reversion Plan


The changes can be reversed if necessary by reinstating the current set of Plutus cost model values, omitting any settings for the new primitives.

# References

- [Public Cardano Forum Post from the Parameter Committee Describing the Proposal](https://forum.cardano.org/t/oct-10-2024-voltaire-era-parameter-committee-intermediate-state/137361)
- [CIP-0122](https://github.com/cardano-foundation/CIPs/tree/master/CIP-0122)
- [CIP-0123](https://github.com/cardano-foundation/CIPs/tree/master/CIP-0123)
- [CIP-0127](https://github.com/cardano-foundation/CIPs/tree/master/CIP-0127)
- [RIPEMD-160 hashing](https://homes.esat.kuleuven.be/~bosselae/ripemd160/pdf/AB-9601/AB-9601.pdf)

# Authors


