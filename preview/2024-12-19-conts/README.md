## 2024-12-19 Cardano Constitution to Replace the Interim Constitution

### On-Chain Details

- Transaction:

- Metadata Anchor Hash (`blake2b-256`): `4b2649556c838497ee2923bdff0f05b48fb2f0c3c5cceb450200f8bd6868ac5b`
- Metadata Anchor URI: <https://raw.githubusercontent.com/IntersectMBO/governance-actions/refs/heads/main/preprod/2024-12-19-consts/metadata.jsonld>

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
cardano-cli hash anchor-data --url https://raw.githubusercontent.com/IntersectMBO/governance-actions/refs/heads/main/preview/2024-12-19-conts/metadata.jsonld
```

Using `b2sum` (without cloning).

```shell
curl -s https://raw.githubusercontent.com/IntersectMBO/governance-actions/refs/heads/main/preview/2024-12-19-conts/metadata.jsonld| b2sum -l 256
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
