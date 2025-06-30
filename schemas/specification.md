# Intersect Governance Action Metadata Standard

> Note: here for now, could move to CIPs in the future

These metadata objects extend the existing CIP-108 standard.

The motivation for this is to prevent metadata replay attacks.

## Common

### `onChain`

A object which can be used to duplicate the on-chain details of the governance action.

Details are included as a form of metadata replay protection.

#### `governanceActionType`

Enum ["treasuryWithdrawals", "info"]

todo add them all

#### `depositReturnAddress`

A field used to highlight the intended deposit return address.

Including this in the body helps against governance metadata replay.

#### `previousAction`

A field used to point to the intended previous action.

## Treasury Withdrawals

### `withdrawals`

A set of tuples of `withdrawal`s.

#### `withdrawal`

##### `withdrawalAddress`

Used to represent the intended destination of a treasury withdrawal.

This should be a stake/rewards address.

##### `withdrawalAmount`

Used to represent the amount of ada within a single withdrawal.

Denoted in lovelace.