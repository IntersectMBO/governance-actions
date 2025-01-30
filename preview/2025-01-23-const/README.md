## 2025-01-23 Cardano Constitution to Replace the Interim Constitution

### On-Chain Details

- Transaction:

- Metadata Anchor Hash (`blake2b-256`): `d085e5af96521ae2670400e76c3a1e4b4eb902139ddaa83bde7580e7e9d7ddec`
- Metadata Anchor URI: <ipfs://>

#### Action Specific Details

- New Constitution URI: <ipfs://bafkreiazhhawe7sjwuthcfgl3mmv2swec7sukvclu3oli7qdyz4uhhuvmy>
- New Constitution Hash (`blake2b-256`): `2a61e2f4b63442978140c77a70daab3961b22b12b63b13949a390c097214d1c5`

- Guardrails script Hash (`blake2b-224`): `fa24fb305126805cf2164c161d852a0e7330cf988f1fe558cf7d4a64`

### Files

- [Raw metadata JSON Document](./metadata.jsonld)
- [Rendered Markdown (Human Readable)](./metadata.jsonld.md)

### Action Files

Provided in this directory are the `cardano-cli` governance action file which will be submitted:

- [New Constitution Action File](./)
- [Action file JSON (human readable)](./)

### Verification

It is recommended that third parties audit and verify the contents of this directory.

#### Check New Constitution hash

To check the new Constitution hash you have to set an IPFS gateway to use.
And then we can use `cardano-cli`.

```shell
export IPFS_GATEWAY_URI="https://ipfs.io/"
cardano-cli hash anchor-data --url ipfs://bafkreiazhhawe7sjwuthcfgl3mmv2swec7sukvclu3oli7qdyz4uhhuvmy
```

#### Check Metadata anchor hash

Using `cardano-cli` (without cloning).

```shell
export IPFS_GATEWAY_URI="https://ipfs.io/"
cardano-cli hash anchor-data --url ipfs://bafkreihum54fett3svvuototids4ra2dicxpzjzsjdrtfptgm5fvh7z2s4
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
