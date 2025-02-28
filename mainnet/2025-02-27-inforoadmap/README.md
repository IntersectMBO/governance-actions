## 2025-02-27 Defining the Cardano Vision and Roadmap for 2025 and beyond

### On-Chain Details

- Transaction id: `56f39054758f1a3cedc1de9225d66bf270b62dfdbfbc5399f1d6d43aceffc636`

- Metadata Anchor Hash (`blake2b-256`): `b160033b47dfc31885c297c55ba6b68afaf7561da3070eced93d84ad70d8f5b3`
- Metadata Anchor URI: <ipfs://bafkreiada4nn5eaezg43esieduks6l57vzkjdo2yfby7yxv6jrat7ilrdq>

Governance action:
- [via Adastat](https://adastat.net/governances/56f39054758f1a3cedc1de9225d66bf270b62dfdbfbc5399f1d6d43aceffc63600)
- [via Cexplorer](https://cexplorer.io/governance/10)
- [via Cardanoscan](https://cardanoscan.io/govAction/gov_action12meeq4r43udremwpm6fzt4nt7fctvt0ah7798x036m2r4nhlccmqqhmr9wx)
- [via GovTool](https://gov.tools/governance_actions/56f39054758f1a3cedc1de9225d66bf270b62dfdbfbc5399f1d6d43aceffc636#0)
- [via Tempo.vote](https://tempo.vote/governance-actions)

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
cardano-cli hash anchor-data --url ipfs://bafkreiada4nn5eaezg43esieduks6l57vzkjdo2yfby7yxv6jrat7ilrdq
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
cardano-cli conway governance action view --action-file <(curl -s https://raw.githubusercontent.com/IntersectMBO/governance-actions/refs/heads/main/mainnet/2025-02-27-inforoadmap/info-action-roadmap.action)
```

#### Inspect values

1. Ensure the `anchor` values are as expected - matching the values in this repo.

2. Ensure `governance action` type is as expected, and has the on-chain effect intended - as described by the metadata in this repo.

3. Ensure `return address` is for the correct network, registered and expected.
