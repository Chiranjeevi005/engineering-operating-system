---
identifier: RP-004
title: RP 004 Repository Classification Standard
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
# RP-004 Repository Classification Standard

**Repository Family:** Repository Standards (RP)

**Identifier:** RP-004

**Version:** 1.0

**Status:** Approved

**Owner:** EOS Architecture Board

**Audience:** Engineers, Architects, Contributors, AI Assistants

---

# 1. Purpose

The Engineering Operating System (EOS) is designed to organize engineering knowledge in a predictable, scalable, and maintainable manner.

This standard establishes the official classification rules for every engineering artifact within the repository.

Classification determines where an artifact belongs.

Correct classification enables engineers to locate information quickly, prevents duplication, simplifies repository navigation, and preserves long-term engineering consistency.

Every repository artifact shall have one clearly defined classification.

---

# 2. Scope

This standard governs the classification of all repository artifacts, including:

- Repository Standards
- Engineering Standards
- Engineering Profiles
- Research Standards
- Starter Kits
- Project Standards
- Architecture Decision Records
- Templates
- Reference Documents
- Knowledge Documents
- Checklists
- Engineering Assets
- Repository Resources

This standard applies to every repository artifact regardless of author, technology, or project.

---

# 3. Objectives

This standard exists to:

- Ensure every artifact has one obvious location.
- Eliminate duplicate ownership.
- Reduce repository ambiguity.
- Improve engineering discoverability.
- Support long-term repository scalability.
- Enable consistent repository governance.
- Simplify engineering onboarding.

---

# 4. Classification Philosophy

Repository classification is based on engineering responsibility.

Artifacts are classified by what they govern or support—not by who created them, when they were created, or which project currently uses them.

Classification should remain stable even as projects evolve.

An artifact should belong to the engineering domain that best represents its long-term responsibility.

---

# 5. Classification Principles

## 5.1 Single Source of Truth

Every engineering artifact shall have one authoritative location.

Copies should not become independent sources of truth.

---

## 5.2 One Artifact, One Classification

Each artifact belongs to exactly one primary classification.

An artifact shall never belong equally to multiple classifications.

---

## 5.3 Responsibility Before Ownership

Classification is determined by engineering responsibility rather than team ownership.

Repository organization should remain valid even if organizational structures change.

---

## 5.4 Stability Over Convenience

Artifacts shall not move simply because projects evolve.

Classification should change only when the engineering responsibility fundamentally changes.

---

## 5.5 Discoverability

Repository classification should allow engineers to locate artifacts through logical engineering reasoning rather than memorization.

---

# 6. Repository Classification Families

Every governed artifact belongs to one official repository family.

| Repository Family | Purpose |
|-------------------|---------|
| RP | Repository governance |
| AG | Architecture governance and review methodologies |
| ES | Engineering principles and practices |
| EP | Engineering capability profiles |
| RS | Research methodologies and standards |
| SK | Reusable implementation foundations |
| PS | Project-specific governance and standards |
| ADR | Architecture decisions |
| Templates | Standardized reusable engineering documents |
| Knowledge | Educational and reference material |
| Assets | Supporting repository resources |

No artifact shall exist outside an approved repository family.

---

# 7. Artifact Placement Rules

Repository artifacts shall be classified according to their engineering responsibility.

Examples:

| Artifact | Classification |
|-----------|----------------|
| Repository governance document | Repository Standards (RP) |
| Coding guideline | Engineering Standards (ES) |
| Technology capability profile | Engineering Profiles (EP) |
| Research methodology | Research Standards (RS) |
| Reusable project foundation | Starter Kits (SK) |
| Project requirements | Project Standards (PS) |
| Architecture decision | ADR |
| Reusable document | Templates |
| Learning material | Knowledge |
| Supporting files | Assets |

Classification shall be based on engineering intent rather than document format.

---

# 8. Classification Decision Rules

When classifying an artifact, engineers shall answer the following questions in order:

1. What is the primary engineering responsibility of this artifact?

2. Which repository family governs that responsibility?

3. Does another authoritative version already exist?

4. Will engineers naturally look for this artifact in the selected location?

5. Does this classification reduce ambiguity?

If uncertainty remains, the Architecture Board shall determine the official classification.

---

# 9. Duplicate Artifact Policy

Duplicate engineering artifacts should be avoided.

When multiple artifacts contain the same authoritative information:

- One artifact shall become the authoritative source.
- Remaining copies shall either:
  - be removed,
  - become references, or
  - be archived.

Repository duplication increases maintenance cost and engineering risk.

---

# 10. Cross-References

Repository artifacts may reference other classifications.

Cross-references improve discoverability.

Cross-references do not change ownership or classification.

An artifact shall never be classified in multiple families solely because it references another artifact.

---

# 11. Archive Classification

Artifacts that are no longer active shall be moved to the approved repository archive.

Archived artifacts:

- retain historical value,
- remain searchable,
- shall not be treated as current engineering guidance.

Archive procedures are governed separately by the Repository Archive Standard.

---

# 12. Responsibilities

## EOS Architecture Board

Responsible for:

- maintaining repository classification governance,
- resolving classification disputes,
- approving new repository families,
- ensuring repository consistency.

---

## Engineers

Responsible for:

- classifying artifacts correctly,
- avoiding duplicate artifacts,
- following repository classification rules.

---

## AI Assistants

**Artificial Intelligence operates within the engineering boundaries established by approved human governance. AI may assist, analyze, recommend, and validate. Final engineering authority always remains with human engineers.**



- recommend appropriate classifications,
- detect duplicate artifacts,
- identify classification inconsistencies,
- suggest repository improvements.

Artificial Intelligence shall not reclassify repository artifacts without human approval.

---

# 13. Compliance

Every repository artifact shall comply with this standard before repository integration.

Repository reviews shall verify:

- correct classification,
- single authoritative ownership,
- absence of duplication,
- logical repository placement.

Non-compliant artifacts shall be corrected before approval.

---

# 14. Governance

This standard is governed by the EOS Architecture Board.

Changes to repository classification principles require Architecture Board approval.

Repository-wide reclassification shall occur only through approved repository governance processes.

---

# 15. Maintenance

Repository classification shall evolve only when supported by measurable engineering benefit.

New repository families shall be introduced only when existing classifications can no longer adequately represent engineering responsibilities.

Repository stability shall always take precedence over organizational convenience.

---

# 16. Constitutional Statement

Repository classification is the engineering discipline of assigning every artifact a single, authoritative home.

Classification exists to strengthen engineering clarity, reduce ambiguity, preserve repository consistency, and improve long-term maintainability.

A well-classified repository enables engineers and Artificial Intelligence to collaborate within a shared engineering structure while preserving human governance, engineering responsibility, and the integrity of the Engineering Operating System.



