# Stablecoin DeFi Liquidity Budget

## Administrating Contract

## Purpose

This document describes the smart contract used to manage funds for the Cardano DeFi Liquidity Budget. Information included are concepts, mechanisms, and maximum budget.

## Overview

The smart contract establishes an elected 7 person committee, starting with the 9 interim members of the committee defined in the Cardano DeFi Liquidity budget proposal. Each committee member has a term limit defined by the smart contract, and may seek re-election by dReps. A treasury decentralized autonomous organization (tDAO) is established in the contract, made up of a snapshot of dReps. The snapshot is required since smart contracts currently have no mechanism of formally recognizing dReps. The snapshot can and should be refreshed periodically. In addition to electing members of the committee, the tDAO can both impeach committee members and/or disable the smart contract temporarily or permanently, only permitting funds to be sent back to the treasury.

This smart contract will be built and open sourced as a community resource along with two UIs: (1) a UI for committee members to coordinate and act and (2) a UI for dReps to participate in DAO actions. We believe making this contract and both UIs open source will enable similar such initiatives in the future, or at least create a starting place for new initiatives that may want or need community oversight.

## A Two Body System

The administrating contract can be thought of as a two body governing system. The **administrating committee** is a group of administrators that can perform actions like depositing funds to decentralized finance (DeFi) protocols, engaging 3rd parties for volume or time-weighted average price (V\&TWAP) or over the counter (OTC) deals for converting ADA to fiat, and paying member stipends or other costs (e.g. audits). The **treasury DAO (tDAO)** is composed of dReps and can take actions like create a no-confidence contract state that prevents any new committee actions other than sending funds back to the Cardano treasury, elect or remove new committee members, and setting/removing/changing an end of life for the fund.

This two body system is established to allow the administrators to take quick actions when needed (e.g. pulling liquidity from a protocol) and side step the long time horizon of public governance balanced by empowering the greater Cardano community to oversee the committee.

## Contract Mechanisms

### Treasury DAO Snapshots

There is currently no mechanism for allowing dReps to interact with smart contracts on Cardano. However, it is possible to store a snapshot of all dReps (along with voting weight) to permit voting actions for dReps. We believe an on-chain oracle solution would be ideal here, where a decentralized oracle could generate a snapshot of dRep public keys along with voting power on a specified interval (e.g. once per month). This could be stored as a datum and used as an input to voting actions.

**Note:** Our investigations of this suggest this might be a good candidate for a CIP. This will likely not be the last proposal or use case where dRep input or oversight of a smart contract is desirable.

### Contract Active State

The contract has an "active state", where the contract state determines what actions the administrating committee may take. When in an active state, the administrating committee can take any of the actions outlined under the Administrating Committee Actions. When in an inactive state, the committee may only "close" the fund by sending funds back to the treasury.

Only the tDAO may set the contract state by a 51% vote, with a 25% quorum.

The contract state is defined by a simple active/inactive state and an optional validity range, having a lower and upper bound. The validity range only applies to the active state, and defines the range of times within which the administrating committee can take actions. If the current time is prior to the lower bound, then the committee cannot take actions until the lower bound time. This is helpful in potentially risky situations such as all members of the committee might attend the same conference, so the treasury DAO can set the lower validity range to beyond the time of the conference so that if all keys of the committee were exposed then no actions could be taken. Setting the upper validity range allows the tDAO to set a "fund end date", meaning if no action is taken by the tDAO then the fund will be closed and the only permitted action will be to send funds back to the treasury.

### Administrating Committee Actions & Features

1. Spend \- Funds in the contract can be sent to protocols, third parties, or used to re-organize UTxOs with a majority of signatures unless the contract is in an inactive state (or outside the validity range).  **The spend function can only be used when the contract is in an active state.**  
2. Impeach \- 4 committee members can remove any member of the committee. This serves to not only allow committee members to be impeached, but also to allow the committee to quickly remove a key that might have been publicly exposed.  
3. Term Limits \- In addition to the contract active state having a validity range, each committee member will also have a validity range tied to their public key. The term can be no longer than 3 years. See below for elections, where a member can be "re-elected" by updating the datum for a signing key with a new validity range by the tDAO.  
4. Close Fund \- If the contract is in an inactive state, the only spend action permitted by the committee is sending funds back to the treasury. The tDAO can enable the contract at any time, so the administrating committee should make sure to coordinate with dReps before sending funds back to the treasury.

