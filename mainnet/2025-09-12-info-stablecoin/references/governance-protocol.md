# Stablecoin DeFi Liquidity Budget

## Governance Protocol

This document describes the general rules and responsibilities of the administrating committee for the Cardano DeFi Liquidity Budget. The administrating committee should follow these instructions except in extreme situations. The treasury DAO (tDAO) is the ultimate arbiter on whether the committee is following the guidelines defined here, and whether breaking from the standards defined here warrant action through its oversight responsibilities.

Changes to this Governance Protocol should be made by way of an Info Action, and must be accepted if it passes according to Info Action governance rules. The only way in which this Governance Protocol cannot be modified even through a successful Info Action vote is if the Immutable Section is violated or modified in any way.

## Immutable Section

This section MAY NOT be modified by any future Info Actions, and any Info Action that attempts to modify the Governance Protocol that does not contain this section exactly as it is presented here will be considered invalid.

The administrating committee MUST follow all terms of this protocol. First and foremost, if an Info Action that aims to modify this protocol passes according to the criteria of Info Actions in the Cardano Constitution, the administrating committee MUST adopt all terms of the new protocol unless the Immutable Section has been modified in any way. Changes to the protocol MAY include anything up to and including closure of the fund and/or changing the requirements of who may serve on the committee. The tDAO MUST have a smart contract mechanism that can be used to close the fund at any time and for any reason, but the Info Action serves as a secondary mechanism that can be used to close the fund.

The committee MUST reject new protocols (even if they pass Info Action vote) if:

* It does not contain this section exactly as worded here  
* Immutable links to all prior versions of the Governance Protocol must be included in the info action  
* Changes would necessarily result in loss of funds

The fund must always be operated from a smart contract. Updates to the smart contract may be proposed and created, but a new smart contract MUST always contain:

* A requirement that at least 4 members of a committee are required for spending actions EXCEPT for sending funds back to the treasury  
* The tDAO MUST always be composed of voting members of the Cardano community, whether this is individuals or dReps or any future voting structure.  
* The tDAO MUST always have the capacity to disable the ability for the committee to act  
* Even when the committee actions are disabled or the fund is closed, there MUST always be a mechanism for sending funds back to the treasury  
* The ability of both the committee and the tDAO to impeach any committee member, i.e. there should be the ability to remove any committee member without requiring a replacement. This is predominantly a security measure to ensure quick action to remove a member who has had a leaked signing key.

All members of the committee MUST use a Cardano hardware wallet that is newly generated and which will only ever be used for signing contract committee actions. If a wallet used by a committee member is ever discovered to be hosted on anything other than a hardware wallet, the signing keys are exposed, or any other potential security breach is suspected, the rest of the committee must be informed immediately and the signing key should be impeached.

## Committee Composition

The committee can be composed of any number of members and MUST have a majority voting threshold, with a minimum of 4 signatures always required for any spending action. This means that there are 8 members of the committee, 5 signatures (a majority) are required for signing. If there are only 4 or 5 members, then 4 signatures are required for any spending action. New members can be elected through the tDAO election mechanism.

Membership in any organization does not prevent any person from being on the committee, but there should never be more than one person from the same organization. Membership in an organization or protocol that might receive liquidity from this fund may also be elected to the committee, but the community must be made aware of the potential conflict of interest to ensure a transparent election process.

Committee members should have broad knowledge across many domains including finance, Cardano DeFi, smart contracts, communication, business, and regulations. This is not an exhaustive list and individual members need not have experience across all domains, but the goal is to have broadly experienced and knowledgeable committee members to ensure the success of the fund as well as the capability of communicating the status of the fund to the broader Cardano community.

The committee should be globally diverse for practical reasons. It is important that committee members come from a broad range of time zones to provide a high probability that in times of emergency at least 4 committee members will be available to take action. Having a globally diverse committee also helps mitigate potential issues due to natural disasters and other events that may make many committee members unavailable due to local events.

## Ethical Considerations for the Committee

All committee members should disclose any conflicts of interest when deliberating on any proposal sent to the committee. Conflicts of interest include but are not limited to employment of the protocol, a history of working with a protocol including contract or consulting work, any significant involvement in the community of the protocol include DAO involvement or leadership positions, etc. In cases where a committee member is an employee of an organization that develops or runs a protocol, they should abstain from the vote. Other cases such as contract or consulting work may also consider abstaining on a case by case basis depending on the nature of the relationship.

