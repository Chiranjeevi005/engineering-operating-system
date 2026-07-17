---
id: [Template ID]
title: ES-002 Coding Standards
version: [1.2.0]
status: [Draft | Review | Approved | Rejected]
lifecycle: [Governance]
owner: [Owner Name / Role]
reviewer: [Reviewer Name / Role]
approver: [Approver Name / Role]
created: [YYYY-MM-DD]
updated: [YYYY-MM-DD]
artifact_type: Engineering Standard Template
eos_layer: Governance Layer
engineering_domain: Coding Standards
standard_family: Engineering Standards
successor: [Successor ID, if applicable]
upstream: [ES-001, RS-004]
downstream: [Language Profiles]
---

# ES-002 Coding Standards

## Document Purpose
*Guidance: Explain why EOS requires Coding Standards, why coding standards differ from engineering principles, why coding consistency improves engineering quality, why coding standards must remain technology neutral, and why downstream language profiles inherit from ES-002.*

The Engineering Operating System (EOS) requires universal Coding Standards to ensure that all software engineered across the organization shares a baseline of consistency, maintainability, readability, reliability, and security. While Engineering Principles (RS-004) establish the underlying philosophy of *why* we value these traits, Coding Standards formally define the enforceable requirements that dictate *how* code must be structured. Coding consistency improves engineering quality by reducing cognitive load, enabling developer mobility across projects, and establishing predictable patterns for code review and automated analysis. To remain universally applicable, ES-002 must remain strictly technology-neutral—it defines the universal engineering requirements, leaving the language-specific syntax and tooling details to be defined by downstream Language Profiles that inherit directly from this document.

## Knowledge Flow
*Guidance: Clearly describe ES-002's role within EOS by defining what this artifact consumes, produces, and who consumes it.*

### Consumes
- [The foundational governance framework established in ES-001]
- [The enduring engineering philosophy derived in RS-004]

### Produces
- [Universal, language-agnostic coding requirements]
- [Baseline expectations for code organization, naming, reliability, and maintainability]
- [The structural template for language-specific coding standards]

### Consumed By
- [Language Profiles (e.g., TypeScript Standards, Go Standards)]
- [Project-Specific Standards]

## Inheritance
*Guidance: Explain what ES-002 inherits from ES-001 and RS-004, and what downstream language profiles inherit from ES-002. Keep inheritance separate from traceability.*

**Inherited From Upstream (ES-001, RS-004):**
- From ES-001, this standard inherits the mandatory governance lifecycle, compliance model, requirement schema, and exception management processes.
- From RS-004, this standard inherits the philosophical values and quality attributes that justify the existence of these coding requirements.

**Inherited By Downstream (Language Profiles):**
- All downstream language-specific profiles (e.g., ES-002-TS, ES-002-GO) inherit the universal requirements defined here, translating them into specific language syntax, linter rules, and framework conventions.

## Traceability
*Guidance: Illustrate the EOS architecture from research down to implementation.*

RS-001
↓
RS-002
↓
RS-003
↓
RS-004
↓
ES-001
↓
ES-002
↓
Language Profiles
↓
Project Standards
↓
Engineering Assets

---

## BLOCK A: Coding Philosophy

### 1. Coding Objectives
*Guidance: Document the primary goals these universal coding standards aim to achieve.*

- [Objective 1]
- [Objective 2]

### 2. Engineering Values
*Guidance: Document the core values prioritized in code construction (e.g., Readability over Cleverness).*

- [Value 1]
- [Value 2]

### 3. Coding Scope
*Guidance: Define the boundaries of where these universal standards apply.*

- **Applicable Environments:** [e.g., All production code, internal libraries, open-source releases]
- **Enforcement Scope:** [e.g., All new code, modified legacy code]

### 4. Assumptions
*Guidance: Document underlying assumptions regarding developer capability and tooling.*

- [Assumption 1]
- [Assumption 2]

### 5. Exclusions
*Guidance: Document explicitly what is excluded from these standards.*

- **Language Syntax:** Excluded; handled by Language Profiles.
- **Framework Conventions:** Excluded; handled by domain or project standards.
- **Tooling Configuration:** Excluded; handled by repository standards.

---

