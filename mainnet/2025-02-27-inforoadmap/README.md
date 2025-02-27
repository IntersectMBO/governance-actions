## 2025-02-27 Defining the Cardano Vision and Roadmap for 2025 and beyond

### On-Chain Details

- Transaction ID: ``
  - [via Adastat](https://adastat.net/transactions/)
  - [via Cexplorer](https://cexplorer.io/tx/)
  - [via Cardanoscan](https://cardanoscan.io/tx/)
  - [via GovTool](https://gov.tools/governance_actions/#0)
  - [via Tempo.vote](https://tempo.vote/governance-actions)
  - [via Cardano Gov Actions X bot](https://x.com/GovActions/status/) 

- Metadata Anchor Hash (`blake2b-256`): `f3ac2ab03bc549b60c2f37a49963070334bd7df02fe5961deac73d2505ab1d90`
- Metadata Anchor URI: <ipfs://bafkreifi3t5vza6j5iq3lreybl2kkz4doas6bpojb473hrjtmtnfeo5qre>

### Files

- [Raw metadata JSON Document](./metadata.jsonld)
- [Rendered Markdown (Human Readable)](./metadata.jsonld.md)

### Action Files

Provided in this directory are the `cardano-cli` governance action file which will be submitted:

- [New Constitution Action File](./new-const-replace-interim.action)
- [Action file JSON (human readable)](./new-const-replace-interim.action.json)

### Verification

It is recommended that third parties audit and verify the contents of this directory.

#### Check Metadata anchor hash

Using `cardano-cli` (without cloning).

```shell
export IPFS_GATEWAY_URI="https://ipfs.io/"
cardano-cli hash anchor-data --url ipfs://bafkreifi3t5vza6j5iq3lreybl2kkz4doas6bpojb473hrjtmtnfeo5qre
```

Using `b2sum` (without cloning).

```shell
curl -s https://raw.githubusercontent.com/IntersectMBO/governance-actions/refs/heads/main/mainnet/2025-02-27-inforoadmap/metadata.jsonld | b2sum -l 256
```

#### Check action file

#### Check JSON

Ensure the provided action file JSON is representative of the action.

Using `cardano-cli`.

```shell
cardano-cli conway governance action view --action-file <(curl -s https://raw.githubusercontent.com/IntersectMBO/governance-actions/refs/heads/main/mainnet/2025-02-27-inforoadmap/xx.action)
```

#### Inspect values

1. Ensure the `anchor` values are as expected - matching the values in this repo.

2. Ensure `governance action` type is as expected, and has the on-chain effect intended - as described by the metadata in this repo.

3. Ensure `return address` is for the correct network, registered and expected.
