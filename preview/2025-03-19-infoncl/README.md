## 2025-03-19 Net Change Limit

### On-Chain Details

- Metadata Anchor Hash (`blake2b-256`): `dd3f65984ebe544fb9c248c5b0243864322f5fec8d1a47cf6cd62083c1e47152`
- Metadata Anchor URI: <ipfs://bafkreiffcreipjox3pgo7z7id553445l3n3cwmg4nx7e2qbhuw3p2nslma>

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
cardano-cli hash anchor-data --url ipfs://bafkreib3biqrcykghppd5uk4ex27jzltuh43gtvtv5hhdzsw6fjarneh3q
```

Using `b2sum` (without cloning).

```shell
curl -s https://raw.githubusercontent.com/IntersectMBO/ | b2sum -l 256
```

#### Check action file

#### Check JSON

Ensure the provided action file JSON is representative of the action.

Using `cardano-cli`.

```shell
cardano-cli conway governance action view --action-file <(curl -s https://raw.githubusercontent.com/IntersectMBO/governance-actions/refs/heads/main/)
```

#### Inspect values

1. Ensure the `anchor` values are as expected - matching the values in this repo.

2. Ensure `governance action` type is as expected, and has the on-chain effect intended - as described by the metadata in this repo.

3. Ensure `return address` is for the correct network, registered and expected.
