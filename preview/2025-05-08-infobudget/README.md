## 2025-05-08 Info budget

### On-Chain Details

- Metadata Anchor Hash (`blake2b-256`): `b95d8f8e324e9863905f16dbad94c1f25b28b933ae842e6f8ce9841c8da5b197`
- Metadata Anchor URI: <ipfs://bafkreibeajhkes7bxjlkghkingcgltqcwazz2ya5oknveqwt5nont7tg6u>

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
curl -s https://raw.githubusercontent.com/IntersectMBO/preview/2025-05-08-infobudget/metadata.jsonld | b2sum -l 256
```

#### Check action file

#### Check JSON

Ensure the provided action file JSON is representative of the action.

Using `cardano-cli`.

```shell
cardano-cli conway governance action view --action-file <(curl -s https://raw.githubusercontent.com/IntersectMBO/preview/2025-05-08-infobudget/info-action-ncl.action)
```

#### Inspect values

1. Ensure the `anchor` values are as expected - matching the values in this repo.

2. Ensure `governance action` type is as expected, and has the on-chain effect intended - as described by the metadata in this repo.

3. Ensure `return address` is for the correct network, registered and expected.
