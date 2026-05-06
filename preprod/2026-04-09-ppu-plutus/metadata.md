# Markdown Representation of metadata.jsonld

## Title

Update Plutus Cost Models

## Abstract

Intersect's Parameter Committee proposes to update the Plutus V3 Cost Model via a Parameter Update governance action to enable the new Plutus primitives that will be available following the van Rossem hard fork (to Protocol Version 11), to enable all Plutus primitives in Plutus V1 and V2 as well as Plutus V3, and to change settings for some existing Plutus primitives. Note that the new primitives will not be enabled in Protocol version 10, but only following the enactment of the hard fork to Protocol Version 11.  However, the changes for existing primitives will happen immediately on enactment of this governance action.

## Motivation

This governance action is motivated by three objectives:  
First, following the hard fork to Protocol Version 11, new Plutus primitives become available. This proposal provides the necessary cost model settings so that these primitives can be used following the van Rossem hard fork.  
Second, the action also ensures that Plutus primitives previously limited to Plutus V3 are available in Plutus V1 and Plutus V2.  
Third, the action also updates the settings for some existing primitives based on benchmarking data.

## Rationale

### Technical Evaluation

The changes described in this governance action have been recommended by Intersect's Parameter Committee on 2026-03-05 and 2026-03-19.

### Testnet Deployments

An equivalent change has been enacted on the SanchoNet testnet in March 2026 (`gov_action1kundw4x5cn2s85rmkccx7lkfgamgmy2w4p0kx87w4uh2ku52rwesqkj3cwm`).

An equivalent change has been enacted on the Preview testnet in April 2026 (`gov_action1q9xr9etnglg3gazzzrsexj3qsnzaqpf2yvfpwrvnwk9l64n089tqqqg02j9`).

### Functionality

As described below, the main effect of the update will be to enable new Plutus primitives in Plutus V1, V2 and V3 and to ensure consistency between Plutus V1, V2 and V3. It will also make changes to some existing Plutus primitives.

### Security

No specific security concerns are raised by this change.

### Performance

