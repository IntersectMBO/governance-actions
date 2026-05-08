# Governance Actions

Anchor metadata for Cardano governance actions submitted on behalf of Intersect committees, plus the JSON-LD contexts and JSON Schemas used to author and validate that metadata.

The metadata documents in this repo are the same bytes whose `blake2b-256` hash is recorded in the on-chain `ProposalProcedure.anchor.dataHash`.
Each subdirectory is a single submission, named `YYYY-MM-DD-<short-tag>` after the submission date and action type.

## Navigation

### Submitted actions

- [Mainnet](./mainnet/) — production governance actions
- [PreProd](./preprod/) — PreProd testnet rehearsals
- [Preview](./preview/) — Preview testnet rehearsals

### Tooling

- [Schemas](./schemas/) — JSON-LD `@context` files and JSON Schemas, one subdirectory per governance action type (info, treasury withdrawals, protocol parameter changes, hard fork initiation, update committee). See [`schemas/README.md`](./schemas/README.md) for the per-type navigation and the versioning policy.
- [`intersect-author.json`](./intersect-author.json) — Intersect's authorship public key + verification message, used to attest authorship of governance action metadata signed by Intersect.
- [`ratification-queries/`](./ratification-queries/) — SQL queries and methodology used to assess off-chain ratification thresholds for Info actions.

### Companion repos

- [`IntersectMBO/governance-scripts`](https://github.com/IntersectMBO/governance-scripts) — shell scripts for authoring, signing, validating, hashing, IPFS-pinning, and assembling on-chain governance action transactions from the metadata in this repo.

## Schemas

Each tagged release (`schemas-vX.Y.Z`) is published to GitHub Pages under a version-pinned URL — the `@context` URL string is part of the document hash, so anchored documents must reference a pinned version, never `/latest/`.

```
https://intersectmbo.github.io/governance-actions/vX.Y.Z/schemas/<type>/common.jsonld
```

Latest tag: **`schemas-v1.1.1`**. Full release/versioning policy: [`schemas/README.md#versioning`](./schemas/README.md#versioning).