## BLOCK B: Code Organization

*Guidance: Document universal standards governing how code is physically and logically organized.*

### 6. Project Organization
- **Requirement:** [Standard for top-level project structure]
- **Rationale:** [Why this is required]

### 7. Module Organization
- **Requirement:** [Standard for internal module boundaries]
- **Rationale:** [Why this is required]

### 8. Layer Separation
- **Requirement:** [Standard for separating concerns across architectural layers]
- **Rationale:** [Why this is required]

### 9. Encapsulation
- **Requirement:** [Standard for hiding internal implementation details]
- **Rationale:** [Why this is required]

### 10. Modularity
- **Requirement:** [Standard for designing independent, interchangeable modules]
- **Rationale:** [Why this is required]

### 11. Separation of Concerns
- **Requirement:** [Standard ensuring components address a specific responsibility]
- **Rationale:** [Why this is required]

---

## BLOCK C: Naming Standards

*Guidance: Document universal principles for naming elements, focusing on intent and clarity rather than specific casing rules.*

### 12. Variables
- **Requirement:** [Standard for variable naming clarity and intent]

### 13. Constants
- **Requirement:** [Standard for identifying immutable values]

### 14. Functions
- **Requirement:** [Standard for function naming, typically verb-based]

### 15. Methods
- **Requirement:** [Standard for method naming on objects/classes]

### 16. Classes
- **Requirement:** [Standard for class or primary entity naming, typically noun-based]

### 17. Interfaces
- **Requirement:** [Standard for contract or interface naming]

### 18. Modules
- **Requirement:** [Standard for module or package naming]

### 19. Files
- **Requirement:** [Standard for file naming conventions and consistency]

### 20. Directories
- **Requirement:** [Standard for directory organization and naming]

### 21. Packages
- **Requirement:** [Standard for distributable package naming]

---

## BLOCK D: Readability Standards

*Guidance: Document expectations regarding the cognitive load required to read and comprehend code.*

### 22. Simplicity
- **Requirement:** [Standard prioritizing straightforward logic over premature optimization]

### 23. Consistency
- **Requirement:** [Standard mandating uniform patterns within a codebase]

### 24. Complexity
- **Requirement:** [Standard for bounding cyclomatic complexity or nesting depth]

### 25. Comments
- **Requirement:** [Standard governing when and how comments should be used (e.g., explaining "why", not "what")]

### 26. Formatting Philosophy
- **Requirement:** [Standard establishing the expectation for automated formatting over manual styling]

### 27. Self-Documenting Code
- **Requirement:** [Standard expecting code structure and naming to convey meaning without external documentation]

---

## BLOCK E: Functions & Modules

*Guidance: Document standards for designing functions, methods, and the modules that contain them.*

### 28. Function Responsibilities
- **Requirement:** [Standard enforcing the Single Responsibility Principle for functions]

### 29. Parameter Management
- **Requirement:** [Standard for bounding parameter counts and handling configuration objects]

### 30. Return Values
- **Requirement:** [Standard for consistent return types and avoiding ambiguous returns]

### 31. Side Effects
- **Requirement:** [Standard for minimizing and explicitly documenting side effects]

### 32. Module Cohesion
- **Requirement:** [Standard for ensuring components within a module are tightly related]

### 33. Coupling
- **Requirement:** [Standard for minimizing dependencies between disparate modules]

### 34. Reusability
- **Requirement:** [Standard for designing components for reuse when appropriate]

---

## BLOCK F: Reliability

*Guidance: Document standards that ensure code behaves predictably under failure conditions.*

### 35. Error Handling
- **Requirement:** [Standard for predictable, consistent error handling strategies]

### 36. Exception Handling
- **Requirement:** [Standard for when and how exceptions should be raised and caught]

### 37. Logging
- **Requirement:** [Standard for emitting actionable, structured logs at appropriate severity levels]

### 38. Defensive Programming
- **Requirement:** [Standard for anticipating and safeguarding against unexpected internal states]

### 39. Input Validation
- **Requirement:** [Standard for validating all external data at the system boundaries]

---

## BLOCK G: Dependencies & Configuration

*Guidance: Document standards for managing external code and environment-specific configuration.*

