---
identifier: CDEL-Template
title: Capability Delivery Specification (CDS)
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
# EA-003: Capability Delivery Specification

## 1. Core Engineering Object: Capability Delivery

The **Capability Delivery** is the Engineering Object that defines the strategic execution plan to build, verify, release, and transition a Capability Design (EA-002) into production operations. 

The **Capability Delivery Specification** is the engineering asset (this document) that represents this execution model. It answers "How will engineering execute this safely and verifiably?" without duplicating external project management tools.

## 2. Knowledge Flow

### Consumes
- EA-002 (Capability Design Specification)
- Applicable ADRs (EA-004)

### Produces
- Delivery Strategy
- Verification Strategy
- Release Plan
- Deployment Strategy
- Rollback Strategy

## 3. Invariants (Constraint Model)

Every Capability Delivery Specification must adhere to the following invariants:
- **Traceability Root:** Must explicitly trace back to exactly one Capability Design ID (`CDS-ID`).
- **Strategy Over Tasks:** Must define the delivery strategy (streams, automation, verification) but must NOT contain individual daily tickets or task assignments.
- **No Design Changes:** Cannot alter the architectural design (EA-002). Design changes require a formal loop back to EA-002.
- **Gate Enforcement:** Must explicitly define the Release Gates required before production deployment.
- **Immutability:** The execution strategy is locked once approved; the execution itself is tracked dynamically in external systems.

## 4. Definition of Ready

Delivery execution (coding) cannot begin until the Definition of Ready is met:
- **Approved EA-001:** The business intent and scope are locked.
- **Approved EA-002:** The technical design and interfaces are locked.
- **Dependencies Ready:** Upstream blockers are resolved.
- **Environment Ready:** The required environments (Dev/Test) are provisioned.
- **Automation Ready:** CI/CD pipelines are available to accept code.
- **People Ready:** The required engineering streams are staffed.

## 5. Dependencies

Execution planning depends heavily on prerequisites. Every EA-003 must list explicit dependencies required before release:
- External Services & Third-party APIs
- Infrastructure & Storage Provisioning
- Secrets, Keys & Certificates
- Feature Flags configuration
- Event Queues or Data Streams

## 6. Environment Strategy

The explicit progression of this capability through the infrastructure landscape:
`Development` ➔ `Testing` ➔ `Staging` ➔ `Production`

## 7. Boundary of Responsibility

### Must Define
- Delivery Strategy (Parallel streams, phases)
- Verification Model (How we prove it works)
- Automation Strategy (CI/CD expectations)
- Operational Readiness (Dashboards, alerts, runbooks)

### May Reference
- External task trackers (Jira, GitHub Issues, Linear)
- Specific deployment environments

### Explicitly Not Responsible For
- Daily task management or Sprint Backlogs
- Altering architecture or API contracts (Owned by EA-002)
- Re-justifying the business case (Owned by EA-001)

## 8. Capability Delivery Model

The Delivery Specification is organized into strategic Views rather than task lists:

1. **Delivery View:** The engineering execution streams (e.g., Backend API Stream, Frontend UI Stream, Infrastructure Stream) and how they merge.
2. **Verification View:** Code review standards, static analysis, unit tests, integration tests, security scans, dependency scans, performance checks, and accessibility checks.
3. **Automation View:** CI Pipeline (Build, Package) and CD Pipeline (Deploy, Configuration).
4. **Release View:** Feature flags, deployment sequencing, data migrations.
5. **Operational Readiness View:** Monitoring, logging integration, alerting thresholds, dashboards, runbooks, support ownership.
6. **Recovery View:** Rollback automation and disaster recovery procedures.

## 9. Release Gates (Review Model)

The progression through quality gates must be explicitly defined and followed:
`Engineering Review` ➔ `QA Review` ➔ `Production Readiness Review (PRR)` ➔ `Release`

## 10. Definition of Finished

A Capability Delivery Specification is "Finished" (ready for engineering to begin execution) when the strategy is:
- **Approved** by Engineering and Operations leadership.
- **Traceable** bidirectionally.
- **Versioned** (e.g., v1.0).
- **Review Complete** (The delivery plan is vetted).
- **Automation Ready** (CI/CD strategies are defined).
- **Linked** to the external issue trackers where work breakdown will occur.
- **Ready to enter engineering execution**

---

## 11. Capability Delivery Specification Structure (The Representation)

When authoring a new Capability Delivery Specification, construct it using the Delivery Views:

### Frontmatter
Must include `id` (e.g., EA-003-001), `parent_cds_id` (Traceability), `title`, `version`, `status`, `owner`, `date`.

### 1. Delivery View
- **Delivery Strategy:** Parallel execution streams, integration points, and overall engineering phasing.
- **External References:** Links to the Epics/Labels in Jira/GitHub where the actual tasks reside.

### 2. Execution Context
- **Dependencies:** Required upstream capabilities or external services.
- **Environments:** Specific dev/test/staging/prod environments used.
- **Prerequisites:** Infra, secrets, feature flags, configuration.

### 3. Verification View
- **Automated Verification:** Unit, integration, static analysis, security, and performance testing requirements.
- **Manual Verification:** Production validation and accessibility checks.
- **Acceptance Verification:** Validation that this implementation satisfies the exact intent defined in EA-001.

### 4. Automation View
- **CI Pipeline:** Build and package automation steps.
- **CD Pipeline:** Deployment and rollout automation.

### 5. Release View
- **Release Strategy:** Canary, blue/green, or feature-flagged rollout.
- **Release Gates:** Specific sign-offs required (e.g., QA Review, PRR).

### 6. Operational Readiness View
- **Observability Assets:** Required dashboards and alerts.
- **Support & Runbooks:** Who owns this in production and how to support it.

### 7. Recovery View
- **Rollback:** Specific triggers and automated/manual steps to revert a failed release.
- **Recovery Validation:** Steps to confirm the system has successfully returned to a healthy state.
- **Post-Incident Actions:** Required clean-up, incident reporting, or data consistency checks.