**Note:** The administrating committee cannot elect new members, so the impeachment action is considered an emergency action that allows the committee to move more quickly than the tDAO might be able to move.

### Treasury DAO Actions

All tDAO actions are voting actions. Only one voting action may be active at a time. Since dReps require 500 ADA to register as a dRep, simply requiring all members of the tDAO to be dReps helps to prevent voting spam. For all voting actions, the voting period will be 5 complete epochs. The dRep snapshot determines the voting power of each member of the tDAO.

1. Set State (51% to pass, 25% quorum) \- The treasury DAO can set the state to active or inactive. Setting the state as inactive is one way the treasury DAO can create a **no confidence** vote, preventing the committee from taking further action. When active, a validity range with an upper and lower bound can be set that defines the times when the state of the contract is active. An activity state can have a validity range with null values for either the upper or lower bounds (or both), where null indicates no bound is set. For example, if no upper or lower bound is set and the contract is active, then there is no beginning or end to the active state bounds.  
2. Elect (51% to pass, 25% quorum) \- The treasury DAO can elect or re-elect new members. Election consists of adding a signing key with a validity range. Re-election consists of updating the validity range of an existing signing key.  
3. Impeach (51% to pass, 25% quorum) \- The treasury DAO can remove any committee member regardless at any time without a replacement.  
4. Committee Size Parameter (51% to pass, 25% quorum) \- There should be a committee size parameter that should be initialized with 9 (the number of people on the interim committee). It is recommended that this is changed to 7 after the first year. The committee size parameter should always be odd and determines the voting threshold. There should never be more active voting keys than the committee size parameter, but there can always be fewer. The committee size parameter also determines the voting threshold, which should always be a majority. For example, if there are 8 or 9 committee members then the voting threshold should be 5\. The voting threshold can never be smaller than 4 regardless of the number of committee members.  
5. Update Snapshot (51% to pass, 25% quorum) \- Ideally the dRep snapshot is handled by an oracle that generates a datum containing all dReps and voting power on a regular schedule. However, it may be necessary to manually trigger a snapshot update, so the treasury DAO can vote to update the dRep snapshot.

## Contract Initialization

The contract should be initialized with 9 members and their own unique signing keys. The term for each of the members should be 13-14 months, allowing the contract to be set up prior to the withdrawal action to receive funds and extending 1 year after the funds are withdrawn from the treasury.

Even at contract initialization, it is possible for dReps to impeach or elect new members. There is no need to wait for the end of the interim committee term to hold elections.

## Closing the Fund

If the Cardano community decides to close the fund, either directly by vote or indirectly by no vote, the committee members are obligated to return funds back to the treasury AFTER conferring with the community to determine if there is intent to re-activate it.

If the committee resists sending funds back to the treasury, the tDAO may always re-elect a new interim committee whose sole purpose is sending funds back to the treasury.

## Development

This document provides a high level overview of the basic mechanisms the administrating contract should have in place, and does not contain fine grained implementation details. The administrating committee defined in the Info Action will solicit requests for proposals (RFPs) for development of the smart contract. For technical and practical reasons, some details may not be possible to implement and proposals must describe not only how the contract will be implemented but also any deviations from what is described in this document. The administrating committee will review proposals and make them publicly available for public review. One proposal will be selected and included in the withdrawal action used to fund the building and auditing of the proposal. The goal will be to make the administrating contract open source since the funds are provided by the treasury, but could be made closed source if there are sufficient security concerns. Part of the development process will be to include a UI for the administrating committee to perform actions and another UI for the tDAO to perform actions.

## Withdrawal, Budget, and Timeline

Since the contract will not be created prior to the first withdrawal, the administrating committee will use the Amaru contract to administer and pay for construction and auditing of the smart contract. The withdrawal into the Amaru contract will not be performed prior to the existence of a legal entity to house the treasury fund.

A maximum of 250,000 ADA is budgeted for the construction of the smart contract, but only the necessary amount to build and audit the smart contract will be withdrawn. Upon submission of the info action for this budget, we will solicit bids to build and audit the smart contract defined by the RFPs below. When submitting the withdrawal action, the full proposals from each selected group for building and auditing will be included in the withdrawal action, and only the necessary amount up to 250,000 ADA will be withdrawn. The difference between the 250,000 ADA and total cost of the building and auditing of the contract will be added to the subsequent withdrawal action to be used for deploying liquidity into the ecosystem.

