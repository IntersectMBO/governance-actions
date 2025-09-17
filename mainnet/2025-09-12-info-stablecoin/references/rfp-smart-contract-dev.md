August 2025

## (DRAFT \- Subject to changes) Request for Proposal (RFP) for Smart Contract Development {#(draft---subject-to-changes)-request-for-proposal-(rfp)-for-smart-contract-development}

[**Request for Proposal (RFP) for Smart Contract Development	1**](#\(draft---subject-to-changes\)-request-for-proposal-\(rfp\)-for-smart-contract-development)

[1\. Document Purpose	1](#document-purpose)

[2\. Project Description	2](#project-description)

[3\. Scope of Work	2](#scope-of-work)

[4\. Proposal Requirements	4](#proposal-requirements)

[5\. Evaluation Framework	5](#evaluation-framework)

[6\. RFP Timeline	5](#rfp-timeline)

[7\. Contract Type	6](#contract-type)

[8\. Payment Terms	7](#payment-terms)

[9\. Additional Information	7](#additional-information)

[8.1. Cost Responsibility	7](#9.1.-cost-responsibility)

[8.2. Acceptance and Rejection Rights	7](#9.2.-acceptance-and-rejection-rights)

1. ### Document Purpose {#document-purpose}

This Request for Proposal (RFP) is issued to solicit proposals from experienced software development firms to develop Cardano smart contracts with mechanisms that allow an administrating committee to manage the treasury funds with oversight from dReps. 

**Please note:** The viability and initiation of this project is contingent upon the successful approval of the required Cardano Governance Actions (Budget Info Action and subsequent Treasury Withdrawal). This project will not commence if these governance actions are not approved.

Furthermore, as this project is funded by public treasury funds, transparency is paramount. Please be aware that as part of the Cardano Governance Treasury Withdrawal, it may be necessary to make proposals, in whole or in part, publicly available for community transparency. By submitting a proposal in response to this RFP, you acknowledge and consent to this potential public disclosure.

### 

2. ### Project Description {#project-description}

Cardano is defined by its community. Its governance model incentivizes token holders participating in its unique staking system to decide the future of the ecosystem and how the Treasury funds can be used for the advance of Cardano.

The current project, as detailed in the public documentation ([Info Action](https://docs.google.com/document/d/1tRZpHpSZ8V9JRMtjJNu9wahYyHT8eo_IzW90DwQ-SF0/edit?tab=t.0#heading=h.kjz9j4vo2ks0), [Governance Protocol](https://docs.google.com/document/d/1-z10BIl_0Z2SiCpQMaPvpbQQ8p8fVTpC8S3QRU9JpaU/edit?tab=t.0#heading=h.fiw190dfcnzk) and [Smart Contract details](https://docs.google.com/document/d/1Wbiz4fi3lRxLSXGv3p7pNMCKxEykVbjZ-Korso8YijU/edit?tab=t.0#heading=h.z3nwcw41mf4)), aims to request 50,000,000 ADA (the fund) from the Cardano Treasury to increase the liquidity on Cardano through DeFi protocols by purchasing fiat backed stablecoins.

The fund will be managed through a smart contract-based system on the Cardano blockchain via a Treasury Decentralized Autonomous Organization (tDAO) and an administrative committee, with the following responsibilities:

**Treasury DAO:** composed of dReps, can take actions like create a no-confidence contract state that prevents any new committee actions other than sending funds back to the Cardano treasury, elect or remove new committee members, and setting/removing/changing an end of life for the fund.

**Administrative Committee:** a group of nine administrators that can perform actions like depositing funds to decentralized finance (DeFi) protocols, engaging 3rd parties for volume or time-weighted average price (V\&TWAP) or over the counter (OTC) deals for converting ADA to fiat, and paying member stipends or other costs (e.g. audits).

This two body system is established to allow the administrators to take quick actions when needed (e.g. pulling liquidity from a protocol) and side step the long time horizon of public governance balanced by empowering the greater Cardano community to oversee the committee.

This RFP outlines the requirements for the development of the smart contract. As part of our commitment to transparency and security, we will also be engaging a third-party independent firm for a comprehensive audit of the developed smart contract through a separate, concurrent RFP. The combined maximum budget allocated for both the smart contract development and its independent audit is ADA 275,000.

Applicants are permitted to submit proposals for both the Smart Contract Development and Smart Contract Audit RFPs. However, to guarantee the necessary independence of the auditing function, only one of these contracts will be awarded per organization.

3. ### Scope of Work {#scope-of-work}

**Project Overview & Specifications**

* The high-level details and foundational requirements for the smart contract are provided [here](https://hackmd.io/HTq4R80bSGyy0XYMPYnuSg?view)  
* The primary objective is to develop the smart contracts that enable a designated Committee to securely manage and interact with project funds.   
* A key requirement is that the vendors should propose a way for the committee to manage funds from an address that can interact with smart contracts without custodying funds in a standard single signer address.  
* Many protocols on Cardano require funds to be held in a single-user wallet, meaning funds must be trusted to a single individual, even if only briefly. Developers of the smart contract and UI platform should provide:  
  * Advice for how to identify these risks in each new protocol  
  * Best practices for ensuring security of funds during these windows of trust  
  * Brainstorm creative solutions to mitigate or work around this risk

**Key Deliverables** 

The development process will be structured to facilitate a parallel independent audit, with deliverables aligned to support the audit phases:

Detailed Technical Specifications & Architectural Design Document

* Develop a comprehensive technical specification and architectural design document for the smart contract. This document must clearly outline the contract logic, data structures, functional flows, state transitions, and detailed security considerations.  
* This deliverable will be crucial for the independent auditor's Design & Specification Review and early draft versions shall be made available for the auditing party to support the audit process and to receive early feedback.

Smart Contract Codebase Development:

* Develop the smart contracts based on the Aiken programming language for Cardano’s execution engine the Plutus Virtual Machine Version 3\. This has to include on-chain and off-chain code that is used to forge the respective transactions and to trigger the execution of developed smart contract functionalities.  
* The code must be production-ready, thoroughly commented, and adhere to industry best practices for secure smart contract development and in particular it has to prevent common security flaws related to the eUTXO model.

User Interface (UI) / DApp Frontend Development

* Design and develop an intuitive, user-friendly, and responsive frontend that allows the Committee and dReps to interact with the deployed smart contracts  
* The frontend shall also support hardware crypto wallets from Ledger, Trezor and other manufacturers and in case this cannot be supported directly within the UI a separate Command Line Interface has to be provided for such purpose.

Comprehensive Test Suite & QA Documentation:

* Provide a comprehensive suite of unit tests, integration tests, and any relevant formal verification tests for the developed codebase.  
* Document the entire Quality Assurance (QA) process implemented throughout the development lifecycle, ensuring code integrity, functionality, and resilience against known vulnerabilities.  
* Implement automatic execution of the mentioned test types as part of the continuous integration pipeline, based on Github Actions.

Open Source & Audit Collaboration:

* The completed smart contract codebase and the User Interface codebase must be open-sourced and released as a community resource. Any specific security or operational concerns that might necessitate exceptions to full open-sourcing for certain components must be clearly detailed and justified within the proposal. The concrete licence will be decided at project kick off state.

* The developed smart contract will be subject to a comprehensive independent audit. Proposers must demonstrate a strong willingness and capability for close collaboration and timely communication with the appointed third-party auditor throughout both the design review (Audit Phase 1\) and the code audit (Audit Phase 2), including promptly addressing and re-testing any identified findings to ensure full remediation.


4. ### Proposal Requirements {#proposal-requirements}

Interested firms should submit a proposal that includes the following:

| Criteria | Description |
| :---- | :---- |
| **Company Overview** | Introduction to your company. |
| **Proposed Team Structure** | Detailed description of the team you propose for the project. |
| **Development Portfolio** | Examples of projects where you successfully delivered Cardano smart contract development projects and open source projects. |
| **Proposed Approach and Project Plan** | For technical and practical reasons, some details may not be possible to implement and proposals must describe not only how the smart contract functionality will be implemented but also any deviations from what is described in [this](https://hackmd.io/HTq4R80bSGyy0XYMPYnuSg?view) document While our paramount concerns are quality assurance, and security, we also place a high priority on an expeditious project completion. Bidders who can demonstrate a well-structured approach to achieve a rapid development and collaboration for the audit will receive positive consideration in our evaluation. Please provide a detailed project schedule that reflects your proposed turnaround |
| **Fee Structure** | A clear and detailed fee structure.  |
| **References** | At least two references where you successfully delivered Cardano smart contract projects. |
| **Project Management and Reporting** | Overview of the development and project management methodologies your team follows (e.g., Agile, Scrum) Reporting, communication plans, and performance metrics. Risk management strategies for identifying and mitigating potential project risks. |
| **Post-Deployment Support and Maintenance** | Support, maintenance, and trainings  |

5. ### Evaluation Framework {#evaluation-framework}

All proposals will be evaluated based on the following criteria and relative weight:

| Criteria | Description | Weighting |
| :---- | :---- | :---- |
| Relevant Experience, Portfolio and Team Fit | Demonstrated experience in Cardano Smart Contract development | 35% |
| Defined approach for the Smart Contract and UI development | Fit of the proposed approach and Project Plan  | 35% |
| References  | Positive references from previous clients  | 15% |
| Cost Effectiveness  | Competitiveness of the proposed cost structure | 15% |

6. ### RFP Timeline  {#rfp-timeline}

We are committed to ensuring a fair and transparent proposal submission process. 

The timeline for the RFP is outlined below:

| Activity | Deadline | Notes |
| :---- | :---- | :---- |
| RFP Opening | \[TBD\] | RFP is distributed among the selected vendors  |
| Vendors Questions Window | \[TBD\] | Vendors will have until this date to raise their questions on the RFP  |
| Questions Answers | \[TBD\] | Answers will be made available to all vendors |
| Proposal Submission Deadline | \[TBD\] | Please ensure all proposal requirements are met. Proposals will be shared for public review |
| Public review period end | \[TBD\] | After this date no more public feedback will be considered |
| Vendor shortlist announcement  | \[TBD\] (Estimated date \- Subject to change) | The decision will be communicated via email.  |
| Best and Final Offer Submission Deadline  | \[TBD\] | Short listed vendors will have the opportunity to submit a revised proposal that may include updated pricing or technical details  |
| Selected vendor announcement  | \[TBD\] (Estimated date \- Subject to change) | The decision will be communicated via email. |
| Project Start Date |  | The initiation of this project is contingent upon the successful approval of the required Cardano Governance Actions (Budget Info Action and subsequent Treasury Withdrawal). This project will not commence if these governance actions are not approved |

7. ### Contract Type {#contract-type}

Selected vendors must agree to work under a contractual agreement that specifies deliverables, milestones, and associated fixed payments. This approach ensures clarity and alignment on expectations and outcomes.

8. ### Payment Terms {#payment-terms}

All proposals shall include a schedule that should clearly outline the major project milestones and listing its correspondent deliverables along with the payment associated with each milestone. 

Payments will be made according to the deliverables schedule, which shall be provided by the vendor as part of your proposal.

Payments will be processed net 30 days following the receipt of each invoice.

Advanced payments will only be considered under very specific conditions and will require prior approval. Vendors wishing to request advanced payments must provide a written justification in their proposal, outlining the reasons and circumstances that warrant such an arrangement. Advanced payment requests will be subject to a separate review and approval process.

9. ### Additional Information {#additional-information}

#### 9.1. Cost Responsibility {#9.1.-cost-responsibility}

All costs associated with the preparation and submission of a proposal in response to this RFP shall be the exclusive responsibility of the Vendor. No expenses will be reimbursed

#### 9.2. Acceptance and Rejection Rights {#9.2.-acceptance-and-rejection-rights}

The issuance of this RFP does not constitute a commitment to award a contract. The right is reserved to accept or reject any and all proposals, in whole or in part, without assigning reason and without incurring any liability or obligation to the Vendor.  
---

Please provide a detailed proposal that addresses the requirements and guidelines outlined in this RFP. We are eager to review your proposal and explore the possibility of working together on this project.

Should you have any questions or require further clarification, kindly contact

* Contact info TBD  
* Email TBD




Thank you for considering our request.  
Sincerely,

Cardano DeFi Stablecoin Committee  
