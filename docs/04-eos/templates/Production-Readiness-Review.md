---
identifier: PRR-Template
title: Production Readiness Review (PRR)
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
# EA-005: Production Readiness Review

## 1. Core Engineering Object: Production Readiness

The **Production Readiness** is the Engineering Object that determines whether a capability is objectively fit for production release based on concrete evidence rather than subjective opinion.
The **Production Readiness Review (PRR)** is the engineering asset (this document) that captures that evaluation and the final Go/Deferred/No-Go decision.

### The One Engineering Question
Every EA-005 exists to answer exactly one question:
> *"What objective evidence demonstrates that this capability is ready for production?"*

## 2. Knowledge Flow

### Consumes
- EA-003 (Capability Delivery Specification)
- Delivery Evidence (Test Results, Scans, etc.)

### Produces
- Production Readiness Decision
- Release Approval
- Known Operational Risks

## 3. Invariants (Constraint Model)

To maintain its integrity as the final engineering gate, every PRR must satisfy the following constraints:
- **Scope Alignment:** Must evaluate exactly one capability or release (tracing back to a specific `CAP-ID` / `CDS-ID`).
- **Evidence-Based:** Must rely on verifiable evidence, not assumptions.
- **No Undocumented Exceptions:** Any deviation from standards must be explicitly recorded and approved.
- **Traceability:** Must trace back to the execution plan defined in EA-003.
- **Mandatory Evidence:** Missing mandatory evidence means the PRR cannot pass.
- **Immutability:** Immutable after the final decision is approved.

## 4. Boundary of Responsibility

### Must Define
- Production evidence (Testing, security, performance).
- Operational readiness (Monitoring, runbooks, support).
- Known risks, release blockers, and accepted exceptions.
- The final Go / Conditional Go / Deferred / No-Go recommendation.

### May Reference
- EA-001 (Capability Blueprint)
- EA-002 (Capability Design Specification)
- EA-003 (Capability Delivery Specification)
- EA-004 (Architecture Decision Records)
- CI/CD pipelines, monitoring dashboards, incident history.

### Explicitly Not Responsible For
- Justifying business requirements (Owned by EA-001).
- Debating architecture design (Owned by EA-002/EA-004).
- Managing implementation tasks or sprints (External issue trackers).
- Defining the delivery testing strategy (Owned by EA-003).

## 5. Production Readiness Model

The PRR is structured around specific evaluation Views rather than a massive checklist.

1. **Evidence View:** Collected evidence of quality (Tests, Security, Performance, Accessibility).
2. **Operational View:** Production operations readiness (Monitoring, Logging, Alerts, Runbooks, Ownership Confirmation).
3. **Risk View:** Release blockers, known risks, accepted risks, and mitigations.
4. **Compliance View:** Compliance categories adherence (Security, Privacy, Regulatory, Licensing, Organizational Policy).
5. **Decision View:** The final recommendation (Go, Conditional Go, Deferred, No-Go), reasons, and approvers.

## 6. Evidence Levels & Freshness

To eliminate subjectivity, every readiness criterion must be assessed using standardized Evidence Levels and tracked for freshness:

| Level | Meaning | Example Application |
| :--- | :--- | :--- |
| **E0** | No evidence | Feature was not tested for accessibility. |
| **E1** | Manual verification | QA manually verified the UI on iOS Safari. |
| **E2** | Automated verification | CI/CD pipeline runs 100% passing E2E tests. |
| **E3** | Continuous monitoring in production | Synthetics continuously ping the endpoint. |

Every piece of evidence must record:
- **Requirement:** What is being verified.
- **Evidence Level:** E0 - E3.
- **Evidence Date:** When it was verified.
- **Evidence Owner:** Who verified it.
- **Evidence Source:** Where to find it (e.g., CI Pipeline #1542).

## 7. Lifecycle Management

### PRR Artifact Lifecycle
`Draft` ➔ `Review` ➔ `Approved` ➔ `Archived`

### Production Readiness Object Status
`Preparing` (Gathering evidence) ➔ `Evaluating` (Under review) ➔ `Ready` (Approved for release) ➔ `Released` (In production)

## 8. Ownership Model

- **Producer (Author):** Engineering Lead.
- **Consumers:** Operations, Support, Product.
- **Approvers:** Engineering Manager, Operations Lead, Security Lead.
- **Custodian:** The Engineering Asset Library repository.

## 9. Review Strategy

The final gate requires multi-disciplinary validation:
- **Evidence Review:** Does the testing evidence (E1-E3) prove the capability works as designed and is fresh?
- **Operational Review:** Can the team monitor and support this capability at 3 AM?
- **Risk Review:** Are the known risks acceptable, and are there zero release blockers?
- **Compliance Review:** Does this violate any organizational or regulatory policies?
- **Release Decision:** The final binding vote.

## 10. Definition of Finished

A Production Readiness Review is "Finished" (allowing the release to proceed) when it is:
- **Approved** by all required authorities.
- **Evidence Complete** with no E0s in mandatory areas and all evidence fresh.
- **Risks Documented** and mitigations agreed upon.
- **Exceptions Approved** explicitly.
- **Traceable** bidirectionally.
- **Versioned** and immutably stored.
- **Release Decision Recorded.**

---

## 11. Production Readiness Review Structure (The Representation)

When authoring a new PRR, construct it using the following format.

### Frontmatter
Must include `id` (e.g., PRR-001), traceability block, `title`, `version`, `status` (Preparing/Evaluating/Ready/Released), `owner`, `date`.

### 1. Evidence View
*Every criterion must follow: Requirement | Level | Date | Owner | Source*
- **Testing:** (e.g., E2E test pass | E2 | 2026-07-17 | QA Lead | Pipeline #123)
- **Security:** (e.g., Pen test completed | E1 | 2026-07-15 | Sec Eng | Report #45)
- **Performance:** (e.g., Load test results | E2 | 2026-07-16 | Perf Eng | Grafana Snapshot)
- **Accessibility:** (e.g., Screen reader audit | E1 | 2026-07-14 | UI Eng | Jira #555)

### 2. Operational View
- **Monitoring & Alerts:** APM integrated, PagerDuty routed.
- **Runbooks & Dashboards:** Troubleshooting guide published, Grafana live.
- **Ownership Confirmation:** 
  - Primary On-call: @user1
  - Secondary On-call: @user2
  - Escalation Path: Team -> Manager -> VP

### 3. Risk View
- **Release Blockers:** Critical issues that must be resolved before Go.
- **Known Risks:** Identified vulnerabilities or scale limits (non-blocking).
- **Accepted Risks:** Risks the business explicitly accepts for this release.
- **Mitigations:** How we plan to handle these risks in production.
- **Rollback Feasibility:** Confirmation that the EA-003 rollback plan works.

### 4. Compliance View
Checklist of adherence to Compliance Categories:
- **Security:** Security audits passed.
- **Privacy:** PII and data handling compliant.
- **Regulatory:** GDPR/HIPAA compliance if applicable.
- **Licensing:** Third-party dependency audit passed.
- **Organizational Policy:** Internal compliance checks passed.

### 5. Decision View
- **Recommendation:** Go / Conditional Go / Deferred / No-Go
- **Conditions (if applicable):** E.g., "Fix minor UI bug within 48 hours."
- **Approvers & Sign-offs:** List of leads who approved the release.