## Term Limits

Community members have a maximum term limit of 3 years, after which they can be re-elected by the tDAO. The committee at the launch of the fund will serve a one year term from the time the smart contract receives funds, then the tDAO will have to elect a new committee. There is no limit to the number of terms any committee member may serve. When elections are held, the tDAO can specify a 1, 2 or 3 year term when electing a committee member. It may be advisable that at the first election the tDAO consider electing members to different length terms to ensure rolling elections so that more senior members of the committee can carry forward knowledge and information to incoming members.

## Retirement and Impeachment

In the event that a committee member retires or their signing keys are exposed, the committee must use their impeachment power to remove the member. In the case of a premature retirement (i.e. a committee member retires prior to the end of their term), the committee member should try to provide ample opportunity for the tDAO to elect a replacement committee member.

## Election

New committee members are elected by the tDAO using the election smart contract action. It is up to the tDAO to perform due diligence in establishing the identity and affiliations of the committee candidates. It is recommended that committee candidates perform some form of identity verification, but it is ultimately up to the tDAO to make all final determinations.

## Community Feedback

The administrating committee members should make themselves available to feedback and questions from the Cardano community. This includes attending events attended by Cardano community members, participating in community town halls and spaces, and providing reasonable opportunities to meet with community members. Examples of ways in which the committee should seek to engage with the community include establishment of a Telegram channel, Twitter posts, and scheduled town hall meetings. If the administrating committee does not respond or refuses to incorporate changes, the Cardano community should use the tDAO actions to make the contract inactive or remove committee members.

## Fund Composition

The goal of this budget is to increase fiat backed stablecoins. To briefly define terms:

* **Fiat backed, Cardano native stablecoins** \- Fiat backed Cardano native stablecoins are Cardano native stablecoins directly backed by treasury bills, money markets, etc.  
* **Non-fiat backed, Cardano native stablecoins** \- Cardano native stablecoins that are designed be pegged to USD but are not directly backed by fiat (i.e. CDP, algorithmic, etc)  
* **Bridged stablecoins** \- Stablecoins that represent a bridged asset.

With these definitions in mind, the liquidity fund should be composed as follows:

* ADA must make up 35% or less of deployed liquidity \- this is intended to be paired with tokens on DEXs  
* Remainder of deployed liquidity must be **fiat backed, Cardano native stablecoins**

## Funding Considerations

The committee should carefully consider a balance between fragmenting liquidity and picking winners and losers. A good balance of this is to pick no more than 2 recipients of liquidity for each DeFi category. For example, no more than 2 fiat backed stablecoins, 2 decentralized exchanges, 2 lending protocols, etc. The committee may choose to only pick one of each category, but commit to a rotation schedule to help distribute the liquidity to different protocols over time.

When considering distribution of funds to a protocol, there are many things the committee should consider. While the primary goal of the fund is to deploy treasury funds into the ecosystem (accomplished by protocols receiving liquidity), the secondary goal is to generate a sustainable revenue stream for the treasury. Thus, yield on liquidity should be highlighted in every proposal for funds, but yield alone should not be the sole deciding factor. The committee should also consider the following factors when selecting DeFi protocols:

* Batcher decentralization (if applicable)  
* Contract audits (all reports should be provided)  
* Open source contracts  
* History of success  
* Existing liquidity

In addition to the above criteria, proposals should include a plan for growth and attracting new liquidity. The goal of the fund is to provide liquidity to the ecosystem to help attract more liquidity, and protocols should be active participants in this vision and have a proactive plan for being involved in attracting new liquidity. Plans for attracting more liquidity may include integrations with new protocols that aim to attract liquidity from traditional finance and other blockchains (e.g. Bitcoin, Ethereum, etc).

The committee should create an open call for proposals at least once per year. Protocols that receive funding must re-apply to keep funds in the protocol. This serves to ensure funded protocols keep a competitive edge and new protocols have an opportunity to receive funding.

## Committee Responsibilities

### Monitoring

