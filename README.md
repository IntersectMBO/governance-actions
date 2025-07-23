# Governance Actions Repository

This repository is intended to hold governance action anchor metadata, for actions submitted on behalf of Intersect committees, including the Technical Steering Committee.

## Navigation

### [Mainnet](./mainnet/)

- [Protocol Parameter Update - Plutus Cost Model](./mainnet/2024-11-04-ppu/README.md)

- [Hardfork Initiation - Protocol version 10.0](./mainnet/2024-10-30-hf10/README.md)

- [Info Action - Rename Chang #2 Hard Fork to the Plomin Hard Fork](./mainnet/2024-11-19-infohf/README.md)

- [New Constitution - Replace the Interim Constitution](./mainnet/2025-01-30-const/README.md)

- [Info Action - Defining the Cardano Vision and Roadmap for 2025 and beyond](./mainnet/2025-02-27-inforoadmap/README.md)

- [Info Action - Cardano Blockchain Ecosystem Budget - 275M ada Administered by Intersect](./mainnet/2025-05-12-infobudget/README.md)

### [PreProd Testnet](./preprod/)

- [Protocol Parameter Update - Plutus Cost Model](./preprod/2024-11-04-ppu/README.md)

- [Hardfork Initiation - Protocol version 10.0](./preprod/2024-10-30-hf10/README.md)

### [Preview Testnet](./preview/)

- [Protocol Parameter Update - Plutus Cost Model](./preview/2024-10-21-ppu/README.md)

- [Hardfork Initiation - Protocol version 10.0](./preview/2024-10-30-hf10/README.md)

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
