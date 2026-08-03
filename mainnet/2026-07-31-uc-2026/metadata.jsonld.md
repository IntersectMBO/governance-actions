# Markdown Representation of metadata.jsonld

## Title

Update Constitutional Committee 2026

## Abstract

This governance action updates the four Constitutional Committee seats whose terms expire at the end of Epoch 653 by appointing the candidates elected through the 2026 Constitutional Committee election. The successful candidates will serve new terms ending at Epoch 799, in accordance with the current committeeMaxTermLength protocol parameter.

## Motivation

The Constitutional Committee must be renewed as members' terms expire to maintain a functioning committee at or above the minimum size required by the committeeMinSize protocol parameter. This action replaces the four seats expiring at Epoch 653 with the candidates elected by the community through the 2026 Constitutional Committee election, facilitated by Intersect. The election included candidate registration, a public voting period, an independent audit of the results, and publication of the audited outcome before submission of this governance action.

## Rationale

In accordance with the Cardano constitution, Article III, Section 3 (2), Intersect has facilitated a public “process… for \[the\] election of members of the CC consistent with the requirements of the Guardrails”, to update the positions due to expire at Epoch 653. The four candidates who received the most votes, by voting power, are elected. In this round, all four elected members are seated for the same term of 146 epochs (approximately two years), which is the current limit of the committeeMaxTermLength protocol parameter.

This governance action officially endorses the results of that electoral process and updates the Constitutional Committee accordingly. No changes are made to the quorum, which will remain ⅔.

**Note on the expiration epoch and enactment timing.**  
An Update Committee governance action sets each new member's expiration epoch as a fixed on-chain value. A member's actual term is the difference between that expiration epoch and the epoch in which the action is enacted, and the ledger requires this term to be no greater than the committeeMaxTermLength protocol parameter, which is currently 146 epochs.

Because this action sets the term to that maximum of 146 epochs, it cannot be enacted before the final epoch of its lifetime, even if all voting thresholds are met earlier. This is counterintuitive but follows directly from the expiration epoch being a fixed end-date: since the term is measured backwards from that fixed epoch, enacting the action earlier makes each member start sooner while still ending on the same epoch - that is, a longer term, not a shorter one. A term longer than 146 epochs exceeds committeeMaxTermLength and is rejected by the ledger, so the only epoch at which the term is a valid 146 (or less) is the last one. With a 6-epoch action lifetime, the action can only be enacted at Epoch 653, giving each member a term that expires at Epoch 799. Ratification will therefore occur in the action's final epoch regardless of how quickly thresholds are reached.

It should be noted - whilst this quirk is a feature of the ledger rules - it does not impact vote timing. DReps, SPOs and the Constitutional Committee should continue to vote as they normally would.

**Re-election and the term limit.**  
committeeMaxTermLength caps each individual term, measured from the epoch of enactment. It does not cap cumulative or continuous service across terms. Cardano Curia and Philip DiSarro (Phil_uplc) are being re-elected, but each receives a fresh maximum-length term measured from this action's enactment; the time already served on their current seats (which expire at Epoch 653) does not count toward the 146-epoch limit. Their new term begins where the current one ends, so this is a seamless renewal rather than an extension stacked on top of the existing term.

The outgoing members whose terms expire at Epoch 653, alongside with the retired member whose term would otherwise expire on the same epoch, removed by this action, are:

| Member | Cold credential | Cold Credential (CIP-129 Bech32) | Expiration |
| :---- | :---- | :---- | :---- |
| Cardano Japan Council | script-hash-9cc3f387623f45dae6a68b7096b0c2e403d8601a82dc40221ead41e2 | cc_cold1zwwv8uu8vgl5tkhx569hp94sctjq8krqr2pdcspzr6k5rcsxw2az4 | 653 |
| Phil_uplc | key-hash-13493790d9b03483a1e1e684ea4faf1ee48a58f402574e7f2246f4d4 | cc_cold1zgf5jdusmxcrfqapu8ngf6j04u0wfzjc7sp9wnnlyfr0f4q68as9w | 653 |
| KtorZ | key-hash-dc0d6ef49590eb6880a50a00adde17596e6d76f7159572fa1ff85f2a | cc_cold1ztwq6mh5jkgwk6yq559qptw7zavkumtk7u2e2uh6rlu972slkt0rz | 653 |
| Cardano Curia | script-hash-16feefc225e06f75a3c917f4aa50acffde7631ea0355721f2ac12542 | cc_cold1zvt0am7zyhsx7adreytlf2js4nlaua33agp42usl9tqj2ssazjmn9 | 653 |
| Cardano Atlantic Council | 349e55f83e9af24813e6cb368df6a80d38951b2a334dfcdf26815558 | cc_cold1zv6fu40c86d0yjqnum9ndr0k4qxn39gm9ge5mlxly6q42kqmjmzyj | 653 |

The incoming members, in no particular order, are:

| Member | Cold credential | Cold Credential (CIP-129 Bech32) | Term | Expiration |
| :---- | :---- | :---- | :---- | :---- |
| Marek Mahut | key-hash-0af99047bc90e0d9073467548a19a85089b766e73eb807748a2ad361 | cc_cold1zg90nyz8hjgwpkg8x3n4fzse4pggndmxuultspm53g4dxcgjkqykp | 146 | 799 |
| Phil_uplc | key-hash-13493790d9b03483a1e1e684ea4faf1ee48a58f402574e7f2246f4d4 | cc_cold1zgf5jdusmxcrfqapu8ngf6j04u0wfzjc7sp9wnnlyfr0f4q68as9w | 146 | 799 |
| Leandros BSP | script-hash-7c34e0240b84029e0932f5e8d81af42a63f55de6da31f16e19b1f5b4 | cc_cold1zd7rfcpypwzq98sfxt673kq67s4x8a2aumdrrutwrxcltdq9jkwn2 | 146 | 799 |
| Cardano Curia | script-hash-16feefc225e06f75a3c917f4aa50acffde7631ea0355721f2ac12542 | cc_cold1zvt0am7zyhsx7adreytlf2js4nlaua33agp42usl9tqj2ssazjmn9 | 146 | 799 |

