---
identifier: ES-Template
title: [Standard Name e.g., Coding Standards]
version: [1.0.0]
status: Draft
owner: EOS
audience: 
  - Architects
  - Engineers
  - AI Assistants
category: Template
lifecycle: EOS
governed_by: 
  - EOS
inherits_from:
  - ENG-001
---
# [STANDARD NAME]

## Document Purpose
*Guidance: Explain why this engineering standard exists, the engineering consistency it establishes, which engineering activities consume this standard, and which Engineering Assets reference it.*

This Engineering Standard exists to establish a consistent, organization-wide approach to [Subject Matter of Standard]. It ensures that all engineering capabilities, regardless of product or team, adhere to a unified baseline for [Quality/Security/Architecture/etc.]. This standard is actively consumed during [e.g., Code Review, CI/CD pipeline execution, Architecture Design] and is referenced across the Engineering Operating System lifecycle by artifacts such as EA-002 (Capability Design) and EA-005 (Capability Validation).

## Knowledge Flow
*Guidance: Clearly define the dependencies and integrations for this standard.*

### Consumes
- [List upstream policies, industry frameworks, or enterprise architecture constraints]

### Produces
- [List outputs driven by this standard, e.g., Linting Rulesets, Architectural Patterns, Security Gates]

### Referenced By
- [List the Engineering Assets, systems, or pipelines that enforce/reference this standard]

---

## BLOCK A: Standard Overview

### 1. Purpose
*Guidance: Describe the specific outcomes and goals this standard aims to achieve.*

[Describe the primary objective of this standard]

### 2. Scope
*Guidance: Define what is explicitly covered by this standard.*

[Define the boundaries of this standard]

### 3. Applicability
*Guidance: Specify which teams, systems, or repositories this standard applies to.*

[List applicable contexts, e.g., "All microservices", "All frontend repositories"]

### 4. Audience
*Guidance: Identify who must read and understand this standard.*

[List target roles, e.g., Software Engineers, QA Leads, Architects]

### 5. Definitions
*Guidance: Provide brief definitions for key concepts central to this standard.*

- **[Term]:** [Definition]

---

## BLOCK B: Engineering Rules

*Guidance: Document the mandatory engineering policies. These are strict, non-negotiable rules that must be followed to achieve compliance. Use imperative language (must, shall).*

### Rule 1: [Rule Title]
* **Policy:** [State the mandatory rule clearly]
* **Rationale:** [Explain why this rule exists]
* **Enforcement:** [Describe how this is checked, e.g., Automated Linter, Peer Review]

### Rule 2: [Rule Title]
* **Policy:** [State the mandatory rule clearly]
* **Rationale:** [Explain why this rule exists]
* **Enforcement:** [Describe how this is checked]

---

## BLOCK C: Implementation Guidance

### Recommended Practices
*Guidance: Document highly encouraged approaches that are not strictly mandatory but represent the paved path.*

- [Recommended practice 1]
- [Recommended practice 2]

### Examples
*Guidance: Provide concrete examples demonstrating how to apply the standard. Keep examples abstract and technology-neutral if possible, or use standard pseudo-code.*

**Good Pattern:**
```text
[Example of correct application]
```

**Bad Pattern:**
```text
[Example of incorrect application]
```

### Common Mistakes
*Guidance: Highlight frequent errors or anti-patterns engineers make regarding this topic.*

- [Common mistake 1]
- [Common mistake 2]

### Exceptions
*Guidance: Define situations where this standard might not apply, and clarify what to do instead.*

- **[Exception Scenario]:** [Handling procedure]

---

## BLOCK D: Compliance

### Compliance Checklist
*Guidance: Provide an actionable checklist used to verify adherence to this standard.*

- [ ] [Verification item 1]
- [ ] [Verification item 2]
- [ ] [Verification item 3]

### Review Expectations
*Guidance: Detail what is expected during peer review, QA, or architecture board review concerning this standard.*

[Describe review responsibilities]

### Approval Process
*Guidance: Outline how compliance is officially approved or signed off.*

[Describe approval workflow]

### Deviation Process
*Guidance: Explain how an engineering team can request an exception or waiver if they cannot adhere to this standard.*

[Describe deviation request process, including required approvers]

---

## BLOCK E: Governance

### Version History
*Guidance: Track major revisions to this standard.*

| Version | Date | Author | Description of Change |
| :--- | :--- | :--- | :--- |
| [1.0.0] | [YYYY-MM-DD] | [Name] | [Initial Release] |

### Change Log
*Guidance: Detail specific modifications made in the most recent update.*

- **[YYYY-MM-DD]:** [Specific change detail]

### Related Standards
*Guidance: List other Engineering Standards that intersect with this one.*

- [ES-XXX Standard Name]

### Referenced Engineering Assets
*Guidance: List specific Engineering Asset templates that rely on this standard.*

- [EA-XXX Asset Name]

---

## APPENDIX

### Definitions
*Guidance: Provide a comprehensive list of technical terms used throughout the document.*

- **[Term]:** [Detailed Definition]

### Glossary
*Guidance: Define any acronyms or initialisms used.*

- **[Acronym]:** [Meaning]

### References
*Guidance: Provide links to external industry standards, internal wikis, or RFCs that informed this document.*

- [External/Internal Link]

### Examples
*Guidance: Provide extended, complex examples that are too large for the main body.*

[Detailed example or diagram placeholder]
