# Markdown Representation of metadata-signed.jsonld

## Title

Add Constitutional Committee Member

## Abstract

This governance action proposes to add a new Constitutional Committee member selected by participating DReps during the [Intersect hosted snap-election process](https://docs.intersectmbo.org/cardano-facilitation-services/cardano-governance/2025-cc-snap-election-overview) from 26th of November to 5th of December.

Adding one more member brings the Constitutional Committee member count above the `committeeMinSize` parameter, enabling the governance system to function as intended.

## Motivation

### Emergence of Governance

The Chang Hard Fork was initiated by the Genesis Key Holders and approved by stake pool operators becoming effective on September 1st, 2024. Deploying initial on-chain governance features to Cardano and ushering in an interim (or bootstrap phase) for Cardano governance. This instated an interim constitutional committee, including founding entities, two community consortiums and Intersect for an 74 epoch term (~1 year).

The second upgrade, known as Chang, moved governance out of the interim bootstrap phase and into full minimum viable on-chain governance as described in [CIP-1694 | A First Step Towards On-Chain Decentralized Governance](https://github.com/cardano-foundation/CIPs/blob/master/CIP-1694/README.md).

### Replacing the Interim Constitutional Committee

With the interim Constitutional Committee term nearing an end Intersect hosted an election process from May 5th to July 6th, 2025. This process intended to move Constitutional Committee control from the founding entities as interim to full community control, electing seven members.

DReps and stake pool operators ratified and enacted the Constitutional Committee on-chain via an Update Committee action [gov_action1g7sw….pyyt](https://cardanoscan.io/govAction/gov_action1g7sw0f8e8qa34lppj2erksvzf4j6e9udwaq6efslc8apdqeazygsq2spyyt).

### Constitutional Committee Member Retiring

During epoch 597, a Constitutional Committee member - Cardano Atlantic Council resigned from the Committee, before the end of their current term. Formally submitting their retirement certificate within transaction [7e9e3….9cc59](https://cardanoscan.io/transaction/7e9e3621aa95b51f90117ddde998e67a38f98b169f42cb12a2b7134bf089cc59).

### Impact

From epoch 597 the Constitutional Committee has had six members, bringing the total member count below the `committeeMinSize` parameter, currently set at seven.

Having a smaller Constitutional Committee than `committeeMinSize` means that the Constitutional Committee is unable to ratify any new governance actions. Impacting Cardano’s governance ability to proceed. Only governance actions not requiring Constitutional Committee ratification are able to pass, namely Update Committee/Threshold and Motion of no-confidence.

Electing a new committee member is essential to ensure the seamless continuation of Cardano governance.

## Rationale

In accordance with the constitutional mandate for this election, one committee seat was elected to ensure continuity. The elected member will have their term expiration to match the retired seat, serving until epoch 653.

Following the tallying of off-chain stake-weighted votes, the candidate with the highest amount of participating DRep voting stake was elected.

This governance action officially endorses the results of that electoral process, cementing the composition of the committee with its staggered terms designed to ensure operational continuity.

The audited results recorded a total of 3,160,499,917 participating stake represented by 88 DReps on the Ekklesia platform. Cardano Curia received support from 33 DReps, representing 1,679,248,296 in ada stake.

| Member | Cold Credential | Cold Credential (CIP-129 Bech32) | Term Expiration Epoch |
| :---: | :---: | :---: | :---: |
| Cardano Curia | scriptHash-16feefc225e06f75a3c917f4aa50acffde7631ea0355721f2ac12542 | cc_cold1zvt0am7zyhsx7adreytlf2js4nlaua33agp42usl9tqj2ssazjmn9 | 653 |

Ratifying this governance action will **add one member** to the Constitutional Committee, the remaining six committee members and their terms will be unchanged.

### Election Details

Intersect facilitated a snap election, an unscheduled vote called earlier than the ordinary election cycle, to restore the Constitutional Committee. By filling the vacant seat promptly it seeks to maintain continuity in Cardano’s on-chain governance and aligns with Article VII, Section 3 of the Cardano Constitution:

*“The Cardano Community shall establish and make public a process from time to time for election of members of the Constitutional Committee consistent with the requirements of the Guardrails.”*

This election follows the same principles as the Constitutional Committee election held earlier this year (to replace the Interim Committee), but in a condensed format given the urgency and importance of restoring the minimum Constitutional Committee membership:

* **Adhering to the Cardano Constitution:** Ensuring all procedures were compliant with the foundational rules of the ecosystem.  
* **Accessible**: Allowing any Ada owner to register as a candidate.  
* **Transparent and Verifiable**: Building trust through an open process with verifiable, on-chain results.

The off-chain phase of the election process ran between November 17th 2025 - December 9th 2025, and included distinct periods for candidate applications, DRep voting on Ekklesia, and a final audit, prior to this on-chain governance action.

## References

- [Audited election Results](ipfs://bafkreiajs2ntt7jjbdnrs7gcavb54c6jla7ptyaxnstg4br5covqn7y6x4)
- [Audit File #1 - Ekklesia results](ipfs://bafkreibf7iijzmunbz6dogxdrn532pua6owwkk46t35emslolqrhcoky6a)
- [Audit File #2 - Ekklesia results with signatures](ipfs://bafkreiauybk5bty6n2hr277mbl6hep72ini7wpjso45b6gqs5xey76beau)
- [Audit File #3 - Sample script to verify Merkle hash](ipfs://bafkreibwl3itfcyotyuvvyhxwotn5tro576tcmol6kvosxficq5aylw6w4)
- [The Cardano Atlantic Council Retirement Transaction (cardanoscan)](https://cardanoscan.io/transaction/7e9e3621aa95b51f90117ddde998e67a38f98b169f42cb12a2b7134bf089cc59)
- [Cardano Atlantic Council Retirement Announcement](https://x.com/CardanoAtlantic/status/1993482209353924852?t=crGTZpgdgS2AwAXrAXG9dw&s=19)
- [Cardano Atlantic Council Retirement on-chain metadata](https://ipfs.io/ipfs/QmfY4Nwea4nmuuRdA2APrtoDNJQhaVVkfRkkZoueZgWcaZ)

## Authors

{
  "name": "Intersect",
  "witness": {
    "witnessAlgorithm": "ed25519",
    "publicKey": "05568f86955e65c1a59df5ac1985449b167c3828dccd00b3da9df36a1cf1c743",
    "signature": "8f77a53742bd46c1916302205e498483d97f30103879675f2a7c41bf0ce0f23f8091b5e05a075810f7c77860a0dabf8f2a21491f29449db9586cec67c4366702"
  }
}

## Onchain

{
  "governanceActionType": "update_committee",
  "depositReturnAddress": "stake1uyvjdz9rxsfsmv44rtk75k2rqyqskrga96dgdfrqjvjjpwsefcjnp"
}