*Term = term length in epochs. Expiration = Expiration epoch.*

**Note.** This action changes only the four expiring seats. The remaining three committee members - Eastern Cardano Council, Tingvard, and Ace Alliance, whose terms expire at epoch 726 - are unchanged and are not included in this action.

Committee after enactment:  
Marek Mahut, Cardano Curia, Philip DiSarro, Leandros BSP, Eastern Cardano Council, Tingvard and Ace Alliance

### Election Results

| # | Candidate | Voting power (ada) | DRep Votes  |
| :---- | :---- | :---- | :---- |
| 1 | Philip DiSarro | 1,979,047,586.427 | 24 |
| 2 | Leandros BSP | 1,964,850,507.458 | 23 |
| 3 | Marek Mahut  | 1,370,113,895.267 | 28 |
| 4 | Cardano Curia | 1,288,633,576.302 | 27 |
| 5 | Asia Africa Cardano Coalition | 1,142,561,765.138 | 16 |
| 6 | Bosco Ribeiro | 197,409,335.579 | 10 |
| 7 | Gbiri Oluwaseun | 121,192,048.252 | 3 |
| 8 | NexTrium Global Innovations Ltd | 34,298,868.077 | 4 |
| 9 | Ian Njuguna | 1,324,683.789 | 2 |
| 10 | Meek Owen | 0 | 0 |

**Election details**  
The Constitutional Committee election working group under the Civics Committee designed the election process to be:

* Adhering to the Cardano Constitution: ensuring all procedures were compliant with the foundational rules of the ecosystem.  
* Accessible: allowing any ada owner to register as a candidate.  
* Transparent and verifiable: building trust through an open process with verifiable, on-chain results.

Four candidates are elected to the Constitutional Committee, each serving a 146-epoch term, replacing the four credentials that expire at Epoch 653. DReps cast stake-weighted votes, approving up to four candidates. The election ran to the following timeline:

* Candidate registration: 8 May 2026 to 21 June 2026  
* DRep voting period: 28 June 2026 (9:45 PM UTC) to 23 July 2026 (9:45 PM UTC)  
* Voting power snapshot: 23 July 2026, 9:45 PM UTC  
* Independent audit of results: 23 to 26 July 2026  
* Audited results published: 26 July 2026, 12:00 PM UTC

The results of the DRep vote were independently audited by DQuadrant.

## References

- [Audited Election Results (XLSX)](ipfs://bafybeigc77zeko6rhfgc5nzp4q474m5d4i7vt522ykhdjypv5odqplvl7m)
- [Audited Files](ipfs://QmPMB1fTNMqaKcJkmMUr98EtUxtJ95p8uRxdDsiyFqTrTy)
- [Constitutional Committee Election 2026 (Ekklesia ballot)](https://intersect.ekklesia.vote/ballots/6a3ff13334b52f591a6b4f3d/proposals/6a3ff13334b52f591a6b4f3e)

## Authors

{
  "name": "Intersect",
  "witness": {
    "witnessAlgorithm": "ed25519",
    "publicKey": "05568f86955e65c1a59df5ac1985449b167c3828dccd00b3da9df36a1cf1c743",
    "signature": "0c04990337b32fc0a79fe4fdb49c134e9799dba93f50936da6c9c4d303da169e320bc783ca1e4aadc36a0fd0d2c4ab21ca256921ee6038f00b712cc71d815f0e"
  }
}

## Onchain

{
  "deposit": "100000000000",
  "reward_account": "stake1uyvjdz9rxsfsmv44rtk75k2rqyqskrga96dgdfrqjvjjpwsefcjnp",
  "gov_action": {
    "tag": "update_committee",
    "gov_action_id": {
      "transaction_id": "4dab331457b61b824bbc6ba4b9d9be4750e25c0b5dd42207aeb63c7431a6b704",
      "gov_action_index": "0"
    },
    "members_to_remove": [
      {
        "tag": "script_hash",
        "value": "349e55f83e9af24813e6cb368df6a80d38951b2a334dfcdf26815558"
      },
      {
        "tag": "script_hash",
        "value": "9cc3f387623f45dae6a68b7096b0c2e403d8601a82dc40221ead41e2"
      },
      {
        "tag": "pubkey_hash",
        "value": "dc0d6ef49590eb6880a50a00adde17596e6d76f7159572fa1ff85f2a"
      }
    ],
    "committee": [
      {
        "key": {
          "tag": "pubkey_hash",
          "value": "13493790d9b03483a1e1e684ea4faf1ee48a58f402574e7f2246f4d4"
        },
        "value": "799"
      },
      {
        "key": {
          "tag": "script_hash",
          "value": "16feefc225e06f75a3c917f4aa50acffde7631ea0355721f2ac12542"
        },
        "value": "799"
      },
      {
        "key": {
          "tag": "script_hash",
          "value": "7c34e0240b84029e0932f5e8d81af42a63f55de6da31f16e19b1f5b4"
        },
        "value": "799"
      },
      {
        "key": {
          "tag": "pubkey_hash",
          "value": "0af99047bc90e0d9073467548a19a85089b766e73eb807748a2ad361"
        },
        "value": "799"
      }
    ],
    "signature_threshold": {
      "numerator": "2",
      "denominator": "3"
    }
  }
}
