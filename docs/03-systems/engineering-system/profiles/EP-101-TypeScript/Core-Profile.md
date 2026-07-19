---
identifier: EP-101
title: Core Profile
version: 1.0
status: Draft
owner: Engineering System
audience: 
  - Architects
  - Engineers
  - AI Assistants
category: Profile
lifecycle: System
governed_by: 
  - ENG-001
inherits_from:
  - OM-001
---
# EP-101 TypeScript Core Profile

> This Engineering Profile defines the enterprise implementation of an approved technology.
> It strengthens engineering consistency and maintainability.
> AI may assist engineers in applying this profile.
> Human engineers remain accountable for every implementation decision.

## Layer 1: Enterprise Context

### 1.1 Capability Boundaries

This profile governs:
- [Specific language features, compilers, tools, etc.]
- [Implementation of upstream standards for this technology]

This profile does NOT govern:
- [Related frameworks that deserve their own profile]
- [Business logic or project-specific rules]

### 1.2 Technology Decision Record (TDR)
- **Why approved?** [Business/technical justification for adopting this technology]
- **Why not alternatives?** [Brief comparison against rejected alternatives]
- **Business value:** [What this technology enables for the enterprise]
- **Engineering value:** [What this technology solves technically]
- **Selection criteria:** [The capabilities that mandated this choice]
- **Retirement criteria:** [Conditions under which this technology would be deprecated]

### 1.3 AI Implementation Boundary
- **AI may assist:** [Generating boilerplate, syntax correction]
- **AI should recommend:** [Optimizations, standard adherence]
- **AI must validate:** [Linter rules, basic security checks]
- **AI must NOT decide:** [Architectural patterns, security exemptions, bypassing standards]

---

## Layer 2: Technology Knowledge

*Guidance: Explicitly separate immutable facts about the technology from enterprise-specific decisions.*

### 2.1 Technology Facts
*These facts are determined by the technology vendor/creator and apply universally.*
- [E.g., Node.js is single-threaded, PostgreSQL uses MVCC]

### 2.2 Enterprise Decisions
*These decisions are made by the EOS Architecture Board to constrain the technology facts.*
- [E.g., We mandate TypeScript strict mode, We prohibit stored procedures in PostgreSQL]

---

## Layer 3: Technology Constraints

*Guidance: Engineering Profiles exist to constrain implementation. Classify every constraint by its Compliance Boundary.*

### 3.1 Universal Inheritance
*This section maps the upstream Engineering Standards into this profile.*

| Upstream Standard | Profile Requirement | Technology Feature | Project Usage |
|---|---|---|---|
| [e.g., ES-002 Coding] | [e.g., Explicit Typing] | [e.g., TS `noImplicitAny`] | [To be defined by project] |

### 3.2 Compliance Boundaries

#### Mandatory Constraints
*Rules that cannot be broken without a formal exception.*
- **[EP-XXX-R01]:** [Constraint description]

#### Conditional Constraints
*Rules that apply only under specific conditions.*
- **[EP-XXX-R02]:** [Constraint description] (Applies when [Condition])

#### Recommended Constraints
*Strongly encouraged practices.*
- **[EP-XXX-R03]:** [Constraint description]

#### Optional Guidelines
*Permitted but not required patterns.*
- **[EP-XXX-R04]:** [Constraint description]

#### Project Extensions
*Boundaries where projects are explicitly allowed to define their own rules.*
- [e.g., Project-specific naming conventions]

---

## Layer 4: Verification & Evolution

### 4.1 Canonical Quality Attribute Mapping
*Identify which EOS quality attributes these constraints strengthen.*

| Constraint | Primary Attribute | Secondary Attribute |
|---|---|---|
| [EP-XXX-R01] | Reliability | Maintainability |

### 4.2 Technology Risk Register

| Risk | Impact | Likelihood | Mitigation | Owner | Review |
|---|---|---|---|---|---|
| [Specific technology risk] | [High/Med/Low] | [High/Med/Low] | [Control strategy] | [Role] | [Date] |

### 4.3 Profile Evolution Rules
- **Supported Versions:** [e.g., v18.x and above]
- **Supported Platforms:** [e.g., Linux, AWS Lambda]
- **Deprecation Trigger:** [Events that trigger deprecation, e.g., Vendor End-of-Life]
- **Replacement Strategy:** [How the enterprise will move off this technology]
- **Migration Strategy:** [How teams upgrade between versions]
- **Compatibility Policy:** [Rules for backward compatibility]

### 4.4 Verification Check
Before approval, this profile must pass:
- [ ] **Structural Verification:** Matches this 4-layer template.
- [ ] **Inheritance Verification:** Maps upstream ES requirements correctly.
- [ ] **Constitutional Verification:** Preserves human ownership and AI boundaries.
- [ ] **Technology Verification:** Technically accurate and feasible.
- [ ] **Readability Verification:** Clear and unambiguous.

---

> This Engineering Profile exists to translate enterprise engineering standards into consistent technology implementation.
> It enables reusable engineering knowledge while preserving technology independence at the governance layer.
> AI may assist in implementation and validation, but human engineers remain accountable for every engineering decision and every deployed asset.
> Engineering Profiles exist to strengthen sustainable engineering capability over the lifetime of the enterprise.

