## 2025-05-12 Info budget

### On-Chain Details

- Metadata Anchor Hash (`blake2b-256`): `b95d8f8e324e9863905f16dbad94c1f25b28b933ae842e6f8ce9841c8da5b197`
- Metadata Anchor URI: <ipfs://bafkreibeajhkes7bxjlkghkingcgltqcwazz2ya5oknveqwt5nont7tg6u>

Transaction id: `e14de8d9dc4f4ddf3fe9250a8a926e20f10e99b86bd0610b77d7a054981591ee`

Governance action links:
  - [via Adastat](https://adastat.net/governances/e14de8d9dc4f4ddf3fe9250a8a926e20f10e99b86bd0610b77d7a054981591ee00)
  - [via Cexplorer](https://cexplorer.io/governance/18)
  - [via Cardanoscan](https://cardanoscan.io/govAction/gov_action1u9x73kwufaxa70lfy59g4ynwyrcsaxdcd0gxzzmh67s9fxq4j8hqqk2phgh)
  - [via GovTool](https://gov.tools/governance_actions/e14de8d9dc4f4ddf3fe9250a8a926e20f10e99b86bd0610b77d7a054981591ee#0)
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
cardano-cli hash anchor-data --url ipfs://bafkreibeajhkes7bxjlkghkingcgltqcwazz2ya5oknveqwt5nont7tg6u
```

Using `b2sum` (without cloning).

```shell
curl -s https://raw.githubusercontent.com/IntersectMBO/mainnet/2025-05-12-infobudget/metadata.jsonld | b2sum -l 256
```

#### Check action file

#### Check JSON

Ensure the provided action file JSON is representative of the action.

Using `cardano-cli`.

```shell
cardano-cli conway governance action view --action-file <(curl -s https://raw.githubusercontent.com/IntersectMBO/mainnet/2025-05-12-infobudget/info-action-budget.action)
```

#### Inspect values

1. Ensure the `anchor` values are as expected - matching the values in this repo.

2. Ensure `governance action` type is as expected, and has the on-chain effect intended - as described by the metadata in this repo.

3. Ensure `return address` is for the correct network, registered and expected.
