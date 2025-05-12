## 2025-05-08 Info budget

### On-Chain Details

- Metadata Anchor Hash (`blake2b-256`): `371b882e12f7f18ab353e603baea16ad726118259685e6a92199ae8c15a35459`
- Metadata Anchor URI: <ipfs://bafkreih5oimps4tw7nlvssa7czfe24jc4ld6llzgnhdfzuxxnon3t7rcku>

### Files

- [Raw metadata JSON Document](./metadata.jsonld)
- [Rendered Markdown (Human Readable)](./metadata.jsonld.md)

### Verification

It is recommended that third parties audit and verify the contents of this directory.

#### Check Metadata anchor hash

Using `cardano-cli` (without cloning).

```shell
export IPFS_GATEWAY_URI="https://ipfs.io/"
cardano-cli hash anchor-data --url ipfs://bafkreih5oimps4tw7nlvssa7czfe24jc4ld6llzgnhdfzuxxnon3t7rcku
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
