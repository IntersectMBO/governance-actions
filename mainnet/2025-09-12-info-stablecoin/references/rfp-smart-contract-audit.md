August 2025

## (DRAFT \- Subject to changes) Request for Proposal (RFP) for Smart Contract Audit {#(draft---subject-to-changes)-request-for-proposal-(rfp)-for-smart-contract-audit}

[**Request for Proposal (RFP) for Smart Contract Audit	1**](#\(draft---subject-to-changes\)-request-for-proposal-\(rfp\)-for-smart-contract-audit)

[1\. Document Purpose	1](#document-purpose)

[2\. Project Description	2](#project-description)

[3\. Scope of Work	3](#scope-of-work)

[4\. Proposal Requirements	4](#proposal-requirements)

[5\. Evaluation Framework	5](#evaluation-framework)

[6\. RFP Timeline	5](#rfp-timeline)

[7\. Contract Type	6](#contract-type)

[8\. Payment Terms	6](#payment-terms)

[9\. Additional Information	7](#additional-information)

[8.1. Cost Responsibility	7](#8.1.-cost-responsibility)

[8.2. Acceptance and Rejection Rights	7](#8.2.-acceptance-and-rejection-rights)

[Annex	9](#heading=h.ohvow8tkg94m)

[Glossary	9](#heading=h.kjug3avk0kvc)

1. ### Document Purpose {#document-purpose}

This Request for Proposal (RFP) is issued to solicit proposals from experienced smart contract auditing firms to audit a Cardano smart contract with mechanisms that allow an administrating committee to manage the treasury funds with oversight from dReps. 

**Please note:** The viability and initiation of this project is contingent upon the successful approval of the required Cardano Governance Actions (Budget Info Action and subsequent Treasury Withdrawal). This project will not commence if these governance actions are not approved.

Furthermore, as this project is funded by public treasury funds, transparency is paramount. Please be aware that as part of the Cardano Governance Treasury Withdrawal, it may be necessary to make proposals, in whole or in part, publicly available for community transparency. By submitting a proposal in response to this RFP, you acknowledge and consent to this potential public disclosure.

### 

2. ### Project Description {#project-description}

Cardano is defined by its community. Its governance model incentivizes token holders participating in Cardano’s unique staking system to decide the future of the ecosystem and how the Treasury funds can be used for the advance of Cardano.

The current project, as detailed in our public documentation ([Info Action](https://docs.google.com/document/d/1tRZpHpSZ8V9JRMtjJNu9wahYyHT8eo_IzW90DwQ-SF0/edit?tab=t.0#heading=h.kjz9j4vo2ks0), [Governance Protocol](https://docs.google.com/document/d/1-z10BIl_0Z2SiCpQMaPvpbQQ8p8fVTpC8S3QRU9JpaU/edit?tab=t.0#heading=h.fiw190dfcnzk) and [Smart Contract details](https://docs.google.com/document/d/1Wbiz4fi3lRxLSXGv3p7pNMCKxEykVbjZ-Korso8YijU/edit?tab=t.0#heading=h.z3nwcw41mf4)), aims to request 50,000,000 ADA (the fund) from the Cardano Treasury to increase the liquidity on Cardano through DeFi protocols by purchasing fiat backed stablecoins.

The fund will be managed through a smart contract-based system on the Cardano blockchain via a Treasury Decentralized Autonomous Organization (tDAO) and an administrative committee, with the following responsibilities:

**Treasury DAO:** composed of dReps, can take actions like create a no-confidence contract state that prevents any new committee actions other than sending funds back to the Cardano treasury, elect or remove new committee members, and setting/removing/changing an end of life for the fund.

**Administrative Committee:** a group of seven administrators that can perform actions like depositing funds to decentralized finance (DeFi) protocols, engaging 3rd parties for volume or time-weighted average price (V\&TWAP) or over the counter (OTC) deals for converting ADA to fiat, and paying member stipends or other costs (e.g. audits).

This two body system is established to allow the administrators to take quick actions when needed (e.g. pulling liquidity from a protocol) and side step the long time horizon of public governance balanced by empowering the greater Cardano community to oversee the committee.

Currently available high-level details on the smart contract can be found [here](https://hackmd.io/HTq4R80bSGyy0XYMPYnuSg?view)

We are currently running a separate Request for Proposal (RFP) for the development of a smart contract. To ensure the highest levels of security, reliability, and functionality, we are simultaneously issuing this RFP to engage a third-party independent auditor to comprehensively review and verify the developed smart contract. The combined maximum budget allocated for both the smart contract development and its independent audit is ADA 250,000.

Applicants are permitted to submit proposals for both the Smart Contract Development and Smart Contract Audit RFPs. However, to guarantee the necessary independence of the auditing function, only one of these contracts will be awarded per organization.

3. ### Scope of Work {#scope-of-work}

Formal audit of on-chain code of the Cardano Sovereign Wealth Fund smart contract. The high-level details and foundational requirements for the smart contract are provided [here](https://hackmd.io/HTq4R80bSGyy0XYMPYnuSg?view).

**Phase 1: Design & Specification**

* Conduct a comprehensive audit of the proposed design and detailed specification of the smart contract system (once available) to proactively identify:  
  * Unclear or wrong specifications which could lead to unwanted behaviour.  
  * Anticipate common and uncommon attack vectors that could arise from the proposed architecture or logic  
  * Verify that the described contract logic aligns with the intended functionality and appears robust under various conditions  
  * Assess the design against established industry best practices for secure and robust smart contract development on Cardano  
* Produce detailed, actionable reports for all identified findings from the documentation and design review, categorizing them by severity (e.g., Critical, High, Medium, Low, Informational) and clearly explaining the potential vulnerability, its likely impact, and concrete recommendations for design-level remediation or mitigation strategies.  
* Present initial findings to the Committee and the development team through dedicated debriefing sessions  
* Maintain continuous and proactive communication with the development team during their design and specification finalization phase, providing clarification on findings and guidance on proposed design adjustments

**Phase 2: Development**

Along with the delivery of the developed codebase including both the on-chain and off-chain part by the development vendor, the auditor will proceed with a comprehensive code audit. This will involve:

* Review of the smart contract source code in its entirety to identify security vulnerabilities, functional discrepancies, and areas for optimization (as detailed in the previous scope).  
* Verification that the final design and specification have been correctly implemented.  
* Conduct re-audits/verification of all fixed vulnerabilities to ensure effective remediation and that no new issues were introduced during the fix process.


**Phase 3: Final Deliverables & Public Report**

* Submit a comprehensive Internal Final Audit Report that includes:  
  * Executive Summary  
  * Detailed findings from both the design review (Phase 1\) and the code audit (Phase 2), with their severity, description, impact, and a clear record of remediation status (initial finding, proposed fix, verified fix)  
  * Overview of the audit methodology and scope for both phases  
  * Overall assessment and conclusion regarding the contract's security status and adherence to specifications  
  * Recommendations for future maintenance and best practices.

* Provide a Public-Facing Audit Summary Report designed to be concise and shareable. This report shall focus on the final security status of the smart contract, highlighting that critical and high-severity vulnerabilities identified during the audit have been successfully remediated, and provide a clear statement on the contract's overall security status at the time of completion. 


4. ### Proposal Requirements {#proposal-requirements}

Interested firms should submit a proposal that includes the following:

| Criteria | Description |
| :---- | :---- |
| **Company Overview** | Introduction to your company. |
| **Proposed Team Structure** | Detailed description of the team you propose for the project. |
| **Development Portfolio** | Examples of projects where you successfully delivered Cardano smart contract audit projects |
| **Proposed Approach and Project Plan** | While our paramount concerns remain quality, assurance, and security, we also place a high priority on the expeditious and full completion of the smart contract audit. Bidders who can demonstrate a well-structured approach that ensures rapid and seamless collaboration with the smart contract development firm will receive significant positive consideration in our evaluation. Please provide a detailed project schedule that clearly reflects your proposed turnaround time for all audit phases, including timely communication and re-verification. |
| **Fee Structure** | A clear and detailed fee structure.  |
| **References** | At least two references where you successfully delivered Cardano smart contracts audits  |

5. ### Evaluation Framework {#evaluation-framework}

All proposals will be evaluated based on the following criteria and relative weight:

| Criteria | Description | Weighting |
| :---- | :---- | :---- |
| Relevant Experience, Portfolio and Team Fit | Demonstrated experience in auditing Cardano Smart Contracts  | 35% |
| Defined approach for the audit and Timeline | Fit of the proposed approach and Project Plan | 35% |
| References  | Positive references from previous clients  | 15% |
| Cost Effectiveness  | Competitiveness of the proposed fee structure | 15% |

6. ### RFP Timeline  {#rfp-timeline}

We are committed to ensuring a fair and transparent proposal submission process. 

The timeline for the RFP is outlined below:

| Activity | Deadline | Notes |
| :---- | :---- | :---- |
| RFP Opening | \[DATE\] | RFP is distributed among the selected vendors  |
| Vendors Questions Window | \[DATE\] | Vendors will have until this date to raise their questions on the RFP  |
| Questions Answers | \[DATE\] | Answers will be made available to all vendors |
| Proposal Submission Deadline | \[DATE\] | Please ensure all proposal requirements are met. Proposals will be shared for public review |
| Public review period end | \[DATE\] | After this date no more public feedback will be considered |
| Vendor shortlist announcement  | \[DATE\] (Estimated date \- Subject to change) | The decision will be communicated via email.  |
| Best and Final Offer Submission Deadline  | \[DATE\] | Short listed vendors will have the opportunity to submit a revised proposal that may include updated pricing or technical details  |
| Selected vendor announcement  | \[DATE\] (Estimated date \- Subject to change) | The decision will be communicated via email. |
| Project Start Date |  | The initiation of this project is contingent upon the successful approval of the required Cardano Governance Actions (Budget Info Action and subsequent Treasury Withdrawal). This project will not commence if these governance actions are not approved |

7. ### Contract Type {#contract-type}

Selected vendors must agree to work under a contractual agreement that specifies deliverables, milestones, and associated fixed payments. This approach ensures clarity and alignment on expectations and outcomes.

8. ### Payment Terms {#payment-terms}

All proposals shall include a schedule that should clearly outline the major project milestones and listing its correspondent deliverables along with the payment associated with each milestone. 

Payments will be made according to the deliverables schedule, which shall be provided by the vendor as part of your proposal.

Payments will be processed net 30 days following the receipt of each invoice.

Advanced payments will only be considered under very specific conditions and will require prior approval. Vendors wishing to request advanced payments must provide a written justification in their proposal, outlining the reasons and circumstances that warrant such an arrangement. Advanced payment requests will be subject to a separate review and approval process.

9. ### Additional Information {#additional-information}

#### 8.1. Cost Responsibility {#8.1.-cost-responsibility}

All costs associated with the preparation and submission of a proposal in response to this RFP shall be the exclusive responsibility of the Vendor. No expenses will be reimbursed

#### 8.2. Acceptance and Rejection Rights {#8.2.-acceptance-and-rejection-rights}

The issuance of this RFP does not constitute a commitment to award a contract. The right is reserved to accept or reject any and all proposals, in whole or in part, without assigning reason and without incurring any liability or obligation to the Vendor.  
---

Please provide a detailed proposal that addresses the requirements and guidelines outlined in this RFP. We are eager to review your proposal and explore the possibility of working together on this project.

Should you have any questions or require further clarification, kindly contact

* Contact info TBD




Thank you for considering our request.  
Sincerely,

Cardano DeFi Stablecoin Committee  
