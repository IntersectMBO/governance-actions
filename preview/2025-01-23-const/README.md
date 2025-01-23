## 2025-01-23 Cardano Constitution to Replace the Interim Constitution

### On-Chain Details

- Transaction:

- Metadata Anchor Hash (`blake2b-256`): `2f209685ba050b131b12d0b8e45e71d474e692afeb5bb8e0174f4b9e36be035d`
- Metadata Anchor URI: <ipfs://bafkreifgfs46wbdxkyrovc7wqhdksi6pfcvhyw5tbzfryfn4teg74eai3i>

### Details

- [JSON Document](./metadata.jsonld)
- [Rendered Human Readable Markdown](./metadata.jsonld.md)

### Action Files

Provided in this directory are the `cardano-cli` governance action file which will be submitted:

- [New Constitution Action File](./)
- [Action file JSON (human readable)](./)

### Verification

It is recommended that third parties audit and verify the contents of this directory.

#### Check hash

Using `cardano-cli` (without cloning).

```shell
cardano-cli hash anchor-data --url https://raw.githubusercontent.com/IntersectMBO/governance-actions/refs/heads/main/preview/2025-01-23-const/metadata.jsonld
```

Using `b2sum` (without cloning).

```shell
curl -s https://raw.githubusercontent.com/IntersectMBO/governance-actions/refs/heads/main/preview/2025-01-23-const/metadata.jsonld | b2sum -l 256
```

#### Check action file

#### Check JSON

Ensure the provided action file JSON is representative of the action.

Using `cardano-cli`.

```shell
cardano-cli conway governance action view --action-file <(curl -s https://raw.githubusercontent.com/IntersectMBO/governance-actions/refs/heads/main/preview/2024-12-19-conts/XXXX.action)
```

#### Inspect values

1. Ensure the `anchor` values are as expected - matching the values in this repo.

2. Ensure `governance action` type is as expected, and has the on-chain effect intended - as described by the metadata in this repo.

3. Ensure `return address` is for the correct network, registered and expected.
