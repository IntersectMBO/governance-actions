## 2025-07-07 New Committee

### On-Chain Details

- Metadata Anchor Hash (`blake2b-256`): ``
- Metadata Anchor URI: <ipfs://>

Transaction id: ``

Governance action links:
  - [via Adastat](https://adastat.net/governances/)
  - [via Cexplorer](https://cexplorer.io/governance/)
  - [via Cardanoscan](https://cardanoscan.io/govAction/)
  - [via GovTool](https://gov.tools/governance_actions/#0)
  - [via Tempo.vote](https://tempo.vote/governance-actions)


### Files

- [Raw metadata JSON Document](./metadata.jsonld)
- [Rendered Markdown (Human Readable)](./metadata.jsonld.md)

### Verification

It is recommended that third parties audit and verify the contents of this directory.

#### Check Metadata anchor hash

Using `cardano-cli` (without cloning).

```shell
export IPFS_GATEWAY_URI="https://ipfs.io/"
cardano-cli hash anchor-data --url ipfs://
```

Using `b2sum` (without cloning).

```shell
curl -s https://raw.githubusercontent.com/IntersectMBO/mainnet/2025-07-xx-new-committee/metadata.jsonld | b2sum -l 256
```

#### Check action file

#### Check JSON

Ensure the provided action file JSON is representative of the action.

Using `cardano-cli`.

```shell
cardano-cli conway governance action view --action-file <(curl -s https://raw.githubusercontent.com/IntersectMBO/mainnet/2025-07-xx-new-committee/new-committee-cc-elections-2025.action)
```

#### Inspect values

1. Ensure the `anchor` values are as expected - matching the values in this repo.

2. Ensure `governance action` type is as expected, and has the on-chain effect intended - as described by the metadata in this repo.

3. Ensure `return address` is for the correct network, registered and expected.
