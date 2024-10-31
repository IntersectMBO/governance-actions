# Governance Actions Repository

This repository is intended to hold governance action anchor metadata, for actions submitted on behalf of Intersect committees, including the Technical Steering Committee.

## Navigation

### [Mainnet](./mainnet/)

- [Protocol Parameter Update - Plutus Cost Model](./mainnet/2024-10-21-ppu/README.md)
  - [Rendered Human Readable Metadata](./mainnet/2024-10-21-ppu/metadata.jsonld.md)
  - [JSON Source](./mainnet/2024-10-21-ppu/metadata.jsonld)

### [PreProd Testnet](./preprod/)

- [Protocol Parameter Update - Plutus Cost Model](./preprod/2024-10-21-ppu/README.md)
  - [Rendered Human Readable Metadata](./preprod/2024-10-21-ppu/metadata.jsonld.md)
  - [JSON Source](./preprod/2024-10-21-ppu/metadata.jsonld)

### [Preview Testnet](./preview/)

- [Protocol Parameter Update - Plutus Cost Model](./preview/2024-10-21-ppu/README.md)
  - [Rendered Human Readable Metadata](./preview/2024-10-21-ppu/metadata.jsonld.md)
  - [JSON Source](./preview/2024-10-21-ppu/metadata.jsonld)

- [Hardfork Initiation - Protocol version 10.0](./preview/2024-10-30-hf10/README.md)
  - [Rendered Human Readable Metadata](./preview/2024-10-30-hf10/metadata.jsonld.md)
  - [JSON Source](./preview/2024-10-30-hf10/metadata.jsonld)


### [Helper Scripts](./scripts/)

#### Create markdown file from JSON source

```shell
./scripts/create-human-readable-from-json.sh /path-to-jsonld/
```

#### Hash JSON source files

Uses `cardano-cli` and `bl2sum` to hash the JSON source file.

```shell
./scripts/hash-json.sh /path-to-jsonld/
```
