## 2025-05-08 Info budget

### On-Chain Details

- Metadata Anchor Hash (`blake2b-256`): `6e817c9a7c01cd2c78ca6986ed6b6ab8b5cc32518698859de48a2147cc66df8d`
- Metadata Anchor URI: <ipfs://bafkreiaq3zehxdzveaxpyaudeeeiaca7ccm7jc3sneucgkowludm6akzi4>

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
