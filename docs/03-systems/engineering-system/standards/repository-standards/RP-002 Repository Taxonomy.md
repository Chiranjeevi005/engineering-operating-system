---
identifier: RP-002
title: RP 002 Repository Taxonomy
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
# RP-002 Repository Taxonomy

**Repository Family:** Repository Standards (RP)
**Identifier:** RP-002
**Version:** 1.0
**Status:** Superseded by IAS-001
**Owner:** EOS Team
**Audience:** All Engineering Personnel, Platform Architects, and Automated Systems

## Purpose
This document defines the normative architectural taxonomy for the Engineering Operating System (EOS) repository. It establishes the mandatory top-level domains and dictates the boundaries of responsibility for all structural engineering assets.

## Scope
This standard governs the structural hierarchy of the EOS repository. It applies to all directories, sub-directories, and files residing within the repository. It does not govern the internal structure of active external project repositories (which are governed by Project Standards), nor does it govern naming conventions (which are governed by RP-003).

## Objectives
- Ensure zero ambiguity regarding the location of any artifact.
- Maintain a strict limit on the cognitive load required to navigate the platform.
- Prevent repository sprawl through rigid lifecycle-based boundaries.
- Support infinite horizontal scalability within bounded domains.
- Facilitate predictable automation and programmatic interaction.

## Definitions
- **Taxonomy:** The science of classification according to a pre-determined system.
- **Root Domain:** One of the primary, top-level directories within the EOS repository.
- **Governed Domain:** A repository location that enforceably requires artifacts to adhere to specific engineering standards.
- **Sprawl:** The uncontrolled proliferation of directories or artifacts without adherence to the repository taxonomy.

## Guiding Principles
1. **Lifecycle Alignment:** The repository structure MUST mirror the engineering lifecycle, rather than organizational charts or file types.
2. **Cognitive Efficiency:** The taxonomy MUST remain shallow enough to grasp in five minutes, yet robust enough to scale over a decade.
3. **Single Source of Truth:** A conceptual artifact MUST have exactly one valid structural location.
4. **Resilience to Change:** The addition of new technological capabilities MUST NOT necessitate refactoring the root taxonomy.

## Normative Rules
1. The root of the repository MUST contain exactly seven lifecycle domains:
   - `00-constitution`
   - `01-foundation`
   - `02-implementation`
   - `03-projects`
   - `04-operations`
   - `05-knowledge`
   - `archive`
2. No additional directories MAY be created at the root level.
3. Every artifact introduced to the repository MUST be classified into exactly one root domain.
4. Governed document families (e.g., Engineering Standards, Repository Standards) MUST reside in a flat directory structure immediately beneath their categorical parent (e.g., `01-foundation/repository-standards/`).
5. Executable asset domains (e.g., Starter Kits) MAY maintain internal sub-directories required for compilation and execution.
6. The repository MUST NOT contain arbitrary categorization folders (e.g., `misc`, `general`, `temp`).
7. Empty directories MUST NOT be tracked in the repository.

## Responsibilities
- **EOS Architects (Humans):** MUST design, approve, and maintain this taxonomy. They hold final authority over structural evolution.
- **Engineering Personnel (Humans):** MUST place artifacts in strict accordance with this taxonomy.
- **AI Assistants:** **Artificial Intelligence operates within the engineering boundaries established by approved human governance. AI may assist, analyze, recommend, and validate. Final engineering authority always remains with human engineers.**

## Relationships
- **Inherits:** RP-001 Foundation
- **Precedes:** RP-003 Naming Standard, RP-004 Classification Rules
- **Constrains:** All engineering activities interacting with the EOS repository storage layer.

## Compliance Requirements
- All structural change proposals and integration requests MUST pass an automated path validation asserting that no restricted boundaries are violated.
- Artifacts placed outside their defined taxonomic boundaries MUST be rejected during the review phase.
- AI systems analyzing the repository MUST flag any taxonomic violations as critical errors.

## Exceptions
- Transitory infrastructure files required by version control system configurations or platform integration directories MAY exist at the root level, provided they do not contain engineering assets.
- Explicit approval from the EOS Lead Architect is required to grant any structural exception. 

## Governance
This standard is governed by the EOS Architecture Board. Any structural deviation requires formal amendment of this document before execution.

## Maintenance
This document is subject to an annual review. Maintenance is purely structural; content additions belonging to implementation domains MUST NOT trigger an update to this document.

## Success Criteria
- **Zero Ambiguity:** Engineers can predict the location of any artifact without relying on global search.
- **Stability:** The root taxonomy remains unmodified for a minimum of five years.
- **Automation Health:** CI/CD pipelines and AI assistants parse the repository with 100% path determinism.

## Future Evolution
Evolution of the taxonomy is permitted only when an entirely new capability emerges that cannot be logically classified into the existing six domains. If such an event occurs, the change MUST be preceded by a formal architectural review, a revision of this standard, and a structured migration plan. Any new domain must first be incubated as an Architecture Decision Record (ADR) before it can trigger a formal revision of the RP-002 taxonomy.

## Appendix: Artifact Families

**Artifact Family:** HC

**Purpose:** Defines constitutional principles governing all AI-assisted engineering activities within EOS.

**Responsibility:** Human-centered governance.

**Scope:** Applies to every AI participant.

**Dependencies:** None.

**Inherited By:** Entire EOS.
