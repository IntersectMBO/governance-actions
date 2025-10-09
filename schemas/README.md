# Schemas

The purpose of this directory is to store, JSONLD schemas Intersect will use
when submitting governance actions.

These are extensions to [CIP-100 | Governance Metadata](https://github.com/cardano-foundation/CIPs/blob/master/CIP-0100/README.md) which add new fields.

These definitions maybe discovered by the `@context` within Intersect submitted governance actions.

These schemas may live at the CIPs repository in the future.

## Aim

The general aim is to make governance actions safer.

By placing the on-chain effect within the body of the action we facilitate automated checks of singed metadata (`body`) and the on-chain effects of a governance action.

This prevents a malicious actor from being able to replay, a legitimate governance action's metadata and just changing the on-chain effect, i.e. just changing a receiving address in a treasury withdrawal.

## Navigation

- [Specification](./specification.md)

- [Info Actions](./info/)
  - [common.jsonld](./info/common.jsonld)
  - [schema.common.jsonld](./info/schema.ommon.jsonld)
  - [examples](./info/examples/)

- [Treasury Withdrawals](./treasury-withdrawals/)
  - [common.jsonld](./treasury-withdrawals/common.jsonld)
  - [schema.common.jsonld](./treasury-withdrawals/schema.ommon.jsonld)
  - [examples](./treasury-withdrawal/examples/)

- [Protocol Parameter Changes](./parameter-changes/)
  - [common.jsonld](./parameter-changes/common.jsonld)
  - [schema.common.jsonld](./parameter-changes/schema.ommon.jsonld)
  - [examples](./parameter-changes/examples/)
