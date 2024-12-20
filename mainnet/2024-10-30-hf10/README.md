## 2024-10-30 Hard Fork to Protocol Version 10

### On-Chain Details

- Transaction:

- Metadata Anchor Hash (`blake2b-256`): `8a1bd37caa6b914a8b569adb63a0f41d8f159c110dc5c8409118a3f087fffb43`
- Metadata Anchor URI: <https://raw.githubusercontent.com/IntersectMBO/governance-actions/refs/heads/main/preprod/2024-10-30-hf10/metadata.jsonld>

### Details

- [JSON Document](./metadata.jsonld)
- [Rendered Human Readable Markdown](./metadata.jsonld.md)
- [Linked Action on PreProd](../../preprod/2024-10-30-hf10/README.md)
- [Linked Action on Preview](../../preview/2024-10-30-hf10/README.md)

This action has an equivalent effect to the linked actions on Preview and PreProd, except that it takes into account the specific Mainnet conditions.

### Action Files

Provided in this directory are the `cardano-cli` governance action file which will be submitted:

- [Hardfork Action File](./hard-fork-10.0.action)
- [Action file JSON (human readable)](./hard-fork-10.0.action.json)

### Verification

It is recommended that third parties audit and verify the contents of this directory.

#### Check hash

Using `cardano-cli` (without cloning).

```shell
cardano-cli hash anchor-data --url https://raw.githubusercontent.com/IntersectMBO/governance-actions/refs/heads/main/mainnet/2024-10-30-hf10/metadata.jsonld
```

Using `b2sum` (without cloning).

```shell
curl -s https://raw.githubusercontent.com/IntersectMBO/governance-actions/refs/heads/main/mainnet/2024-10-30-hf10/metadata.jsonld | b2sum -l 256
```

#### Check action file

#### Check JSON

Ensure the provided action file JSON is representative of the action.

Using `cardano-cli`.

```shell
cardano-cli conway governance action view --action-file <(curl -s https://raw.githubusercontent.com/IntersectMBO/governance-actions/refs/heads/main/mainnet/2024-10-30-hf10/hard-fork-10.0.action)
```

#### Inspect values

1. Ensure the `anchor` values are as expected - matching the values in this repo.

2. Ensure `governance action` type is as expected, and has the on-chain effect intended - as described by the metadata in this repo.

3. Ensure `return address` is for the correct network, registered and expected.
