---
identifier: RP-003
title: RP 003 Repository Naming Convention
version: 1.0
status: Active
owner: Engineering System
audience: 
  - Architects
  - Engineers
  - AI Assistants
category: System Standard
lifecycle: System
governed_by: 
  - IAS-001
inherits_from:
  - IAS-001
---
# RP-003 Repository Naming Convention

**Repository Family:** Repository Standards (RP)

**Identifier:** RP-003

**Version:** 1.0

**Status:** Approved

**Owner:** EOS Architecture Board

**Audience:** Engineers, Architects, Contributors, AI Assistants

---

# 1. Purpose

The Engineering Operating System (EOS) is designed to remain understandable, maintainable, and scalable throughout its lifetime.

Repository naming is therefore considered an engineering capability rather than an administrative activity.

This standard establishes the official naming conventions for all repository artifacts to ensure that every name is predictable, consistent, searchable, human-readable, and suitable for long-term engineering governance.

The purpose of this standard is to eliminate ambiguity, reduce cognitive effort, and establish a single engineering language across the repository.

---

# 2. Scope

This standard governs the naming of all repository artifacts, including:

- Repository directories
- Repository files
- Repository Standards (RP)
- Engineering Standards (ES)
- Engineering Profiles (EP)
- Research Standards (RS)
- Starter Kits (SK)
- Project Standards (PS)
- Architecture Decision Records (ADR)
- Templates
- Reference documents
- Knowledge documents
- Repository assets where applicable

This standard does not govern:

- Programming language naming conventions
- Source code identifiers
- Database object names
- API naming conventions
- Internal implementation standards within individual projects

These are governed by their respective Engineering Standards or Project Standards.

---

# 3. Objectives

This standard exists to:

- Establish one consistent naming language across EOS.
- Eliminate subjective naming decisions.
- Improve repository discoverability.
- Improve engineering communication.
- Support automated tooling and repository validation.
- Preserve long-term repository consistency.
- Reduce cognitive load for engineers.

---

# 4. Engineering Identity Principles

Every repository artifact possesses an engineering identity.

A name is not merely a label.

It is the primary mechanism by which engineers discover, understand, reference, maintain, and govern engineering knowledge.

Repository names should communicate:

- Engineering family
- Unique identity
- Engineering responsibility
- Intended purpose

Names exist to improve engineering understanding—not personal preference.

---

# 5. Guiding Principles

Repository naming follows these principles.

## 5.1 Predictability Over Preference

Consistency is more valuable than individual naming style.

Engineers should never need to guess how something is named.

---

## 5.2 Clarity Over Brevity

Names should communicate purpose clearly.

Avoid abbreviations unless they are officially governed by EOS.

---

## 5.3 One Name, One Meaning

Each engineering concept should have one approved name.

Synonyms should not exist within the repository.

---

## 5.4 Human Readability

Names should be immediately understandable by engineers without additional explanation.

---

## 5.5 Machine Readability

Names should support deterministic parsing by automated systems whenever practical.

---

## 5.6 Stability Over Time

Names should remain stable throughout an artifact's lifecycle.

Renaming should occur only when engineering meaning changes.

---

# 6. Naming Rules

## 6.1 Repository Directories

Repository directories shall:

- use lowercase characters only
- use kebab-case
- contain descriptive nouns
- avoid spaces
- avoid underscores
- avoid special characters
- avoid version numbers
- avoid dates
- avoid temporary naming

Examples:

```text
repository-standards
engineering-standards
starter-kits
engineering-profiles
research-standards
project-standards
architecture
templates
knowledge
```

---

## 6.2 Governed Documents

Governed documents shall use the following pattern:

```text
<ID> <Subject>.md
```

Examples:

```text
RP-001 Foundation.md

RP-002 Repository Taxonomy.md

RP-003 Repository Naming Convention.md

ES-001 Engineering Principles.md

EP-101 TypeScript.md

SK-201 Next.js SaaS.md

PS-001 Product Requirements.md

ADR-001 Hybrid Authentication.md
```

Rules:

- Preserve the official identifier.
- Use Title Case for the subject.
- Do not duplicate the document family in the title.
- Do not include unnecessary suffixes.

