# GovTool Treasury Withdrawal Action

## Title

Withdraw ₳1,150,000 for GovTool 12 months active maintenance and development

## Abstract

This Treasury Withdrawal funds **12 months** of full active maintenance and development for GovTool, the open-source, community-owned set of governance tools that form Cardano’s core low-barrier platform for participation in on-chain governance.

GovTool enables ada holders to register, delegate, propose, vote, and transparently view outcomes. It is actively maintained and expanded by the Cardano GovTool Consortium which consists of ByronNetwork, WeDeliver, LidoNation and Dquadrant with additional open source contributors, guided by the Governance Tools Working Group.

Funding will ensure operational stability, incentivisation for community contributions, support for other open source governance tools using GovTool open-source code and APIs, and deliver accelerated functional updates across all governance pillars. Any unused funds will be returned to the Cardano Treasury.

This withdrawal follows the approved budget Info Action for ₳1.15M (gov\_action1n5sn54mgf47a7men2ryq6ppx88kta4wvenz2qkl4f9v6ppje8easqxwm88m) and it will be administered by Intersect via smart contract framework, fulfilling the constitutional requirement to detail the proposed solution, its alignment to the approved budget, and the amount to be withdrawn.

## Motivation

This proposal addresses the risk of governance participation becoming fragmented or dependent on closed-sourced, privately-owned, commercialised tools. In Cardano’s Voltaire era, without an open, neutral, and accessible platform like GovTool, Cardano’s decentralisation and legitimacy would be weakened.

GovTool is already widely used:

