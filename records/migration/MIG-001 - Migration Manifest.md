---
identifier: MIG-001
title: MIG 001   Migration Manifest
version: 1.0
status: Active
owner: Records
audience: 
  - Architects
  - Engineers
  - AI Assistants
category: Migration Record
lifecycle: Record
governed_by: 
  - GHS-001
inherits_from:
  - GHS-001
---
# MIG-001 — Migration Manifest

## Purpose
Define the official migration ledger for transitioning legacy EOS artifacts into the HC-AI SDLC framework.

## Scope
Applies to all migration activities from EOS v0.x to HC-AI SDLC v1.x.

This document does not define migration procedures.
It records migration decisions.

## Authority
Governed by:
- GHS-001 — Governance Hierarchy Specification
- IAS-001 — Information Architecture Standard

Referenced by:
- Operational Model
- Repository Migration Activities

---

This ledger permanently records the official classification and migration mapping for all legacy documents originating from EOS v0.x into the HC-AI SDLC v1.0 framework. 
Legacy files listed here remain physically untouched in `99-legacy/`. This ledger acts as the authoritative pointer to their new counterparts.

## Allowed Status Values
- `Pending`
- `In Review`
- `Approved`
- `Migrated`
- `Validated`
- `Superseded`
- `Cancelled`

## Document Classification Ledger

| Legacy File | Status | Planned Action | Result | New Authority | Destination | Approval Reference |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| `01-foundation/governance/Mission.md` | Migrated | MERGE | Completed | CHARTER-001 | `docs/01-governance/` | v1.0 Foundation |
| `01-foundation/governance/Vision.md` | Migrated | MERGE | Completed | CHARTER-001 | `docs/01-governance/` | v1.0 Foundation |
| `01-foundation/governance/Values.md` | Migrated | MERGE | Completed | CHARTER-001 | `docs/01-governance/` | v1.0 Foundation |
| `01-foundation/governance/Principles.md` | Migrated | MERGE | Completed | CHARTER-001 | `docs/01-governance/` | v1.0 Foundation |
| `01-foundation/governance/*` (Remaining) | Migrated | REPLACE | Completed | CHARTER-001, GLOSSARY-001 | `docs/01-governance/` | v1.0 Foundation |
| `01-foundation/engineering-profiles/*` | Migrated | RELOCATE | Completed | EP-* | `docs/03-systems/engineering-system/profiles/` | v1.0 Foundation |
| `03-projects/project-standards/PS-001` | Migrated | RELOCATE | Completed | PS-001 | `docs/03-systems/engineering-system/standards/PS-001` | v1.0 Foundation |
| `03-projects/architecture-decisions/*` | Migrated | RELOCATE | Completed | ADR-* | `records/architecture/` | v1.0 Foundation |
| `05-knowledge/architecture/Meta-Model/*` | Migrated | MERGE | Completed | OM-001 | `docs/02-operational/` | v1.0 Foundation |
| `05-knowledge/architecture/Repository-*` | Migrated | REPLACE | Completed | IAS-001, GHS-001 | `docs/01-governance/` | v1.0 Foundation |
| `05-knowledge/documentation/system/*` | Migrated | RELOCATE | Completed | REL-* | `records/releases/` | v1.0 Foundation |
| `05-knowledge/documentation/engineering-artifacts/*` | Migrated | RELOCATE | Completed | EOS-* | `docs/04-eos/tooling/` | v1.0 Foundation |

## Duplicate Resolution Ledger

The following identical responsibilities exist in multiple legacy locations and must be resolved before migration is finalized:

| Document A | Document B | Responsibility | Resolution | Authority |
| :--- | :--- | :--- | :--- | :--- |
| `05-knowledge/.../Repository-Structure.md` | `records/architecture/Repository-Structure.md` | Repository structure rules | Doc A Replaced, Doc B Retained as Record | IAS-001, GHS-001 |
| `01-foundation/.../Definition-of-Finished.md` | `records/architecture/Definition-of-Finished.md` | Definition of Done / Finished | Doc A Replaced, Doc B Retained as Record | CHARTER-001 / OM-001 |
| `01-foundation/.../Evidence-Before-Acceptance-Principle.md` | `records/architecture/Evidence-Before-Acceptance.md` | Verification before acceptance | Doc A Replaced, Doc B Retained as Record | CHARTER-001 |

## Migration Acceptance

A migration entry may be marked **Validated** only when:
- The authoritative document exists.
- Internal references are updated.
- Duplicate authorities are resolved.
- Cross-reference validation succeeds.
- The migration has been approved.