The committee is expected to monitor the fund and respond quickly to any potential issues that might arise. Part of having a globally diverse committee is to ensure sufficient numbers of committee members are available to take emergency actions at any time of day, as well as to ensure regional crises don’t impact (i.e. natural disasters) have an outsized impact on the committee to take action.

In addition to monitoring the fund, they are also expected to keep each other accountable for security. Best practices in security should always be used, including the use of hardware wallets and fresh addresses dedicated only to use in operating the fund.

### Reporting

The administrating committee MUST release a status report at least once each calendar month. Reports must include at a minimum total liquidity held by the administrating committee contract, amount of deployed liquidity, amounts deployed to each protocol, total revenue generated, total sent to Cardano treasury, and itemized costs.

## Stipend

The committee shall be paid $1,000 per month for work performed managing funds. Any committee member may choose to forego part or all of the stipend, and payments to each member should be documented in the monthly report. Stipends are necessary to ensure social and legal obligations of the committee to perform their activities, and pay them for delivering reports and their duty to monitor the fund to take any needed actions to protect it.

## Treasury Revenue

The monthly report MUST indicate total revenue and costs. 15% of the total revenue minus costs must be sent back to the treasury and indicated in the monthly report. The other 85% of the monthly gains should pay costs and remain in protocols to be capitalized. The $1000 per month stipend for committee members can be paid from the initial fund capital for the first 6 months, but after 6 months committee stipends will be paid out of the 85% intended to stay in protocols. If the monthly revenue is not high enough to pay committee members, then 85% of the monthly revenue will be split between committee members. This means that after 6 months, the committee may only be paid on earned interest and may NEVER take money from the core capital of the fund to be paid.

As an example, say there is only $2,000 in monthly revenue a year after the fund is created. Then 15% ($300) will be converted to ADA and sent back to the treasury. The remaining $1700 would be split between the committee members since there is insufficient amount to pay the full stipend to committee members. In this case, committee members receive \~$188.

A more realistic example assuming a 4% yearly APY would have approximately $166,666 in monthly revenue. With these numbers, $25,000 would be converted to ADA and sent to the treasury (15%), $9,000 would be used to pay committee members (assuming 9 committee members), and $132,666 would remain in the protocols and added to the total capital value of the fund.

### How is revenue calculated?

Calculating revenue for lending protocols is straight forward. The value deposited into the protocol is recorded at the beginning of the month, and the increase in value is calculated at the end of the month.

Liquidity provided to DEXs are more challenging to track since the value of the liquidity tokens varies with price fluctuations and fee accumulation, which can make it difficult to determine fee accumulation.

One approach to calculating this for constant product pools (the predominant pool type on Cardano) is to use the constant product formula to determine fee accumulation as a ratio of the start and end pool values that is invariant to price fluctuations.

Very briefly, if AS and BS are the starting amounts of tokens A and B, and AE and BE are the ending amount of token A and B, then the following inequality must be true:

ASBS  AEBE

If no trading occurs, then the left hand side and right hand side will be equal, but as soon as any trading activity occurs on a pool with fees, then the right hand side must be greater than the left hand side. The increase in value of liquidity can be calculated by dividing the right hand side (the product of the end token quantities) by the left hand side (the product of the start token quantities). However, the revenue increase will be related to the square of actual revenue since the values are multiplied together, so the ratio should be normalized by taking the square root. Thus, the price agnostic fee revenue can be calculated as a percentage of total LP using the following formula:

Fee Revenue % \= 100  AEBEASBS \- 1 

Using this equation, the fee revenue between the starting and ending points can be calculated as a percentage of the value of the liquidity in the pool. Thus, if the fund has 10 million ADA and 10 million stablecoin of liquidity in the pool and the fee revenue for the month is 1%, that means that 100,000 ADA and 100,000 stablecoin (1% of the supplied liquidity) is the fee revenue for the month.

## Costs

There may be sporadic and recurring costs. Recurring costs may include things such as bookkeeping and accounting, and should be deducted from monthly revenue. These costs should be clearly defined in the monthly report. For sporadic costs such as those required for legal disputes, the committee should communicate to the broader community the nature of the cost, create RFPs and seek competitive bids when appropriate, and collect feedback prior to taking action.