### 40. Dependency Management
- **Requirement:** [Standard for explicitly declaring and pinning dependencies]

### 41. External Libraries
- **Requirement:** [Standard for evaluating and vetting external third-party libraries]

### 42. Internal Dependencies
- **Requirement:** [Standard for consuming shared internal libraries]

### 43. Configuration Management
- **Requirement:** [Standard for externalizing environment-specific configuration (e.g., Twelve-Factor App)]

### 44. Secrets Management
- **Requirement:** [Standard prohibiting hardcoded secrets and mandating secure injection]

---

## BLOCK H: Security & Performance

*Guidance: Document baseline expectations for secure and performant code construction.*

### 45. Secure Coding
- **Requirement:** [Standard for adhering to baseline security practices (e.g., OWASP top 10 awareness)]

### 46. Sensitive Information
- **Requirement:** [Standard for handling, masking, and storing PII or sensitive data]

### 47. Performance Awareness
- **Requirement:** [Standard for recognizing and avoiding obvious performance anti-patterns (e.g., N+1 queries)]

### 48. Resource Management
- **Requirement:** [Standard for properly acquiring and releasing system resources (memory, connections, file handles)]

### 49. Scalability Considerations
- **Requirement:** [Standard for ensuring code does not inherently prevent horizontal scaling (e.g., statelessness)]

---

## BLOCK I: Code Quality & Maintainability

*Guidance: Document expectations regarding technical debt, code smells, refactoring, and maintainability metrics.*

### 50. Code Smell Governance
*Guidance: Define how specific code smells should be actively handled during development and review.*

- **Long Methods:** [Standard for identifying and extracting logic]
- **Large Classes:** [Standard for identifying and splitting responsibilities]
- **Duplicate Logic:** [Standard for enforcing DRY]
- **Dead Code:** [Standard for continuous removal of unused code]
- **Excessive Coupling:** [Standard for managing dependencies]
- **Deep Nesting:** [Standard for guarding clauses and reducing indentation]

### 51. Technical Debt Register
*Guidance: Define the structured schema for tracking acknowledged technical debt.*

Every item of technical debt MUST be tracked using the following schema:
- **Debt ID:** [Unique ID]
- **Description:** [What the debt is]
- **Owner:** [Who is accountable for it]
- **Justification:** [Why it was incurred]
- **Impact:** [Cost of leaving it unresolved]
- **Target Resolution:** [When or under what conditions it will be fixed]
- **Status:** [Open, In Progress, Resolved]

### 52. Maintainability Metrics
*Guidance: Define measurable indicators of code maintainability. Exact thresholds will be set by Language Profiles.*

- **Maximum Cyclomatic Complexity:** [Placeholder for complexity threshold]
- **Function Size Guidance:** [Placeholder for maximum lines per function]
- **Class/Module Size Guidance:** [Placeholder for maximum lines per class or module]
- **Dependency Count Thresholds:** [Placeholder for maximum external dependencies per module]
- **Duplication Limits:** [Placeholder for maximum acceptable duplication percentage]

### 53. Refactoring Expectations
- **Requirement:** [Standard for incorporating continuous refactoring (e.g., Boy Scout Rule)]

---

## BLOCK J: Engineering Quality Assurance

*Guidance: Standardize the active engineering quality activities independently from governance models.*

### 54. Static Analysis Expectations
- **Requirement:** [Standard for ensuring all code passes enforced static analysis tooling prior to merging]

### 55. Complexity Monitoring
- **Requirement:** [Standard for continuously monitoring code complexity and enforcing thresholds during CI/CD]

### 56. Duplication Monitoring
- **Requirement:** [Standard for enforcing automated checks against code duplication beyond permitted boundaries]

### 57. Security Scanning
- **Requirement:** [Standard for enforcing SAST and dependency vulnerability scanning in the deployment pipeline]

### 58. Performance Analysis
- **Requirement:** [Standard for ensuring critical performance paths are profiled automatically or routinely]

### 59. Coverage Monitoring
- **Requirement:** [Standard for ensuring test coverage ratios do not drop over time]

### 60. Quality Gates
- **Requirement:** [Standard for defining the exact combination of automated checks that must pass to release code]

---

## BLOCK K: Documentation & Testing

