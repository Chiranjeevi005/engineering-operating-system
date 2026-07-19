---
identifier: ADR-Template
title: Architecture Decision Record (ADR)
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
# EA-004: Architecture Decision Record

## 1. Core Engineering Object: Architecture Decision

The **Architecture Decision** is the cross-cutting Engineering Object that captures a significant, systemic technical choice.
The **Architecture Decision Record (ADR)** is the engineering asset (this document) that represents and preserves the reasoning behind that choice.

Unlike EA-001, EA-002, and EA-003, which are sequential stages of capability delivery, EA-004 is **parallel and asynchronous**. It can be instantiated at any point during design or delivery whenever a structural choice is made.

### The One Engineering Question
Every EA-004 exists to answer exactly one question:
> *"Why was this architectural decision made, what alternatives were considered, and what are the long-term consequences?"*

## 2. Knowledge Flow

### Consumes
- EA-002 (Capability Design Specification) or systemic Engineering Context

### Produces
- Approved Architecture Decision
- Decision Rationale
- Architectural Constraints

## 3. Invariants (Constraint Model)

To maintain its value as the smallest, most focused asset in the library, every ADR must adhere to:
- **Single Focus:** Exactly one architectural decision per ADR.
- **Traceability:** Must be linked to at least one Capability Design (EA-002) or system-level initiative.
- **Explicit Choice:** Must describe the chosen decision unambiguously.
- **Evaluated Options:** Must record the alternatives that were considered and rejected.
- **Documented Reasoning:** Must explain the rationale behind the choice.
- **Immutability:** Immutable after approval.
- **Forward-Only Evolution:** New decisions or reversals require creating new ADRs that supersede older ones; old ADRs are never silently modified.

## 4. Decision Scope

### Must Define
- Problem (The specific challenge being solved)
- Context (The environment and constraints)
- Decision Drivers (The forces influencing the choice)
- Decision (The chosen technical path)
- Rationale (Why this path won)
- Alternatives (What else was considered)
- Consequences (Positive, Negative, Risks, Triggers)

### May Reference
- Capability Blueprints (EA-001)
- Capability Design Specifications (EA-002)
- Capability Delivery Specifications (EA-003)
- Internal Standards or External RFCs
- Related ADRs (Supersedes, Depends on, Related to)

### Explicitly Not Responsible For
- Business requirements (Owned by EA-001)
- Detailed system implementation (Owned by EA-002/EA-003)
- Sprint planning or execution tasks (Owned by external trackers)
- Testing strategy (Owned by EA-003)

## 5. Architecture Decision Model

The ADR is modeled around specific evaluation views:

1. **Context View:** What architectural problem exists? What are the constraints forcing a decision?
2. **Decision View:** What exact decision was chosen, and what drove it?
3. **Alternatives View:** What other options were evaluated and why were they rejected?
4. **Consequence View:** What are the benefits, trade-offs, risks, and systemic limitations of this choice?
5. **Traceability View:** Which capabilities are affected? Which CDS documents depend on this? Which other ADRs are related?
6. **Evolution View:** Can this decision be superseded later? What triggers a re-evaluation?

## 6. Lifecycle Management

### ADR Artifact Lifecycle
`Draft` ➔ `Review` ➔ `Approved` ➔ `Superseded` ➔ `Archived`

### Architecture Decision Object Status
To preserve architectural history, decisions utilize explicit statuses rather than being deleted. 

The decision branches after being proposed:
```text
                Accepted
               /
Proposed ─────┤
               \
                Rejected
```

Once accepted, the lifecycle continues:
`Accepted` ➔ `Applied` ➔ `Superseded` ➔ `Archived`

## 7. Ownership Model

- **Producer (Author):** Architecture Lead or Senior Engineer.
- **Consumers:** Engineering Teams, Future Architects.
- **Approver:** Architecture Board or Principal Engineers.
- **Custodian:** The Engineering Asset Library repository.

## 8. Review Strategy

Before an ADR transitions from Proposed to Accepted, it must be evaluated for:
- **Decision Quality:** Is the chosen solution structurally sound?
- **Architecture Alignment:** Does it conform to the broader EOS and company strategy?
- **Risk Assessment:** Are the trade-offs and consequences fully understood and acceptable?
- **Completeness:** Are the alternatives accurately represented?

## 9. Definition of Finished

An Architecture Decision Record is "Finished" (ready to be relied upon by EA-002/EA-003) when it is:
- **Approved** by the Architecture Board.
- **Traceable** to systemic needs or specific capabilities.
- **Versioned** and immutably stored.
- **Alternatives Recorded** explicitly.
- **Consequences Recorded** explicitly.
- **Linked** to any dependent CDS (EA-002) or related ADRs.

## 10. Decision Categories

To ensure the library remains searchable and reportable as it scales, every ADR must be tagged with a primary category:
- `Application Architecture`
- `Infrastructure`
- `Security`
- `Data`
- `Integration`
- `Technology Selection`
- `AI`
- `Performance`
- `Operations`
- `Governance`

---

## 11. Architecture Decision Record Structure (The Representation)

When authoring a new ADR, construct it using the following minimal structure:

### Frontmatter
Must include `id` (e.g., ADR-001), `title`, `status` (Proposed/Accepted/Rejected/Superseded/Archived), `category`, `owner`, `date`.

### 1. Decision Summary
A one-sentence summary of the decision.

### 2. Problem Context
The architectural challenge and constraints.

### 3. Decision Drivers
The forces influencing the choice (e.g., Scalability, Security, Cost, Simplicity, Performance, Team Expertise, Compliance).

### 4. Decision
The exact technical choice made.

### 5. Alternatives Considered
List of evaluated options and why they were rejected.

### 6. Rationale
Why this solution won based on the Decision Drivers.

### 7. Consequences
- **Positive Consequences:** Benefits and improvements.
- **Negative Consequences:** Trade-offs and accepted technical debt.
- **Known Risks:** Potential vulnerabilities or failure points.
- **Reassessment Triggers:** Specific events or scale limits that would force us to revisit this decision.

### 8. Affected Capabilities & Traceability
Links to the specific `CAP-ID` or `CDS-ID` that this decision impacts.

### 9. References & Related ADRs
- **Related ADRs:** (e.g., Supersedes ADR-004, Depends on ADR-009, Related to ADR-012)
- **External References:** Links to external documentation or RFCs.
