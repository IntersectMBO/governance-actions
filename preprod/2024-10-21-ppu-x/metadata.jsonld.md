## Title

Plutus V3 Cost Model Parameter Changes Prior to Chang#2

## Abstract

We propose to update the Plutus V3 Cost Model via a Parameter Update governance action to enable the new Plutus primitives that will be available following the Chang #2 hard fork (to Protocol Version 10).  Existing Plutus cost model settings will not be changed.  Note that the primitives will not be enabled in Protocol version 9 (as enabled by the Chang hard fork).

## Motivation

Following the hard fork to Protocol Version 10, new Plutus primitives will be available. This governance action provides cost model settings so that these primitives can be used following the Chang#2 hard fork.

## Rationale

## Technical Evaluation


This governance action has been assessed and approved by Intersect’s Parameter Committee on 2024-10-10, as evidenced by [this post in the Cardano Forum](https://forum.cardano.org/t/oct-10-2024-voltaire-era-parameter-committee-intermediate-state/137361)


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



## New Plutus Primitives that will be Enabled


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

Each of the new primitives has both CPU and memory unit cost models.


## Differences to the current Plutus cost model that will be enacted by this governance action.


The full difference from the current on-chain Plutus V3 cost model settings is shown below:


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


## Reversion Plan


The changes can be reversed if necessary by reinstating the current set of Plutus cost model values, omitting any settings for the new primitives.

## References

- [Public Public from the Parameter Committee Describing the Proposal](https://forum.cardano.org/t/oct-10-2024-voltaire-era-parameter-committee-intermediate-state/137361)
- [CIP-0122](https://github.com/cardano-foundation/CIPs/tree/master/CIP-0122)
- [CIP-0123](https://github.com/cardano-foundation/CIPs/tree/master/CIP-0123)
- [CIP-0127](https://github.com/cardano-foundation/CIPs/tree/master/CIP-0127)
- [RIPEMD-160 hashing](https://homes.esat.kuleuven.be/~bosselae/ripemd160/pdf/AB-9601/AB-9601.pdf)

## Authors