*Guidance: Document expectations for proving code correctness and maintaining developer documentation.*

### 61. Code Documentation
- **Requirement:** [Standard for documenting public interfaces and complex internal logic]

### 62. API Documentation
- **Requirement:** [Standard for documenting exposed application programming interfaces]

### 63. Testability
- **Requirement:** [Standard for designing code that is inherently testable (e.g., dependency injection)]

### 64. Unit Testing
- **Requirement:** [Standard for the scope, coverage, and structure of unit tests]

### 65. Integration Testing
- **Requirement:** [Standard for verifying component interactions]

### 66. Maintainability
- **Requirement:** [Standard for ensuring tests are as maintainable as production code]

---

## BLOCK L: Governance & Compliance

### 67. Rule Identifier Convention
*Guidance: Define a canonical identifier format for all requirements within this standard family.*

- **Format:** [e.g., ES002-R-001]
- **Prefix:** [e.g., ES002-R]

### 68. Requirement Model
*Guidance: Define the schema used to document formal rules in downstream Language Profiles, inheriting from ES-001 and enriched with quality attributes.*

Every downstream coding requirement SHALL utilize the following schema:
- **Requirement ID:** [Unique canonical ID, e.g., ES002-R-001]
- **Category:** [Organization / Design / Naming / Documentation / Security / Testing / Performance / Reliability / Maintainability]
- **Requirement Statement:** [Normative statement using RFC 2119]
- **Rationale:** [Why the rule exists]
- **Priority:** [Critical / High / Medium / Low]
- **Compliance Level:** [Mandatory / Conditional / Recommended / Informational]
- **Risk Classification:** [Security / Reliability / Maintainability / Operational / Compliance]
- **Enforcement Type:** [Automated / Semi-Automated / Manual]
- **Implementation Status:** [Planned / Pilot / Adopted / Mandatory / Legacy]
- **Requirement Owner:** [Role or Team accountable for this specific rule]
- **Verification Method:** [How it is checked]
- **Quality Attributes:** [Which attributes this requirement primarily supports]
- **Exceptions:** [Allowed deviations]
- **Dependencies:** [Other Requirement IDs this rule relies on]
- **Cross-References:** [Links to Architecture, Security, or API Standards]
- **Traceability:** [Link to upstream requirement or principle]

### 69. Requirement Lifecycle
*Guidance: Document how an individual requirement evolves independently from the document version.*

- **Proposed:** The rule has been suggested but not vetted.
- **Draft:** The rule is being formally written and reviewed.
- **Approved:** The rule has passed review but is not yet enforced.
- **Active:** The rule is actively enforced across all teams.
- **Deprecated:** The rule is being phased out in favor of a newer standard.
- **Retired:** The rule is no longer enforced or applicable.

### 70. Rule Conflict Resolution
*Guidance: Define precedence when standards appear to conflict.*

1. ES-001 Governance Framework
2. Security Standards
3. Architecture Standards
4. Coding Standards (ES-002)
5. Project Standards
6. Language Profiles

### 71. Compliance Verification
*Guidance: Define the standard methods for verifying code compliance.*

- **Static Analysis:** [Linter and SAST expectations]
- **Linters:** [Automated style and syntax checks]
- **Security Scanners:** [Automated vulnerability detection]
- **Code Coverage Reports:** [Automated test coverage verification]
- **Complexity Analysis:** [Automated cyclomatic complexity and maintainability index checks]
- **Automated Testing:** [CI/CD test execution expectations]
- **Peer Review:** [Code review expectations]
- **Manual Review:** [Human auditing of code logic]
- **Architecture Conformance Checks:** [Automated or manual reviews of architectural constraints]

### 72. Standards Relationship Matrix
*Guidance: Document how ES-002 interacts with and depends on other organizational standards.*

| Standard | Relationship | Notes |
| :--- | :--- | :--- |
| ES-003 Architecture Standards | Extends | ES-002 applies architecture patterns to code structure. |
| ES-004 API Standards | Influences | Coding standards affect how APIs are implemented. |
| ES-006 Security Standards | Constrains | Security dictates certain coding requirements. |
| ES-007 Testing Standards | Complements | ES-002 requires testing which ES-007 defines. |