[Benchmarking results](https://github.com/IntersectMBO/plutus/actions/workflows/cost-model-benchmark.yml) have been obtained for the new primitives to ensure the validity of the cost models.  
Before deployment on mainnet, each new primitive will also be benchmarked to ensure that Praos timing guarantees are preserved. Changes to existing primitives have also been benchmarked.

### Sustainability

The upgrade introduces new Plutus primitives for:

1. cryptography  
2. list manipulation  
3. array operations  
4. value and data manipulation

These upgrades enhance the capabilities of Plutus scripts, allowing more efficient computation and inter-chain working.

The cost model changes to existing Plutus primitives are based on benchmarking data.

### Consistency with Guardrails

The relevant guardrails in the Cardano Constitution are:

* **PCM-01:** "Cost model values must be set by benchmarking on a reference architecture"  
* **PCM-02:** "The cost model must be updated if new primitives are introduced or a new Plutus language version is added"  
* **PCM-03:** "Cost model values should not be negative"

This governance action is consistent with all three guardrails.  None of these guardrails can be checked by the automated guardrails script.

**Consistency with PCM-01**  
The new cost model settings have been validated by the IOE Plutus Core developer team against the same reference machine and implementation as the existing mainnet Plutus cost model settings.

**Consistency with PCM-02**  
The cost model has been updated because new Plutus primitives will be introduced following the upgrade to Protocol Version 11.

**Consistency with PCM-03**  
None of the new cost model values is negative.

### New Plutus Primitives that will be Enabled

The new Plutus primitives are defined in five CIPs:

* [CIP-0109 | Modular Exponentiation Built-in for Plutus Core](https://github.com/cardano-foundation/CIPs/tree/master/CIP-0109)  
* [CIP-0132 | New Plutus Builtin dropList](https://github.com/cardano-foundation/CIPs/tree/master/CIP-0132)  
* [CIP-0133 | Plutus support for Multi-Scalar Multiplication over BLS12-381](https://github.com/cardano-foundation/CIPs/tree/master/CIP-0133)  
* [CIP-0138 | Plutus Core Builtin Type - `Array`](https://github.com/cardano-foundation/CIPs/tree/master/CIP-0138)  
* [CIP-0153](https://github.com/cardano-foundation/CIPs/tree/master/CIP-0153) [| Plutus Core Builtin Type - MaryEraValue](http://github.com/cardano-foundation/CIPs/tree/master/CIP-0153)

Those in CIP-0109 are:

* modular exponentiation - a cornerstone operation in numerous cryptographic protocols

> ``  
> expModInteger
> ``

Those in CIP-0132 are:

* dropList - drops a given number of elements from a list

> ``  
> dropList
> ``

Those in CIP-0133 are:

* multi-scalar multiplication - efficient computation of the multi-scalar multiplication over the BLS12-381 curve

> ``  
> bls12_381_G1_multiScalarMul,
> bls12_381_G2_multiScalarMul
> ``

Those in CIP-0138 are:

* array indexing - returns the element at the given index in an array, uses constant time and constant memory  
* array length - returns the length of the array, uses constant time and constant memory  
* list to array conversion - converts the argument builtin list into a builtin array, uses linear time and linear memory

> ``  
> indexArray,
> lengthOfArray,
> listToArray
> ``

and those in CIP-0153 are:

* coin insertion - returns a Mary-era Value with the Coin inserted, silently discarding any previous value  
* coin lookup - returns the quantity of a given Coin in a Mary-era Value  
* value union - merges two provided values, this operation is commutative and associative  
* value contains - compares the two Mary-era Values and determines if the first value is a superset of the second  
* value Data  - encodes a BuiltinValue as BuiltinData.  
* unValue Data - decodes a BuiltinData into a BuiltinValue  
* scale value - multiplies all token quantities in the provided value by the provided integer scale factor

> ``  
> insertCoin,
> lookupCoin,
> unionValue,
> valueContains,
> valueData,
> unValueData,
> scaleValue
``

Each of the new primitives has both CPU and memory unit cost models.

### Changes to Existing Plutus Primitives

Changes will be made to the CPU cost model for the following primitive in Plutus V1, V2 and V3:

> ``  
> equalsByteString
> ``

In addition, changes will be made to the CPU cost model for the following primitives in Plutus V3 only:

> ``  
> divideInteger,
> modInteger,
> quotientInteger,
> remainderInteger
> ``

### Differences to the current Plutus cost model that will be enacted by this governance action

The full difference from the current on-chain Plutus V1 cost model settings is shown below:

```json

  "serialiseData": {  
    "cpu": {  
      "arguments": {  
        "intercept": 955506,  
        "slope": 213312  
      },  
      "type": "linear_in_x"  
    },  
    "memory": {  
      "arguments": {  
        "intercept": 0,  
        "slope": 2  
      },  
      "type": "linear_in_x"  
    }  
  },  
    "verifyEcdsaSecp256k1Signature": {  
    "cpu": {  
      "arguments": 43053543,  
      "type": "constant_cost"  
    },  
    "memory": {  
      "arguments": 10,  
      "type": "constant_cost"  
    }  
  },  
  "verifyEd25519Signature": {  
    "cpu": {  
      "arguments": {  
        "intercept": 53384111,  
        "slope": 14333  
      },  
      "type": "linear_in_y"  
    },  
    "memory": {  
      "arguments": 10,  
      "type": "constant_cost"  
    }  
  },  
  "verifySchnorrSecp256k1Signature": {  
    "cpu": {  
      "arguments": {  
        "intercept": 43574283,  
        "slope": 26308  
      },  
      "type": "linear_in_y"  
    },  
    "memory": {  
      "arguments": 10,  
      "type": "constant_cost"  
    }  
  },  
  "integerToByteString": {  
    "cpu": {  
      "arguments": {  
        "c0": 1293828,  
        "c1": 28716,  
        "c2": 63  
      },  
      "type": "quadratic_in_z"  
    },  
    "memory": {  
      "arguments": {  
        "intercept": 0,  
        "slope": 1  
      },  
      "type": "literal_in_y_or_linear_in_z"  
    }  
  },  
  "blake2b_224": {  
    "cpu": {  
      "arguments": {  
        "intercept": 207616,  
        "slope": 8310  
      },  
      "type": "linear_in_x"  
    },  
    "memory": {  
      "arguments": 4,  
      "type": "constant_cost"  
    }  
  },  
  "bls12_381_G1_add": {  
    "cpu": {  
      "arguments": 962335,  
      "type": "constant_cost"  
    },  
    "memory": {  
      "arguments": 18,  
      "type": "constant_cost"  
    }  
  },  
  "bls12_381_G1_compress": {  
    "cpu": {  
      "arguments": 2780678,  
      "type": "constant_cost"  
    },  
    "memory": {  
      "arguments": 6,  
      "type": "constant_cost"  
    }  
  },  
  "bls12_381_G1_equal": {  
    "cpu": {  
      "arguments": 442008,  
      "type": "constant_cost"  
    },  
    "memory": {  
      "arguments": 1,  
      "type": "constant_cost"  
    }  
  },  
  "bls12_381_G1_hashToGroup": {  
    "cpu": {  
      "arguments": {  
        "intercept": 52538055,  
        "slope": 3756  
      },  
      "type": "linear_in_x"  
    },  
    "memory": {  
      "arguments": 18,  
      "type": "constant_cost"  
    }  
  },  
  "bls12_381_G1_neg": {  
    "cpu": {  
      "arguments": 267929,  
      "type": "constant_cost"  
    },  
    "memory": {  
      "arguments": 18,  
      "type": "constant_cost"  
    }  
  },  
  "bls12_381_G1_scalarMul": {  
    "cpu": {  
      "arguments": {  
        "intercept": 76433006,  
        "slope": 8868  
      },  
      "type": "linear_in_x"  
    },  
    "memory": {  
      "arguments": 18,  
      "type": "constant_cost"  
    }  
  },  
  "bls12_381_G1_multiScalarMul": {  
    "cpu": {  
      "arguments": {  
        "intercept": 321837444,  
        "slope": 25087669  
      },  
      "type": "linear_in_x"  
    },  
    "memory": {  
      "arguments": 18,  
      "type": "constant_cost"  
    }  
  },  
  "bls12_381_G1_uncompress": {  
    "cpu": {  
      "arguments": 52948122,  
      "type": "constant_cost"  
    },  
    "memory": {  
      "arguments": 18,  
      "type": "constant_cost"  
    }  
  },  
  "bls12_381_G2_add": {  
    "cpu": {  
      "arguments": 1995836,  
      "type": "constant_cost"  
    },  
    "memory": {  
      "arguments": 36,  
      "type": "constant_cost"  
    }  
  },  
  "bls12_381_G2_compress": {  
    "cpu": {  
      "arguments": 3227919,  
      "type": "constant_cost"  
    },  
    "memory": {  
      "arguments": 12,  
      "type": "constant_cost"  
    }  
  },  
  "bls12_381_G2_equal": {  
    "cpu": {  
      "arguments": 901022,  
      "type": "constant_cost"  
    },  
    "memory": {  
      "arguments": 1,  
      "type": "constant_cost"  
    }  
  },  
  "bls12_381_G2_hashToGroup": {  
    "cpu": {  
      "arguments": {  
        "intercept": 166917843,  
        "slope": 4307  
      },  
      "type": "linear_in_x"  
    },  
    "memory": {  
      "arguments": 36,  
      "type": "constant_cost"  
    }  
  },  
  "bls12_381_G2_neg": {  
    "cpu": {  
      "arguments": 284546,  
      "type": "constant_cost"  
    },  
    "memory": {  
      "arguments": 36,  
      "type": "constant_cost"  
    }  
  },  
  "bls12_381_G2_scalarMul": {  
    "cpu": {  
      "arguments": {  
        "intercept": 158221314,  
        "slope": 26549  
      },  
      "type": "linear_in_x"  
    },  
    "memory": {  
      "arguments": 36,  
      "type": "constant_cost"  
    }  
  },  
  "bls12_381_G2_multiScalarMul": {  
    "cpu": {  
      "arguments": {  
        "intercept": 617887431,  
        "slope": 67302824  
      },  
      "type": "linear_in_x"  
    },  
    "memory": {  
      "arguments": 36,  
      "type": "constant_cost"  
    }  
  },  
  "bls12_381_G2_uncompress": {  
    "cpu": {  
      "arguments": 74698472,  
      "type": "constant_cost"  
    },  
    "memory": {  
      "arguments": 36,  
      "type": "constant_cost"  
    }  
  },  
  "bls12_381_finalVerify": {  
    "cpu": {  
      "arguments": 333849714,  
      "type": "constant_cost"  
    },  
    "memory": {  
      "arguments": 1,  
      "type": "constant_cost"  
    }  
  },  
  "bls12_381_millerLoop": {  
    "cpu": {  
      "arguments": 254006273,  
      "type": "constant_cost"  
    },  
    "memory": {  
      "arguments": 72,  
      "type": "constant_cost"  
    }  
  },  
  "bls12_381_mulMlResult": {  
    "cpu": {  
      "arguments": 2174038,  
      "type": "constant_cost"  
    },  
    "memory": {  
      "arguments": 72,  
      "type": "constant_cost"  
    }  
  },  
  "keccak_256": {  
    "cpu": {  
      "arguments": {  
        "intercept": 2261318,  
        "slope": 64571  
      },  
      "type": "linear_in_x"  
    },  
    "memory": {  
      "arguments": 4,  
      "type": "constant_cost"  
    }  
  },  
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
  },  
  "expModInteger": {  
    "cpu": {  
      "arguments": {  
        "coefficient00": 607153,  
        "coefficient11": 231697,  
        "coefficient12": 53144  
      },  
      "type": "exp_mod_cost"  
    },  
    "memory": {  
      "arguments": {  
        "intercept": 0,  
        "slope": 1  
      },  
      "type": "linear_in_z"  
    }  
  },  
  "dropList": {  
    "cpu": {  
      "arguments": {  
        "intercept": 116711,  
        "slope": 1957  
      },  
      "type": "linear_in_x"  
    },  
    "memory": {  
      "arguments": 4,  
      "type": "constant_cost"  
    }  
  },  
  "lookupCoin": {  
    "cpu": {  
      "arguments": {  
        "intercept": 219951,  
        "slope": 9444  
      },  
      "type": "linear_in_z"  
    },  
    "memory": {  
      "arguments": 1,  
      "type": "constant_cost"  
    }  
  },  
  "valueContains": {  
    "cpu": {  
      "arguments": {  
        "constant": 213283,  
        "model": {  
          "arguments": {  
             "intercept": 618401,  
             "slope1": 1998,  
             "slope2": 28258  
           },  
          "type": "linear_in_x_and_y"  
        }  
      },  
      "type": "const_above_diagonal"  
    },  
    "memory": {  
      "arguments": 1,  
      "type": "constant_cost"  
    }  
  },  
  "valueData": {  
      "cpu": {  
          "arguments": {  
              "intercept": 1000,  
              "slope": 38159  
          },  
          "type": "linear_in_x"  
      },  
      "memory": {  
          "arguments": {  
              "intercept": 2,  
              "slope": 22  
          },  
          "type": "linear_in_x"  
      }  
  },  
  "unValueData": {  
      "cpu": {  
          "arguments": {  
              "c0": 1000,  
              "c1": 95933,  
              "c2": 1  
          },  
          "type": "quadratic_in_x"  
      },  
      "memory": {  
          "arguments": {  
              "intercept": 1,  
              "slope": 11  
          },  
          "type": "linear_in_x"  
      }  
  },  
  "insertCoin": {  
    "cpu": {  
      "arguments": {  
        "intercept": 356924,  
        "slope": 18413  
      },  
      "type": "linear_in_u"  
    },  
    "memory": {  
      "arguments": {  
        "intercept": 45,  
        "slope": 21  
      },  
      "type": "linear_in_u"  
    }  
  },  
  "unionValue": {  
    "cpu": {  
      "arguments": {  
        "c00": 1000,  
        "c01": 183150,  
        "c10": 172116,  
        "c11": 6  
      },  
      "type": "with_interaction_in_x_and_y"  
    },  
    "memory": {  
      "arguments": {  
        "intercept": 24,  
        "slope": 21  
      },  
      "type": "added_sizes"  
    }  
  },  
  "scaleValue": {  
    "cpu": {  
      "arguments": {  
        "intercept": 1000,  
        "slope": 277577  
      },  
      "type": "linear_in_y"  
    },  
    "memory": {  
      "arguments": {  
        "intercept": 12,  
        "slope": 21  
      },  
      "type": "linear_in_y"  
    }  
  },  
  "equalsByteString": {  
    "cpu": {  
      "arguments": {  
        "constant": 24548,  
        "intercept": 29498,  
        "slope": 38  
      },  
      "type": "linear_on_diagonal"  
    },  
    "memory": {  
      "arguments": 1,  
      "type": "constant_cost"  
    }  
  }  
```

The full difference from the current on-chain Plutus V2 cost model settings is shown below:

```json  
  "blake2b_224": {  
    "cpu": {  
      "arguments": {  
        "intercept": 207616,  
        "slope": 8310  
      },  
      "type": "linear_in_x"  
    },  
    "memory": {  
      "arguments": 4,  
      "type": "constant_cost"  
    }  
  },  
  "bls12_381_G1_add": {  
    "cpu": {  
      "arguments": 962335,  
      "type": "constant_cost"  
    },  
    "memory": {  
      "arguments": 18,  
      "type": "constant_cost"  
    }  
  },  
  "bls12_381_G1_compress": {  
    "cpu": {  
      "arguments": 2780678,  
      "type": "constant_cost"  
    },  
    "memory": {  
      "arguments": 6,  
      "type": "constant_cost"  
    }  
  },  
  "bls12_381_G1_equal": {  
    "cpu": {  
      "arguments": 442008,  
      "type": "constant_cost"  
    },  
    "memory": {  
      "arguments": 1,  
      "type": "constant_cost"  
    }  
  },  
  "bls12_381_G1_hashToGroup": {  
    "cpu": {  
      "arguments": {  
        "intercept": 52538055,  
        "slope": 3756  
      },  
      "type": "linear_in_x"  
    },  
    "memory": {  
      "arguments": 18,  
      "type": "constant_cost"  
    }  
  },  
  "bls12_381_G1_neg": {  
    "cpu": {  
      "arguments": 267929,  
      "type": "constant_cost"  
    },  
    "memory": {  
      "arguments": 18,  
      "type": "constant_cost"  
    }  
  },  
  "bls12_381_G1_scalarMul": {  
    "cpu": {  
      "arguments": {  
        "intercept": 76433006,  
        "slope": 8868  
      },  
      "type": "linear_in_x"  
    },  
    "memory": {  
      "arguments": 18,  
      "type": "constant_cost"  
    }  
  },  
  "bls12_381_G1_multiScalarMul": {  
    "cpu": {  
      "arguments": {  
        "intercept": 321837444,  
        "slope": 25087669  
      },  
      "type": "linear_in_x"  
    },  
    "memory": {  
      "arguments": 18,  
      "type": "constant_cost"  
    }  
  },  
  "bls12_381_G1_uncompress": {  
    "cpu": {  
      "arguments": 52948122,  
      "type": "constant_cost"  
    },  
    "memory": {  
      "arguments": 18,  
      "type": "constant_cost"  
    }  
  },  
  "bls12_381_G2_add": {  
    "cpu": {  
      "arguments": 1995836,  
      "type": "constant_cost"  
    },  
    "memory": {  
      "arguments": 36,  
      "type": "constant_cost"  
    }  
  },  
  "bls12_381_G2_compress": {  
    "cpu": {  
      "arguments": 3227919,  
      "type": "constant_cost"  
    },  
    "memory": {  
      "arguments": 12,  
      "type": "constant_cost"  
    }  
  },  
  "bls12_381_G2_equal": {  
    "cpu": {  
      "arguments": 901022,  
      "type": "constant_cost"  
    },  
    "memory": {  
      "arguments": 1,  
      "type": "constant_cost"  
    }  
  },  
  "bls12_381_G2_hashToGroup": {  
    "cpu": {  
      "arguments": {  
        "intercept": 166917843,  
        "slope": 4307  
      },  
      "type": "linear_in_x"  
    },  
    "memory": {  
      "arguments": 36,  
      "type": "constant_cost"  
    }  
  },  
  "bls12_381_G2_neg": {  
    "cpu": {  
      "arguments": 284546,  
      "type": "constant_cost"  
    },  
    "memory": {  
      "arguments": 36,  
      "type": "constant_cost"  
    }  
  },  
  "bls12_381_G2_scalarMul": {  
    "cpu": {  
      "arguments": {  
        "intercept": 158221314,  
        "slope": 26549  
      },  
      "type": "linear_in_x"  
    },  
    "memory": {  
      "arguments": 36,  
      "type": "constant_cost"  
    }  
  },  
  "bls12_381_G2_multiScalarMul": {  
    "cpu": {  
      "arguments": {  
        "intercept": 617887431,  
        "slope": 67302824  
      },  
      "type": "linear_in_x"  
    },  
    "memory": {  
      "arguments": 36,  
      "type": "constant_cost"  
    }  
  },  
  "bls12_381_G2_uncompress": {  
    "cpu": {  
      "arguments": 74698472,  
      "type": "constant_cost"  
    },  
    "memory": {  
      "arguments": 36,  
      "type": "constant_cost"  
    }  
  },  
  "bls12_381_finalVerify": {  
    "cpu": {  
      "arguments": 333849714,  
      "type": "constant_cost"  
    },  
    "memory": {  
      "arguments": 1,  
      "type": "constant_cost"  
    }  
  },  
  "bls12_381_millerLoop": {  
    "cpu": {  
      "arguments": 254006273,  
      "type": "constant_cost"  
    },  
    "memory": {  
      "arguments": 72,  
      "type": "constant_cost"  
    }  
  },  
  "bls12_381_mulMlResult": {  
    "cpu": {  
      "arguments": 2174038,  
      "type": "constant_cost"  
    },  
    "memory": {  
      "arguments": 72,  
      "type": "constant_cost"  
    }  
  },  
  "keccak_256": {  
    "cpu": {  
      "arguments": {  
        "intercept": 2261318,  
        "slope": 64571  
      },  
      "type": "linear_in_x"  
    },  
    "memory": {  
      "arguments": 4,  
      "type": "constant_cost"  
    }  
  },  
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
  },  
  "expModInteger": {  
    "cpu": {  
      "arguments": {  
        "coefficient00": 607153,  
        "coefficient11": 231697,  
        "coefficient12": 53144  
      },  
      "type": "exp_mod_cost"  
    },  
    "memory": {  
      "arguments": {  
        "intercept": 0,  
        "slope": 1  
      },  
      "type": "linear_in_z"  
    }  
  },  
  "dropList": {  
    "cpu": {  
      "arguments": {  
        "intercept": 116711,  
        "slope": 1957  
      },  
      "type": "linear_in_x"  
    },  
    "memory": {  
      "arguments": 4,  
      "type": "constant_cost"  
    }  
  },  
  "indexArray": {  
    "cpu": {  
      "arguments": 232010,  
      "type": "constant_cost"  
    },  
    "memory": {  
      "arguments": 32,  
      "type": "constant_cost"  
    }  
  },  
  "lengthOfArray": {  
    "cpu": {  
      "arguments": 231883,  
      "type": "constant_cost"  
    },  
    "memory": {  
      "arguments": 10,  
      "type": "constant_cost"  
    }  
  },  
  "listToArray": {  
    "cpu": {  
      "arguments": {  
        "intercept": 1000,  
        "slope": 24838  
      },  
      "type": "linear_in_x"  
    },  
    "memory": {  
      "arguments": {  
        "intercept": 7,  
        "slope": 1  
      },  
      "type": "linear_in_x"  
    }  
  },  
  "lookupCoin": {  
    "cpu": {  
      "arguments": {  
        "intercept": 219951,  
        "slope": 9444  
      },  
      "type": "linear_in_z"  
    },  
    "memory": {  
      "arguments": 1,  
      "type": "constant_cost"  
    }  
  },  
  "valueContains": {  
    "cpu": {  
      "arguments": {  
        "constant": 213283,  
        "model": {  
          "arguments": {  
             "intercept": 618401,  
             "slope1": 1998,  
             "slope2": 28258  
           },  
          "type": "linear_in_x_and_y"  
        }  
      },  
      "type": "const_above_diagonal"  
    },  
    "memory": {  
      "arguments": 1,  
      "type": "constant_cost"  
    }  
  },  
  "valueData": {  
      "cpu": {  
          "arguments": {  
              "intercept": 1000,  
              "slope": 38159  
          },  
          "type": "linear_in_x"  
      },  
      "memory": {  
          "arguments": {  
              "intercept": 2,  
              "slope": 22  
          },  
          "type": "linear_in_x"  
      }  
  },  
  "unValueData": {  
      "cpu": {  
          "arguments": {  
              "c0": 1000,  
              "c1": 95933,  
              "c2": 1  
          },  
          "type": "quadratic_in_x"  
      },  
      "memory": {  
          "arguments": {  
              "intercept": 1,  
              "slope": 11  
          },  
          "type": "linear_in_x"  
      }  
  },  
  "insertCoin": {  
    "cpu": {  
      "arguments": {  
        "intercept": 356924,  
        "slope": 18413  
      },  
      "type": "linear_in_u"  
    },  
    "memory": {  
      "arguments": {  
        "intercept": 45,  
        "slope": 21  
      },  
      "type": "linear_in_u"  
    }  
  },  
  "unionValue": {  
    "cpu": {  
      "arguments": {  
        "c00": 1000,  
        "c01": 183150,  
        "c10": 172116,  
        "c11": 6  
      },  
      "type": "with_interaction_in_x_and_y"  
    },  
    "memory": {  
      "arguments": {  
        "intercept": 24,  
        "slope": 21  
      },  
      "type": "added_sizes"  
    }  
  },  
  "scaleValue": {  
    "cpu": {  
      "arguments": {  
        "intercept": 1000,  
        "slope": 277577  
      },  
      "type": "linear_in_y"  
    },  
    "memory": {  
      "arguments": {  
        "intercept": 12,  
        "slope": 21  
      },  
      "type": "linear_in_y"  
    }  
  },  
  "equalsByteString": {  
    "cpu": {  
      "arguments": {  
        "constant": 24548,  
        "intercept": 29498,  
        "slope": 38  
      },  
      "type": "linear_on_diagonal"  
    },  
    "memory": {  
      "arguments": 1,  
      "type": "constant_cost"  
    }  
  }  
```

The full difference from the current on-chain Plutus V3 cost model settings is shown below:

```json  
  "expModInteger": {  
    "cpu": {  
      "arguments": {  
        "coefficient00": 607153,  
        "coefficient11": 231697,  
        "coefficient12": 53144  
      },  
      "type": "exp_mod_cost"  
    },  
    "memory": {  
      "arguments": {  
        "intercept": 0,  
        "slope": 1  
      },  
      "type": "linear_in_z"  
    }  
  },  
  "dropList": {  
    "cpu": {  
      "arguments": {  
        "intercept": 116711,  
        "slope": 1957  
      },  
      "type": "linear_in_x"  
    },  
    "memory": {  
      "arguments": 4,  
      "type": "constant_cost"  
    }  
  },  
  "bls12_381_G1_multiScalarMul": {  
    "cpu": {  
      "arguments": {  
        "intercept": 321837444,  
        "slope": 25087669  
      },  
      "type": "linear_in_x"  
    },  
    "memory": {  
      "arguments": 18,  
      "type": "constant_cost"  
    }  
  },  
  "bls12_381_G2_multiScalarMul": {  
    "cpu": {  
      "arguments": {  
        "intercept": 617887431,  
        "slope": 67302824  
      },  
      "type": "linear_in_x"  
    },  
    "memory": {  
      "arguments": 36,  
      "type": "constant_cost"  
    }  
  },  
  "indexArray": {  
    "cpu": {  
      "arguments": 232010,  
      "type": "constant_cost"  
    },  
    "memory": {  
      "arguments": 32,  
      "type": "constant_cost"  
    }  
  },  
  "lengthOfArray": {  
    "cpu": {  
      "arguments": 231883,  
      "type": "constant_cost"  
    },  
    "memory": {  
      "arguments": 10,  
      "type": "constant_cost"  
    }  
  },  
  "listToArray": {  
    "cpu": {  
      "arguments": {  
        "intercept": 1000,  
        "slope": 24838  
      },  
      "type": "linear_in_x"  
    },  
    "memory": {  
      "arguments": {  
        "intercept": 7,  
        "slope": 1  
      },  
      "type": "linear_in_x"  
    }  
  },  
  "lookupCoin": {  
    "cpu": {  
      "arguments": {  
        "intercept": 219951,  
        "slope": 9444  
      },  
      "type": "linear_in_z"  
    },  
    "memory": {  
      "arguments": 1,  
      "type": "constant_cost"  
    }  
  },  
  "valueContains": {  
    "cpu": {  
      "arguments": {  
        "constant": 213283,  
        "model": {  
          "arguments": {  
             "intercept": 618401,  
             "slope1": 1998,  
             "slope2": 28258  
           },  
          "type": "linear_in_x_and_y"  
        }  
      },  
      "type": "const_above_diagonal"  
    },  
    "memory": {  
      "arguments": 1,  
      "type": "constant_cost"  
    }  
  },  
  "valueData": {  
      "cpu": {  
          "arguments": {  
              "intercept": 1000,  
              "slope": 38159  
          },  
          "type": "linear_in_x"  
      },  
      "memory": {  
          "arguments": {  
              "intercept": 2,  
              "slope": 22  
          },  
          "type": "linear_in_x"  
      }  
  },  
  "unValueData": {  
      "cpu": {  
          "arguments": {  
              "c0": 1000,  
              "c1": 95933,  
              "c2": 1  
          },  
          "type": "quadratic_in_x"  
      },  
      "memory": {  
          "arguments": {  
              "intercept": 1,  
              "slope": 11  
          },  
          "type": "linear_in_x"  
      }  
  },  
  "insertCoin": {  
    "cpu": {  
      "arguments": {  
        "intercept": 356924,  
        "slope": 18413  
      },  
      "type": "linear_in_u"  
    },  
    "memory": {  
      "arguments": {  
        "intercept": 45,  
        "slope": 21  
      },  
      "type": "linear_in_u"  
    }  
  },  
  "unionValue": {  
    "cpu": {  
      "arguments": {  
        "c00": 1000,  
        "c01": 183150,  
        "c10": 172116,  
        "c11": 6  
      },  
      "type": "with_interaction_in_x_and_y"  
    },  
    "memory": {  
      "arguments": {  
        "intercept": 24,  
        "slope": 21  
      },  
      "type": "added_sizes"  
    }  
  },  
  "scaleValue": {  
    "cpu": {  
      "arguments": {  
        "intercept": 1000,  
        "slope": 277577  
      },  
      "type": "linear_in_y"  
    },  
    "memory": {  
      "arguments": {  
        "intercept": 12,  
        "slope": 21  
      },  
      "type": "linear_in_y"  
    }  
  },  
  "equalsByteString": {  
    "cpu": {  
      "arguments": {  
        "constant": 24548,  
        "intercept": 29498,  
        "slope": 38  
      },  
      "type": "linear_on_diagonal"  
    },  
    "memory": {  
      "arguments": 1,  
      "type": "constant_cost"  
    }  
  },  
  "divideInteger": {  
    "cpu": {  
      "arguments": {  
        "constant": 85848,  
        "model": {  
          "arguments": {  
            "c00": 123203,  
            "c01": 7305,  
            "c02": -900,  
            "c10": 1716,  
            "c11": 549,  
            "c20": 57,  
            "minimum": 85848  
          },  
          "type": "quadratic_in_x_and_y"  
        }  
      },  
      "type": "const_above_diagonal"  
    },  
    "memory": {  
      "arguments": {  
        "intercept": 0,  
        "minimum": 1,  
        "slope": 1  
      },  
      "type": "subtracted_sizes"  
    }  
  },  
  "modInteger": {  
    "cpu": {  
      "arguments": {  
        "constant": 85848,  
        "model": {  
          "arguments": {  
            "c00": 123203,  
            "c01": 7305,  
            "c02": -900,  
            "c10": 1716,  
            "c11": 549,  
            "c20": 57,  
            "minimum": 85848  
          },  
          "type": "quadratic_in_x_and_y"  
        }  
      },  
      "type": "const_above_diagonal"  
    },  
    "memory": {  
      "arguments": {  
        "intercept": 0,  
        "slope": 1  
      },  
      "type": "linear_in_y"  
    }  
  },  
  "quotientInteger": {  
    "cpu": {  
      "arguments": {  
        "constant": 85848,  
        "model": {  
          "arguments": {  
            "c00": 123203,  
            "c01": 7305,  
            "c02": -900,  
            "c10": 1716,  
            "c11": 549,  
            "c20": 57,  
            "minimum": 85848  
          },  
          "type": "quadratic_in_x_and_y"  
        }  
      },  
      "type": "const_above_diagonal"  
    },  
    "memory": {  
      "arguments": {  
        "intercept": 0,  
        "minimum": 1,  
        "slope": 1  
      },  
      "type": "subtracted_sizes"  
    }  
  },  
  "remainderInteger": {  
    "cpu": {  
      "arguments": {  
        "constant": 85848,  
        "model": {  
          "arguments": {  
            "c00": 123203,  
            "c01": 7305,  
            "c02": -900,  
            "c10": 1716,  
            "c11": 549,  
            "c20": 57,  
            "minimum": 85848  
          },  
          "type": "quadratic_in_x_and_y"  
        }  
      },  
      "type": "const_above_diagonal"  
    },  
    "memory": {  
      "arguments": {  
        "intercept": 0,  
        "slope": 1  
      },  
      "type": "linear_in_y"  
    }  
  },

```

## References

- [All Plutus Cost Model Benchmarking Data](https://github.com/IntersectMBO/plutus/tree/master/plutus-core/cost-model/data)
- [Plutus Cost Model Benchmarking Data (new primitives)](https://github.com/IntersectMBO/plutus/blob/master/plutus-core/cost-model/data/benching-conway.csv)
- [Description of Plutus Cost Model Benchmarking Process](https://github.com/IntersectMBO/plutus/tree/master/doc/cost-model-overview)
- [YouTube Video Discussing Plutus Cost Model Benchmarking](https://www.youtube.com/watch?v=X6oL30vP318)
- [CIP-0109 | Modular Exponentiation Built-in for Plutus Core](https://github.com/cardano-foundation/CIPs/tree/master/CIP-0109)
- [CIP-0132 | New Plutus Builtin dropList](https://github.com/cardano-foundation/CIPs/tree/master/CIP-0132)
- [CIP-0133 | Plutus support for Multi-Scalar Multiplication over BLS12-381](https://github.com/cardano-foundation/CIPs/tree/master/CIP-0133)
- [CIP-0138 | Plutus Core Builtin Type - `Array`](https://github.com/cardano-foundation/CIPs/tree/master/CIP-0138)
- [CIP-0153 | Plutus Core Builtin Type - MaryEraValue](http://github.com/cardano-foundation/CIPs/tree/master/CIP-0153)

## Authors

{
  "name": "Ryan test",
  "witness": {
    "witnessAlgorithm": "ed25519",
    "publicKey": "38f01b9b41e7ea4bca5c093e472fa01198ebaf09a55a9e97f7431c3a06df5103",
    "signature": "f8fe95c63bc69f84ae1556c79bcaf8dbb41633c9f78d74e5572a9180a6c2c58d72f0e3636eae8f8718b5554164ec57c738f6b6557f932ac28e95603c1fd9f705"
  }
}

## Onchain

{
  "deposit": "100000000000",
  "reward_account": "stake_test1up4xt9hftul97kwz9wjfuldvf86hcjjcu9833x5rgltly7s9xkkn9",
  "gov_action": {
    "tag": "parameter_change_action",
    "gov_action_id": {
      "transaction_id": "158ef6b249b7c3ec219c62d11f0b8e766a356472d023bd7b1e736efed977f3c6",
      "gov_action_index": "0"
    },
    "protocol_param_update": {
      "cost_models": {
        "plutus_v1": [
          "100788",
          "420",
          "1",
          "1",
          "1000",
          "173",
          "0",
          "1",
          "1000",
          "59957",
          "4",
          "1",
          "11183",
          "32",
          "201305",
          "8356",
          "4",
          "16000",
          "100",
          "16000",
          "100",
          "16000",
          "100",
          "16000",
          "100",
          "16000",
          "100",
          "16000",
          "100",
          "100",
          "100",
          "16000",
          "100",
          "94375",
          "32",
          "132994",
          "32",
          "61462",
          "4",
          "72010",
          "178",
          "0",
          "1",
          "22151",
          "32",
          "91189",
          "769",
          "4",
          "2",
          "85848",
          "228465",
          "122",
          "0",
          "1",
          "1",
          "1000",
          "42921",
          "4",
          "2",
          "30623",
          "28755",
          "75",
          "1",
          "898148",
          "27279",
          "1",
          "51775",
          "558",
          "1",
          "39184",
          "1000",
          "60594",
          "1",
          "141895",
          "32",
          "83150",
          "32",
          "15299",
          "32",
          "76049",
          "1",
          "13169",
          "4",
          "22100",
          "10",
          "28999",
          "74",
          "1",
          "28999",
          "74",
          "1",
          "43285",
          "552",
          "1",
          "44749",
          "541",
          "1",
          "33852",
          "32",
          "68246",
          "32",
          "72362",
          "32",
          "7243",
          "32",
          "7391",
          "32",
          "11546",
          "32",
          "85848",
          "228465",
          "122",
          "0",
          "1",
          "1",
          "90434",
          "519",
          "0",
          "1",
          "74433",
          "32",
          "85848",
          "228465",
          "122",
          "0",
          "1",
          "1",
          "85848",
          "228465",
          "122",
          "0",
          "1",
          "1",
          "270652",
          "22588",
          "4",
          "1457325",
          "64566",
          "4",
          "20467",
          "1",
          "4",
          "0",
          "141992",
          "32",
          "100788",
          "420",
          "1",
          "1",
          "81663",
          "32",
          "59498",
          "32",
          "20142",
          "32",
          "24588",
          "32",
          "20744",
          "32",
          "25933",
          "32",
          "24623",
          "32",
          "53384111",
          "14333",
          "10",
          "955506",
          "213312",
          "0",
          "2",
          "43053543",
          "10",
          "43574283",
          "26308",
          "10",
          "16000",
          "100",
          "16000",
          "100",
          "962335",
          "18",
          "2780678",
          "6",
          "442008",
          "1",
          "52538055",
          "3756",
          "18",
          "267929",
          "18",
          "76433006",
          "8868",
          "18",
          "52948122",
          "18",
          "1995836",
          "36",
          "3227919",
          "12",
          "901022",
          "1",
          "166917843",
          "4307",
          "36",
          "284546",
          "36",
          "158221314",
          "26549",
          "36",
          "74698472",
          "36",
          "333849714",
          "1",
          "254006273",
          "72",
          "2174038",
          "72",
          "2261318",
          "64571",
          "4",
          "207616",
          "8310",
          "4",
          "1293828",
          "28716",
          "63",
          "0",
          "1",
          "1006041",
          "43623",
          "251",
          "0",
          "1",
          "100181",
          "726",
          "719",
          "0",
          "1",
          "100181",
          "726",
          "719",
          "0",
          "1",
          "100181",
          "726",
          "719",
          "0",
          "1",
          "107878",
          "680",
          "0",
          "1",
          "95336",
          "1",
          "281145",
          "18848",
          "0",
          "1",
          "180194",
          "159",
          "1",
          "1",
          "158519",
          "8942",
          "0",
          "1",
          "159378",
          "8813",
          "0",
          "1",
          "107490",
          "3298",
          "1",
          "106057",
          "655",
          "1",
          "1964219",
          "24520",
          "3",
          "607153",
          "231697",
          "53144",
          "0",
          "1",
          "116711",
          "1957",
          "4",
          "231883",
          "10",
          "1000",
          "24838",
          "7",
          "1",
          "232010",
          "32",
          "321837444",
          "25087669",
          "18",
          "617887431",
          "67302824",
          "36",
          "356924",
          "18413",
          "45",
          "21",
          "219951",
          "9444",
          "1",
          "1000",
          "172116",
          "183150",
          "6",
          "24",
          "21",
          "213283",
          "618401",
          "1998",
          "28258",
          "1",
          "1000",
          "38159",
          "2",
          "22",
          "1000",
          "95933",
          "1",
          "1",
          "11",
          "1000",
          "277577",
          "12",
          "21"
        ],
        "plutus_v2": [
          "100788",
          "420",
          "1",
          "1",
          "1000",
          "173",
          "0",
          "1",
          "1000",
          "59957",
          "4",
          "1",
          "11183",
          "32",
          "201305",
          "8356",
          "4",
          "16000",
          "100",
          "16000",
          "100",
          "16000",
          "100",
          "16000",
          "100",
          "16000",
          "100",
          "16000",
          "100",
          "100",
          "100",
          "16000",
          "100",
          "94375",
          "32",
          "132994",
          "32",
          "61462",
          "4",
          "72010",
          "178",
          "0",
          "1",
          "22151",
          "32",
          "91189",
          "769",
          "4",
          "2",
          "85848",
          "228465",
          "122",
          "0",
          "1",
          "1",
          "1000",
          "42921",
          "4",
          "2",
          "30623",
          "28755",
          "75",
          "1",
          "898148",
          "27279",
          "1",
          "51775",
          "558",
          "1",
          "39184",
          "1000",
          "60594",
          "1",
          "141895",
          "32",
          "83150",
          "32",
          "15299",
          "32",
          "76049",
          "1",
          "13169",
          "4",
          "22100",
          "10",
          "28999",
          "74",
          "1",
          "28999",
          "74",
          "1",
          "43285",
          "552",
          "1",
          "44749",
          "541",
          "1",
          "33852",
          "32",
          "68246",
          "32",
          "72362",
          "32",
          "7243",
          "32",
          "7391",
          "32",
          "11546",
          "32",
          "85848",
          "228465",
          "122",
          "0",
          "1",
          "1",
          "90434",
          "519",
          "0",
          "1",
          "74433",
          "32",
          "85848",
          "228465",
          "122",
          "0",
          "1",
          "1",
          "85848",
          "228465",
          "122",
          "0",
          "1",
          "1",
          "955506",
          "213312",
          "0",
          "2",
          "270652",
          "22588",
          "4",
          "1457325",
          "64566",
          "4",
          "20467",
          "1",
          "4",
          "0",
          "141992",
          "32",
          "100788",
          "420",
          "1",
          "1",
          "81663",
          "32",
          "59498",
          "32",
          "20142",
          "32",
          "24588",
          "32",
          "20744",
          "32",
          "25933",
          "32",
          "24623",
          "32",
          "43053543",
          "10",
          "53384111",
          "14333",
          "10",
          "43574283",
          "26308",
          "10",
          "1293828",
          "28716",
          "63",
          "0",
          "1",
          "1006041",
          "43623",
          "251",
          "0",
          "1",
          "16000",
          "100",
          "16000",
          "100",
          "962335",
          "18",
          "2780678",
          "6",
          "442008",
          "1",
          "52538055",
          "3756",
          "18",
          "267929",
          "18",
          "76433006",
          "8868",
          "18",
          "52948122",
          "18",
          "1995836",
          "36",
          "3227919",
          "12",
          "901022",
          "1",
          "166917843",
          "4307",
          "36",
          "284546",
          "36",
          "158221314",
          "26549",
          "36",
          "74698472",
          "36",
          "333849714",
          "1",
          "254006273",
          "72",
          "2174038",
          "72",
          "2261318",
          "64571",
          "4",
          "207616",
          "8310",
          "4",
          "100181",
          "726",
          "719",
          "0",
          "1",
          "100181",
          "726",
          "719",
          "0",
          "1",
          "100181",
          "726",
          "719",
          "0",
          "1",
          "107878",
          "680",
          "0",
          "1",
          "95336",
          "1",
          "281145",
          "18848",
          "0",
          "1",
          "180194",
          "159",
          "1",
          "1",
          "158519",
          "8942",
          "0",
          "1",
          "159378",
          "8813",
          "0",
          "1",
          "107490",
          "3298",
          "1",
          "106057",
          "655",
          "1",
          "1964219",
          "24520",
          "3",
          "607153",
          "231697",
          "53144",
          "0",
          "1",
          "116711",
          "1957",
          "4",
          "231883",
          "10",
          "1000",
          "24838",
          "7",
          "1",
          "232010",
          "32",
          "321837444",
          "25087669",
          "18",
          "617887431",
          "67302824",
          "36",
          "356924",
          "18413",
          "45",
          "21",
          "219951",
          "9444",
          "1",
          "1000",
          "172116",
          "183150",
          "6",
          "24",
          "21",
          "213283",
          "618401",
          "1998",
          "28258",
          "1",
          "1000",
          "38159",
          "2",
          "22",
          "1000",
          "95933",
          "1",
          "1",
          "11",
          "1000",
          "277577",
          "12",
          "21"
        ],
        "plutus_v3": [
          "100788",
          "420",
          "1",
          "1",
          "1000",
          "173",
          "0",
          "1",
          "1000",
          "59957",
          "4",
          "1",
          "11183",
          "32",
          "201305",
          "8356",
          "4",
          "16000",
          "100",
          "16000",
          "100",
          "16000",
          "100",
          "16000",
          "100",
          "16000",
          "100",
          "16000",
          "100",
          "100",
          "100",
          "16000",
          "100",
          "94375",
          "32",
          "132994",
          "32",
          "61462",
          "4",
          "72010",
          "178",
          "0",
          "1",
          "22151",
          "32",
          "91189",
          "769",
          "4",
          "2",
          "85848",
          "123203",
          "7305",
          "-900",
          "1716",
          "960",
          "57",
          "85848",
          "0",
          "1",
          "1",
          "1000",
          "42921",
          "4",
          "2",
          "30623",
          "28755",
          "75",
          "1",
          "898148",
          "27279",
          "1",
          "51775",
          "558",
          "1",
          "39184",
          "1000",
          "60594",
          "1",
          "141895",
          "32",
          "83150",
          "32",
          "15299",
          "32",
          "76049",
          "1",
          "13169",
          "4",
          "22100",
          "10",
          "28999",
          "74",
          "1",
          "28999",
          "74",
          "1",
          "43285",
          "552",
          "1",
          "44749",
          "541",
          "1",
          "33852",
          "32",
          "68246",
          "32",
          "72362",
          "32",
          "7243",
          "32",
          "7391",
          "32",
          "11546",
          "32",
          "85848",
          "123203",
          "7305",
          "-900",
          "1716",
          "960",
          "57",
          "85848",
          "0",
          "1",
          "90434",
          "519",
          "0",
          "1",
          "74433",
          "32",
          "85848",
          "123203",
          "7305",
          "-900",
          "1716",
          "960",
          "57",
          "85848",
          "0",
          "1",
          "1",
          "85848",
          "123203",
          "7305",
          "-900",
          "1716",
          "960",
          "57",
          "85848",
          "0",
          "1",
          "955506",
          "213312",
          "0",
          "2",
          "270652",
          "22588",
          "4",
          "1457325",
          "64566",
          "4",
          "20467",
          "1",
          "4",
          "0",
          "141992",
          "32",
          "100788",
          "420",
          "1",
          "1",
          "81663",
          "32",
          "59498",
          "32",
          "20142",
          "32",
          "24588",
          "32",
          "20744",
          "32",
          "25933",
          "32",
          "24623",
          "32",
          "43053543",
          "10",
          "53384111",
          "14333",
          "10",
          "43574283",
          "26308",
          "10",
          "16000",
          "100",
          "16000",
          "100",
          "962335",
          "18",
          "2780678",
          "6",
          "442008",
          "1",
          "52538055",
          "3756",
          "18",
          "267929",
          "18",
          "76433006",
          "8868",
          "18",
          "52948122",
          "18",
          "1995836",
          "36",
          "3227919",
          "12",
          "901022",
          "1",
          "166917843",
          "4307",
          "36",
          "284546",
          "36",
          "158221314",
          "26549",
          "36",
          "74698472",
          "36",
          "333849714",
          "1",
          "254006273",
          "72",
          "2174038",
          "72",
          "2261318",
          "64571",
          "4",
          "207616",
          "8310",
          "4",
          "1293828",
          "28716",
          "63",
          "0",
          "1",
          "1006041",
          "43623",
          "251",
          "0",
          "1",
          "100181",
          "726",
          "719",
          "0",
          "1",
          "100181",
          "726",
          "719",
          "0",
          "1",
          "100181",
          "726",
          "719",
          "0",
          "1",
          "107878",
          "680",
          "0",
          "1",
          "95336",
          "1",
          "281145",
          "18848",
          "0",
          "1",
          "180194",
          "159",
          "1",
          "1",
          "158519",
          "8942",
          "0",
          "1",
          "159378",
          "8813",
          "0",
          "1",
          "107490",
          "3298",
          "1",
          "106057",
          "655",
          "1",
          "1964219",
          "24520",
          "3",
          "607153",
          "231697",
          "53144",
          "0",
          "1",
          "116711",
          "1957",
          "4",
          "231883",
          "10",
          "1000",
          "24838",
          "7",
          "1",
          "232010",
          "32",
          "321837444",
          "25087669",
          "18",
          "617887431",
          "67302824",
          "36",
          "356924",
          "18413",
          "45",
          "21",
          "219951",
          "9444",
          "1",
          "1000",
          "172116",
          "183150",
          "6",
          "24",
          "21",
          "213283",
          "618401",
          "1998",
          "28258",
          "1",
          "1000",
          "38159",
          "2",
          "22",
          "1000",
          "95933",
          "1",
          "1",
          "11",
          "1000",
          "277577",
          "12",
          "21"
        ]
      }
    }
  }
}
