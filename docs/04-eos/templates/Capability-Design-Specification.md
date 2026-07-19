---
identifier: CDS-Template
title: Capability Design Specification (CDS)
version: 1.1
status: Active
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
# EA-002: Capability Design Specification (CDS)

## 1. Core Engineering Object: Capability Design

The **Capability Design** is the Engineering Object that models how a specific capability will be technically realized. It translates the "What and Why" from the Capability Blueprint into structural engineering truth.

The **Capability Design Specification (CDS)** is the engineering asset (this document) that represents and records that design. It is the storage mechanism for the information, not the capability design itself.

## 2. Knowledge Flow

### Consumes
- EA-001 (Capability Blueprint)
- Applicable Standards

### Produces
- Capability Design
- Technical Architecture
- Design Decisions

## 3. Invariants (Constraint Model)

Every Capability Design Specification must adhere to the following invariants:
- **Traceability Root:** Must explicitly trace back to exactly one Capability Blueprint ID (`CAP-ID`).
- **No Direct Implementation:** Must not contain executable code, step-by-step production tasks, or sprint backlogs.
- **Architecture Compliance:** Must not contradict the global Engineering Operating System (EOS) architecture without a formally approved Architecture Decision Record (EA-004).
- **Single Source of Truth:** Must be the sole reference for API contracts, database schemas, and system interactions for its parent capability.
- **Immutability:** Cannot be materially modified after approval without a formal version bump.

## 4. Boundary of Responsibility

The Capability Design has strict boundaries separating it from business strategy upstream and production execution downstream.

### Must Define
- Capability Architecture & Topology
- API Interfaces and Integration Points
- Data Models & Database Schemas
- Security & Access Controls
- Non-functional constraints (Quality Attributes)

### May Reference
- UI Wireframes (for structural context only)
- Business Rules (to justify design choices)
- Performance Targets (from EA-001)

### Explicitly Not Responsible For
- Business Justification or "Why" (owned by EA-001)
- Pixel-Perfect UI Visuals
- Step-by-Step Implementation Tasks (owned by EA-003)
- Sprint Planning or Agile Epics

## 5. Capability Design Model

The design is represented through a multi-view model rather than a flat document. Every CDS must cover these views:

1. **Architecture View:** System Context, Component Model, Topology.
2. **Information & State View:** Data models, state models, persistence, storage, cache, consistency.
3. **Interaction View:** API contracts, event schemas, sequence diagrams.
4. **Security View:** Authentication, authorization, data privacy, threat modeling.
5. **Operational View:** Observability, logging, metrics, tracing, health checks, alerts, recovery.
6. **Decision View:** Design principles, technical assumptions, inherited constraints, and alternatives considered.

## 6. Lifecycle Management

### CDS Artifact Lifecycle
`Draft` ➔ `Under Review` ➔ `Approved` ➔ `Archived`

### Capability Design Object Lifecycle
`Architected` ➔ `Validated` (via technical review) ➔ `Realized` (via EA-003/Code) ➔ `Deprecated`

## 7. Ownership Model

- **Producer (Author):** Software Architect or Lead Engineer.
- **Consumers:** Software Engineers, QA Engineers, DevOps (feeding into EA-003).
- **Approvers:** Architecture Board / Principal Engineers & Security Lead.
- **Custodian:** The Engineering Asset Library repository.

## 8. Review Strategy & Exit Criteria

Before transitioning to the next phase (EA-003), the CDS must pass:
1. **Traceability Review:** Does this design perfectly address the requirements of the EA-001 Blueprint without omitting features or inventing unrequested ones?
2. **Security & Risk Review:** Are access controls, data boundaries, and failure modes accounted for?
3. **Architecture Alignment Review:** Does this align with broader system design and quality attributes?
4. **Completeness Review (Exit Criterion):** Is the design unambiguous enough that the Capability Production Specification (EA-003) can be immediately constructed without fundamental architectural questions?

## 9. Definition of Finished

A Capability Design Specification is "Finished" when it is:
- **Approved** by Architecture and Security authorities.
- **Stored** immutably in the Engineering Asset Library.
- **Traceable** bidirectionally (up to `CAP-ID`, down to ADRs or EA-003).
- **Versioned** (e.g., v1.0).
- **Reviewed** against Traceability, Security, Alignment, and Completeness.
- **Linked** to any generated Architecture Decision Records (EA-004).

---

## 10. Capability Design Specification Structure (The Representation)

When authoring a CDS, construct it using the Design Views:

### Frontmatter
Must include `id` (e.g., CDS-001), `parent_cap_id` (Traceability), `title`, `version`, `status`, `owner`, `date`.

### 1. Decision View
- **Design Principles:** Guiding constraints (e.g., Stateless, API First, Idempotent).
- **Technical Assumptions:** (e.g., External API SLAs, Network Latency, Infrastructure availability).
- **Constraints:** Inherited from EA-001 + emerging Technical/Architectural Constraints.
- **Alternatives Considered:** Record **local design alternatives** that remain within the scope of this Capability Design (e.g., REST vs GraphQL, sync vs async, component decomposition). If a decision has **system-wide, long-term, cross-capability, or architectural impact**, it must be documented in an EA-004 ADR. In such cases, link the ADR here rather than duplicating the analysis.
- **Risks & Trade-offs:** Known limitations and future improvements.

### 2. Architecture View
- **System Context:** High-level system placement.
- **Component Model:** The internal components realizing this capability.
- **Quality Attributes:** Target performance, scalability, reliability, accessibility.

### 3. Information & State View
- **Data Models:** Schemas and entity relationships.
- **State Models:** State machine transitions and lifecycles.
- **Persistence & Storage:** Storage mechanisms, database engine expectations.
- **Cache & Consistency:** Caching strategies and data consistency guarantees.

### 4. Interaction View
- **Interfaces:** Strict API Contracts (REST/GraphQL/Events).
- **Sequence:** Component interactions via Mermaid sequence diagrams.

### 5. Security View
- **Access Control:** Permissions, least-privilege enforcement.
- **Failure Modes:** How the system degrades gracefully.

### 6. Operational View
- **Observability:** Required logging, metrics, distributed tracing.
- **Resilience:** Health checks, alert thresholds, retry mechanisms.
- **Recovery:** Disaster recovery, data restoration, and service resumption procedures.
