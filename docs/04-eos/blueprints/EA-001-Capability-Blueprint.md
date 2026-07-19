---
identifier: EA-001-Capability
title: "[Capability Name] - Capability Blueprint"
version: "[0.1.0]"
status: Draft
owner: EOS
audience: 
  - Architects
  - Engineers
  - AI Assistants
category: Blueprint
lifecycle: EOS
governed_by: 
  - EOS
inherits_from:
  - ENG-001
---
# EA-001: Capability Blueprint

## Document Purpose

* EA-001 defines one business capability.
* It translates capability intent into engineering specification.
* It governs all downstream engineering work for that capability.
* It contains no implementation details.

## Knowledge Flow

### Consumes
> Specify the inputs required to define this capability.
* [Upstream Strategic Document or PEB Section]

### Produces
> Specify the defined requirements, rules, and boundaries this capability creates.
* [Functional Requirements]
* [Business Rules]
* [Success Criteria]

### Consumed By
> Specify the downstream engineering assets that will utilize this capability blueprint.
* [EA-002 Capability Design]

## Inheritance

* **Inherits From:** [Specify the higher-level engineering constraints, principles, and quality attributes this capability inherits from the PEB]
* **Inherited By:** [Specify the downstream Engineering Assets that must adhere to the boundaries, rules, and requirements defined in this blueprint]

## Traceability

PEB
↓
EA-001
↓
EA-002
↓
EA-003
↓
EA-004 (optional)
↓
EA-005

---

## BLOCK A: Capability Definition

### 1. Capability Identity
> Provide the core identification details for this specific capability.

* **Capability ID:** [CAP-ID]
* **Capability Name:** [Capability Name]
* **Capability Domain:** [Domain Name]
* **Capability Owner:** [Owner Name/Team]
* **Business Priority:** [Critical | High | Medium | Low]
* **Engineering Status:** [Status]

### 2. Business Context
> Explain the business reason this capability exists and the value it provides.

* **Business Purpose:** [Why does this capability exist?]
* **Business Outcome:** [What measurable outcome does this capability drive?]
* **User Value:** [How does this benefit the end user?]
* **Business Motivation:** [What strategic initiative or motivation drives this?]

### 3. Capability Scope
> Clearly define the boundaries of what this capability includes and excludes.

* **In Scope:**
  * [In-scope item 1]
  * [In-scope item 2]
* **Out of Scope:**
  * [Out-of-scope item 1]
  * [Out-of-scope item 2]
* **Assumptions:**
  * [Assumption 1]
  * [Assumption 2]
* **Dependencies:**
  * [Dependency 1]
  * [Dependency 2]

---

## BLOCK B: Capability Specification

### 4. Functional Requirements
> Define the strict functional requirements for this capability without specifying how they will be implemented.

| Requirement ID | Requirement | Description | Business Rationale | Priority | Dependencies | Source |
| -------------- | ----------- | ----------- | ------------------ | -------- | ------------ | ------ |
| [REQ-001] | [Name] | [Description] | [Rationale] | [Priority] | [Dependencies] | [Source] |
| [REQ-002] | [Name] | [Description] | [Rationale] | [Priority] | [Dependencies] | [Source] |
| [REQ-003] | [Name] | [Description] | [Rationale] | [Priority] | [Dependencies] | [Source] |

### 5. Business Rules
> Define the precise business rules and logic constraints that govern this capability.

| Rule ID | Rule | Rationale | Applies To |
| ------- | ---- | --------- | ---------- |
| [BR-001] | [Rule] | [Rationale] | [Applies To] |
| [BR-002] | [Rule] | [Rationale] | [Applies To] |
| [BR-003] | [Rule] | [Rationale] | [Applies To] |

### 6. Capability Boundaries
> Define the strict inputs this capability consumes, the outputs it provides, and explicit exclusions.

#### Consumes
* [Input or Data Source 1]
* [Input or Data Source 2]

#### Provides
* [Output or Value 1]
* [Output or Value 2]

#### Interactions
* [Interaction 1 (e.g., publishes events)]
* [Interaction 2 (e.g., listens for events)]

#### Explicitly Out of Scope
* [Boundary Exclusion 1]
* [Boundary Exclusion 2]

---

## BLOCK C: Success Specification

### 7. Success Criteria
> Define the conditions that must be met for this capability to be considered a success.

#### Business Success
* [Condition 1]
* [Condition 2]

#### Operational Success
* [Condition 1]
* [Condition 2]

#### Engineering Success
* [Condition 1]
* [Condition 2]

### 8. Acceptance Criteria
> Define the specific, measurable criteria required to accept the capability implementation.

| ID | Acceptance Criterion | Verification Method |
| -- | -------------------- | ------------------- |
| [AC-001] | [Criterion] | [Method] |
| [AC-002] | [Criterion] | [Method] |
| [AC-003] | [Criterion] | [Method] |

### 9. Key Performance Indicators
> Identify the metrics that will be used to monitor the ongoing performance of this capability.

| KPI | Target | Frequency | Owner |
| --- | ------ | --------- | ----- |
| [KPI 1] | [Target] | [Frequency] | [Owner] |
| [KPI 2] | [Target] | [Frequency] | [Owner] |

---

## BLOCK D: Engineering Transition

### 10. Engineering Inputs
> Summarize the context and artifacts this blueprint consumed to be created.

* [Inherited PEB Section]
* [Upstream Context]

### 11. Engineering Outputs
> Specify exactly what the downstream design phase (EA-002) should receive from this blueprint.

* Capability Contract
* Functional Requirements
* Business Rules
* Capability Boundaries
* Acceptance Criteria
* Engineering Inputs for EA-002

### 12. Inherited Constraints
> Document the constraints, principles, and attributes inherited directly from the PEB.

#### Engineering Constraints
* [Constraint Description]

#### Engineering Principles
* [Principle Description]

#### Quality Attributes
* [Quality Target]

---

## BLOCK E: Governance

### 13. Ownership
> Define accountability for this capability.

* **Accountable Owner:** [Owner Name]
* **Engineering Lead:** [Lead Name]

### 14. Review Process
> Establish how this blueprint will be reviewed and approved.

* **Review Cadence:** [e.g., Per Major Release]
* **Approval Gates:** [Gate 1], [Gate 2]

### 15. Versioning
> Define the versioning strategy for this blueprint.

* **Strategy:** [e.g., Semantic Versioning]

### 16. Readiness Checklist
> Verify that this capability blueprint is fully defined and ready for the design phase.

- [ ] Capability purpose approved
- [ ] Functional requirements complete
- [ ] Business rules documented
- [ ] Boundaries defined
- [ ] Success criteria measurable
- [ ] Constraints inherited
- [ ] Ready for EA-002

### 17. Next Artifact
> Specify the next Engineering Asset in the lifecycle.

* **Target Artifact:** EA-002 Capability Design

---

# Appendix

## Definitions
* **[Term]:** [Definition]

## Acronyms
* **[Acronym]:** [Definition]

## Related Capabilities
* [CAP-001]
* [CAP-005]
* [CAP-011]

## Related EOS Artifacts
* [Artifact Name]([Link])

## References
* [Reference Name]([Link])
