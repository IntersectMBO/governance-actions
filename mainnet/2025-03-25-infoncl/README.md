## 2025-03-25 Net Change Limit

### On-Chain Details

- Metadata Anchor Hash (`blake2b-256`): `973452e7c4d204c883c6a9e4c311f72ad6237e827ce05e141f3374c8a04f01bc`
- Metadata Anchor URI: <ipfs://bafkreiaqno22swabd3kcqt2awtgwaucdzaagacoemxwadm3exrchhnfite>

Governance action links:
  - [via Adastat](https://adastat.net/governances/9b62b3c632f329016a968ac25211825bb4f84b12461121c7da3aa11df92370f9)
  - [via Cexplorer](https://cexplorer.io/governance/12)
  - [via Cardanoscan](https://cardanoscan.io/govAction/gov_action1nd3t833j7v5sz65k3tp9yyvztw60sjcjgcgjr37682s3m7frwrusqmd2k80)
  - [via GovTool](https://gov.tools/governance_actions/9b62b3c632f329016a968ac25211825bb4f84b12461121c7da3aa11df92370f9#0)
  - [via Tempo.vote](https://tempo.vote/governance-actions)

### Files

- [Raw metadata JSON Document](./metadata.jsonld)
- [Rendered Markdown (Human Readable)](./metadata.jsonld.md)

### Action Files

Provided in this directory are the `cardano-cli` governance action file which will be submitted:

- [New Constitution Action File](./info-action-ncl.action)
- [Action file JSON (human readable)](./info-action-ncl.action.json)

### Verification

It is recommended that third parties audit and verify the contents of this directory.

#### Check Metadata anchor hash

Using `cardano-cli` (without cloning).

```shell
export IPFS_GATEWAY_URI="https://ipfs.io/"
cardano-cli hash anchor-data --url ipfs://bafkreiaqno22swabd3kcqt2awtgwaucdzaagacoemxwadm3exrchhnfite
```

Using `b2sum` (without cloning).

```shell
curl -s https://raw.githubusercontent.com/IntersectMBO/mainnet/2025-03-25-infoncl/metadata.jsonld | b2sum -l 256
```

#### Check action file

#### Check JSON

Ensure the provided action file JSON is representative of the action.

Using `cardano-cli`.

```shell
cardano-cli conway governance action view --action-file <(curl -s https://raw.githubusercontent.com/IntersectMBO/mainnet/2025-03-25-infoncl/info-action-ncl.action)
```

#### Inspect values

1. Ensure the `anchor` values are as expected - matching the values in this repo.

2. Ensure `governance action` type is as expected, and has the on-chain effect intended - as described by the metadata in this repo.

3. Ensure `return address` is for the correct network, registered and expected.