* 50,000+ unique mainnet users across 170+ countries (metrics via [analytics.gov.tools](https://analytics.gov.tools/))  
* Three networks supported  
* Thousands of governance transactions  
* Integration with ecosystem tools (1694.io, cardanobudget.com, tempo.vote, Governancespace.com, budget.cardano.africa, 1694.tools, and others)

Funding will preserve and expand this infrastructure, sustain its open source nature, and ensure it continues to serve as a public good underpinning Cardano governance. Furthermore, it will onboard more individual contributors making maintenance more distributed and efficient going forward.

* [GovTool repository (voting and delegation pillars)](https://github.com/IntersectMBO/govtool/)  
* [Proposal Pillar repository](https://github.com/IntersectMBO/govtool-proposal-pillar)  
* [Outcomes Pillar repository](https://github.com/IntersectMBO/govtool-outcomes-pillar)

## Rationale

### **Project Solution**

As approved in the Budget Info action, the funding will deliver:

Hosting, infrastructure maintenance, CI-CD, security, and minimum maintenance of

* $5k / ₳6.25k per month for hosting costs (further detailed breakdown [here](https://docs.gov.tools/important-updates/govtool-maintenance-ending-soon/updated-budget-proposal/budget-proposal-faqs#whats-included-in-the-usd5000-per-month-for-hosting)) including Dev, QA environments for the dev of each of the pillars and Preview, PreProd and Mainnet production environments  
* $30k / ₳37.5k (0.25 FTE) for 12 months of infrastructure maintenance

Incentives for contributors

* ₳150,000 to be allocated organically via direct contribution on the repos  
* ₳100,000 to be allocated to other open source governance tools that provide new and better ways to participate in Cardano Governance leveraging (and where possible expanding) GovTool code or GovTool APIs  
* Note: it is planned to utilize the [Andamio platform](https://www.andamio.io/) to transparently distribute incentives to contributors

Active development and maintenance of all pillars

* Overall end-to-end testing $120k / ₳150k (1 FTE)  
* Proposal Pillar $120k / ₳150k (1 FTE)  
* Delegation Pillar $180k / ₳225k (1.5 FTE)  
* Voting Pillar $180k / ₳225k (1.5 FTE)  
* Outcomes Pillar $90k / ₳122.5k (0.75 FTE)  
* Budget discussion Pillar $60k / ₳75k (0.5 FTE)

This was budgeted based upon the ADA-USD value of 0.8. Any unused funds will be returned to the Cardano Treasury.

#### Active Development \- Roadmap

Because GovTool's roadmap is directly defined by the Cardano community, so subject to change and evolution. The best place to check what's coming next is the community backlog [Governance Tools Community Backlog](https://github.com/orgs/IntersectMBO/projects/34/views/1) and the community discussion (recently started to make it easier to define direction) [GovTool discussions](https://github.com/IntersectMBO/govtool/discussions). 

However there are some key initiatives that already have clear community support and that this proposal commits to deliver (full details can be seen in the [shared GovTool roadmap](https://docs.gov.tools/important-updates/govtool-maintenance-ending-soon/updated-budget-proposal/proposed-roadmap)). High-level details below (the initiatives are in order of readiness for development):

* Add support to **create and operate group (script-based) DReps**, this will enable smaller DReps to easily come together and build strong coalitions so further distributing voting power.  
* **DRep history on the DRep page** to show what that DRep voted on, how and (if available) with what rationale, also show the delegations moving in and out. All this will provide better context to the delegator, also opening new options to sort and filter DReps so supporting liquid democracy.  
* **DRep voting history on Governance Actions** to allow DReps and Ada holders to see directly on the Governance Action page, alongside all the context coming from the metadata, the details related to voting, making it easier also to see if their DRep voted as they expected, thus enabling liquid democracy.  
* **Ability to submit more than one vote in one transaction**  
* **Constitutional Committee details on Governance Actions** (both those up for voting and those that have been ratified or rejected). This will make it easier to see which constitutional committee voted on a specific Governance Action and why they voted in that way, all on the same page.  
* **Add support for group proposers** to foster the creation of more governance actions, provide more clarity on-chain about where the proposal comes from  
* **Integration with CoSponsor** to allow authors to crowdfund the cost of the Governance Action deposit, hence lowering the barrier for participation to the global community  
* Add an **easier way for delegators to identify DReps** by helping find DReps that have voting history aligned with delegators voting principles.  
* **Further expand open APIs coverage** to include access to submission for all types of governance actions. This will make it easier for other builders to include this critical feature faster, dramatically lowering the barriers to submit a governance action.  
* Generally **expand options for individual contributions to the open source code**. Specifically integrate the GitHub backlog with the Andamio platform to allow anyone to get onboarded to the repos and be rewarded for meaningful contributions to key identified issues  
* **Optimise the hosting and deployment infrastructure** to reduce cost and make general maintenance more efficient

#### Governance

The Governance Tools working group in Intersect, is responsible for coordinating efforts related to governance tooling in general, hosting discussions about current and future needs. Over the past 18 months, the working group focused on channeling community direction for the GovTool project. Going forward the working group, on top of supporting broader discussions across tools, will continue supporting the newly formed GovTool consortium, acting also the meeting space for it when useful.

The GovTool Consortium, open to any contributor who actively joins the discussions, will keep collecting input and feedback from the users and owners of GovTool (Cardano Community) and shape the roadmap direction. This will also act as the coordinator to transparently allocate and distribute the incentives of this budget to individual contributors by leveraging the Andamio platform. In the short-term, this group will also help facilitate the open process to award to a builder the hosting and infrastructure maintenance role described in this budget.

#### Vendor Profiles

The **Cardano GovTool Consortium** is made of all the builders currently actively working on the development of GovTool, the builders of tools who leverage GovTool APIs and code, and anyone who actively participates in the Governance tools working group. The following builders who are submitting this governance action are leading the Consortium effort:

* [**LidoNation**](https://www.lidonation.com/en) \- Outcomes pillar  
* [**ByronNetwork**](https://byron.network) \- Delegation & Voting pillars  
* [**WeDeliver**](https://we-deliver.io/) \- Proposal Discussion & Budget Proposals pillars  
* [**Dquadrant**](https://dquadrant.com/) \- End-to-end testing

These teams have been building governance tools since before CIP-1694, through SanchoNet GovTool, Voltaire GovTool, and the Chang\&Plomin upgrades. All code is open-source and maintained in public repositories, with contributions from a global community of developers.

#### Contract Management

A written off-chain Legal Contract will be created between each member of the GovTool consortium (vendor) and Cardano Development Holdings (CDH), administered by Intersect, detailing delivery schedules, milestones, and dispute resolution processes.

#### Project Delivery

Milestones, acceptance criteria, payment amounts, and timelines will be agreed upon between Intersect and the vendors. Vendors will deliver according to the Legal Contract, with milestone completion attested by the vendors and verified by Intersect or a 3rd Party Assurer.

Intersect’s delivery assurance function will monitor progress and communicate status to the community. A 3rd Party Assurer will review and sign off on milestone deliverables before payments are released.

#### Budget Management Tooling

Intersect will use the treasury management smart contract framework developed by Sundae Labs, audited by TxPipe and MLabs. Funds will be held in a Treasury Reserve Smart Contract (TRSC) and disbursed to Project-Specific Smart Contracts (PSSCs) as milestones are met.

The Oversight Committee — consisting of Sundae Labs, Cardano Foundation, Dquadrant, Xerberus, and NMKR — will verify key administrative actions on-chain.

Note: Dquadrant is present within the Oversight Committee and as a builder within the GovTools Consortium, they will abstain from any oversight of GovTool-related contracts.

A public dashboard ([cardanotreasury.fi](http://cardanotreasury.fi)) will allow the community to audit fund flows, track milestones, and verify spending immutably on-chain.

##### Specifics

Intersect will reuse the infrastructure used for the Cardano Blockchain Ecosystem Budget. The same Treasury Reserve Smart Contract (TRSC), with many Project-Specific Smart Contracts (PSSC), will be used. Intersect's management consists of three 'admin' and two Intersect 'leadership' roles. A Oversight Committee consisting of five external, independent third-party entities will provide checks and balances on Intersect, and safeguard against errors and unilateral control. The administration of both TRSC and PSSCs will be managed by Intersect, with external oversight on certain actions from the Oversight Committee.

The Oversight Committee consists of Sundae Labs, Cardano Foundation, Xerberus, Dquadrant and NMKR. Their role is to independently verify key administrative actions using on-chain logic, ensuring accuracy and consistency without exercising discretion over governance decisions.

For all details on Intersect's configuration, please see the [Smart Contract Guide](https://docs.intersectmbo.org/cardano-facilitation-services/cardano-budget/intersect-administration-services/smart-contracts-as-part-of-our-administration) on the knowledge base.

The high level permissions are as follows:

* TRSC Fund and PSSC Modify  
  * Two of the three Intersect admins, two of the five trusted entities and one of the two Intersect leadership sign-offs must authorize  
* TRSC Disperse  
  * Two of three Intersect admins, three of five trusted entities and two of two Intersect leadership sign-off must authorize  
* TRSC Pause and Resume  
  * Two of three Intersect admins, and one of two Intersect leadership sign-off must authorize  
* TRSC Sweep  
  * One of three Intersect admins, and one of two Intersect leadership sign-off must authorize  
* TRSC Reorganize  
  * Two of three Intersect admins and three of five trusted entities must authorize

##### Processes

Upon enactment of this governance action, funding for this project will be directed into the TRSC's stake account. The logic of the TRSC and PSSC prevent them from delegating to SPOs, only allowing delegation to the auto-abstain predefined DRep. Thus funds held in administration by these contracts will be delegated to auto-abstain predefined DRep.

When the Legal contract is prepared and the vendor is ready, funding for this project will be transferred using the Fund action to a PSSC. All milestones will be outlined within the metadata.

A dashboard is available for the community to audit the TRSC or PSSC and track metrics related to this withdrawn ada as well as being immutably verifiable on chain. Please see [cardanotreasury.fi](http://cardanotreasury.fi).

The subsections; Contract Management, Project Delivery, and Budget Management Tooling described above cover the constitutional requirements specified in Article IV sections 4 and 5\.

### References

* [Approved Budget Info Action in GovTool](https://gov.tools/outcomes/governance_actions/9d213a57684d7ddf6f3350c80d042639ecbed5ccccc4a05bf54959a086593e7b#0)  
* [Sundae Labs Budget Management Smart Contracts Github Repository](https://github.com/SundaeSwap-finance/treasury-contracts)  
* TxPipe Audit Report (ipfs://bafybeiccnwejbgj43wo6hrlseckkkmprtoqc5cfuy2hesm6c6yealwho3e)  
* MLabs Audit Report (ipfs://bafybeiah5fnjhda5hemj3qvaehc4mre3qllqzw2l7mkdsguytn4ftgafw4)  
* [Proposed GovTool Roadmap](https://docs.gov.tools/important-updates/govtool-maintenance-ending-soon/updated-budget-proposal/proposed-roadmap)  
* [Open Community Backlog](https://github.com/IntersectMBO/govtool/)  
* [Maintenance contracts builders responsibilities](https://docs.gov.tools/important-updates/govtool-maintenance-ending-soon/updated-budget-proposal/govtool-builder-monthly-responsibilities)   
* [GovTool repository (voting and delegation)](https://github.com/IntersectMBO/govtool/)  
* [Proposal Pillar repository](https://github.com/IntersectMBO/govtool-proposal-pillar)  
* [Outcomes Pillar repository](https://github.com/IntersectMBO/govtool-outcomes-pillar)  
* [GovTool Test Reports](https://intersectmbo.github.io/govtool-test-reports/)  
* [GovTool open app analytics](https://analytics.gov.tools/)  
* [GovTool Docs](https://docs.gov.tools)  
* [GovTool Proposal Pillar API docs](https://be.pdf.gov.tools/api-docs/)  
* [GovTool Outcomes Pillar API docs](https://be.outcomes.gov.tools/)  
* [GovTool Voting and Delegation Pillar API docs](https://be.gov.tools/swagger-ui/#/)  
* [Cardano GovTool X Account](https://x.com/cardano_govtool)

### Authors

* Darlington @ Lido Nation Foundation  
* WE DELIVER IT  
* Byron Network  
* Dquadrant  
* Intersect