### 73. Exception Management
*Guidance: Reference the ES-001 exception process.*

- **Process:** Deviations from Mandatory coding standards must follow the Exception Management process defined in ES-001.

### 74. Migration Guidance
*Guidance: Define how major updates to this standard are handled organizationally.*

Whenever major changes are introduced to ES-002 or its downstream language profiles, the update MUST include:
- **Migration Impact:** [Assessment of how much legacy code violates the new rule]
- **Backward Compatibility:** [Whether the new rule breaks existing workflows]
- **Transition Period:** [How long teams have to adopt the new rule]
- **Deprecation Timeline:** [When the old rule will trigger a hard failure in CI/CD]

### 75. Review Process
*Guidance: Document the code review requirements.*

- **Code Review Requirements:** [Rules governing mandatory peer review before merging code]

### 76. Standards Governance
*Guidance: Document how this specific standard is maintained.*

- **Maintenance:** Managed by the core architecture or engineering productivity team.
- **Updates:** Governed by the change classification model defined in ES-001.

### 77. Compliance Dashboard
*Guidance: Define the metrics reported to engineering leadership to monitor standard adoption.*

| Metric | Target | Current Value |
| :--- | :--- | :--- |
| Compliance Rate | [Target %] | [Value] |
| Review Coverage | [Target %] | [Value] |
| Static Analysis Pass Rate | [Target %] | [Value] |
| Test Coverage | [Target %] | [Value] |
| Technical Debt Items | [Target Count] | [Value] |
| Open Exceptions | [Target Count] | [Value] |
| Security Findings | [Target Count] | [Value] |

---

## APPENDIX

### Definitions
*Guidance: Define context-specific coding terms used in this document.*

- **[Term]:** [Definition]

### Glossary
*Guidance: Define any acronyms used in this document.*

- **[Acronym]:** [Definition]

### Coding Domains
*Guidance: List the standardized domains of software engineering covered by these standards.*

- **[Domain]:** [Description]

### Requirement Categories
*Guidance: Standardized categories for grouping coding requirements.*

- [Organization, Design, Naming, Documentation, Security, Testing, Performance, Reliability, Maintainability]

### Rule Priority
*Guidance: Standardized priority levels for requirements.*

- **Critical:** Non-negotiable
- **High:** Strongly enforced
- **Medium:** Expected
- **Low:** Advisory

### Quality Attributes
*Guidance: Core architectural characteristics supported by these requirements.*

- [Readability, Maintainability, Reliability, Security, Performance, Testability, Scalability, Portability, Observability]

### Enforcement Types
*Guidance: Levels of automation available for a given rule.*

- [Automated, Semi-Automated, Manual]

### Risk Classifications
*Guidance: Core engineering risks mitigated by a given rule.*

- [Security, Reliability, Maintainability, Operational, Compliance]

### Implementation Statuses
*Guidance: Adoption phases for rules across the organization.*

- [Planned, Pilot, Adopted, Mandatory, Legacy]

### Requirement Classification
*Guidance: Reference ES-001 normative keywords.*

- [MUST, MUST NOT, SHALL, SHALL NOT, SHOULD, SHOULD NOT, MAY]

### Compliance Levels
*Guidance: Reference ES-001 compliance levels.*

- [Mandatory, Conditional, Recommended, Informational]

### Verification Methods
*Guidance: Formal methods for verifying compliance.*

- [Static analysis, Linters, Security scanners, Code coverage reports, Complexity analysis, Manual review, Architecture conformance checks]

### Governance Roles
*Guidance: Reference ES-001 governance roles, expanded for rule-level tracking.*

- [Owner, Maintainer, Reviewer, Approver, Requirement Owner, Domain Owner, Technical Steward]

### Reference Sources
*Guidance: Provide links back to ES-001, RS-004, and any external coding philosophy references.*

- [Reference title and link]

### Version History
*Guidance: Track major revisions to this coding standard.*

| Version | Date | Author | Description of Change |
| :--- | :--- | :--- | :--- |
| [1.2.0] | [YYYY-MM-DD] | [Name] | [v1.2 Refinements (QA Block, Rule Lifecycle, Advanced Governance)] |