Correct:

```text
RP-001 Foundation.md
```

Incorrect:

```text
RP-001 Foundation Standard.md

RP-001 Repository Standard Foundation.md

RP001 Foundation.md
```

---

## 6.3 Repository Assets

Repository assets should use descriptive names that clearly communicate their engineering purpose.

Avoid generic or temporary names.

---

# 7. Naming Dictionary

EOS maintains a controlled engineering vocabulary.

Repository names should use approved engineering terminology to ensure consistency.

## Preferred Terms

Examples include:

- Foundation
- Repository
- Engineering
- Standards
- Profiles
- Architecture
- Governance
- Reference
- Implementation
- Knowledge
- Templates
- Security
- Quality
- Operations
- Projects
- Release
- Archive

---

## Prohibited Terms

The following terms should not be used for governed repository artifacts.

```text
Misc

Other

General

Stuff

Temp

New

Latest

Final

Copy

Backup
```

If a new engineering concept requires additional terminology, it shall be approved through repository governance.

---

# 8. Prefix Standards

Each governed standards family has one official identifier.

| Family                        | Prefix |
| ----------------------------- | ------ |
| Repository Standards          | RP     |
| Engineering Standards         | ES     |
| Engineering Profiles          | EP     |
| Research Standards            | RS     |
| Starter Kits                  | SK     |
| Project Standards             | PS     |
| Architecture Decision Records | ADR    |

Additional governed prefixes require Architecture Board approval.

---

# 9. Rename Policy

Repository artifacts may be renamed only when:

- engineering responsibility changes
- engineering meaning changes
- artifact classification changes
- ambiguity exists
- governance requires correction

Repository artifacts shall not be renamed because of:

- personal preference
- stylistic changes
- formatting preference
- temporary organizational convenience

---

# 10. Anti-Patterns

The following naming practices are prohibited.

Incorrect:

```text
New Folder

Temp

Final

Final Final

Misc

Stuff

Copy

Backup

New2

Engineering Stuff

System Docs
```

Preferred:

```text
engineering-standards

repository-standards

starter-kits

architecture

quality-engineering

deployment-guide

repository-overview
```

---

# 11. Responsibilities

## EOS Architecture Board

Responsible for:

- maintaining repository naming governance
- approving new governed prefixes
- resolving naming disputes
- approving controlled vocabulary changes

---

## Engineers

Responsible for:

- applying this standard
- following approved naming conventions
- proposing improvements through repository governance

---

## AI Assistants

**Artificial Intelligence operates within the engineering boundaries established by approved human governance. AI may assist, analyze, recommend, and validate. Final engineering authority always remains with human engineers.**



- generate names that comply with this standard
- validate repository naming consistency
- identify naming violations
- recommend corrections

Artificial Intelligence shall not create new naming conventions without human approval.

---

# 12. Compliance

Every new repository artifact shall comply with RP-003 before acceptance.

Repository reviews should verify:

- identifier compliance
- naming consistency
- approved vocabulary
- correct document family
- repository readability

Naming violations should be corrected before repository integration.

---

# 13. Exceptions

Vendor-controlled files and platform-specific artifacts shall follow their native ecosystem conventions.

Examples include:

```text
package.json

package-lock.json

tsconfig.json

next.config.ts

.gitignore

.github/

node_modules/
```

These files are exempt from repository naming rules.

---

# 14. Governance

RP-003 is governed by the EOS Architecture Board.

Changes to this standard require Architecture Board approval.

Changes should preserve backward compatibility whenever practical.

Repository-wide renaming should occur only through an approved repository migration process.

---

# 15. Maintenance

This standard should be reviewed periodically to ensure it continues to support engineering clarity, repository consistency, and long-term maintainability.

Naming conventions should evolve only when supported by measurable engineering benefit.

---

# 16. Constitutional Statement

Repository names are engineering identifiers.

They exist to strengthen engineering communication, improve discoverability, reduce ambiguity, and preserve repository consistency.

A consistent naming convention enables engineers and Artificial Intelligence to collaborate within a shared engineering language.

EOS naming standards exist to strengthen engineering capability—not to encourage individual naming preferences.



