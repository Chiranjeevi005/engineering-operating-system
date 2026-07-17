---
Title: Domain Model
Document ID: META-007
Version: 1.0
Status: Approved
Owner: Chief Engineering Architect
Created: 2026-07-17
Updated: 2026-07-17
Dependencies: None
Approval: Approved
Classification: Internal
Review Frequency: Annually
Related Artifacts: None
Next Review: 2027-07-17
---

# Domain Model

## Purpose
To establish the conceptual boundaries of the EOS. Domains are bounded contexts, not filesystem folders, and ensure separation of concerns.

## Engineering Domains

* **System Domain:** Owns the OS itself (Manifests, Roadmaps).
* **Foundation Domain:** Owns immutable principles and constitutions.
* **Governance Domain:** Owns lifecycles, policies, and compliance.
* **Standards Domain:** Owns reusable rules and conventions.
* **Artifacts Domain:** Owns schemas and definitions of artifacts.
* **Templates Domain:** Owns starting blocks for engineers.
* **Architecture Domain:** Owns system design standards, ADRs, and the Meta-Model itself.
* **Quality Domain:** Owns verification strategy and testing frameworks.
* **Assurance Domain:** Owns evidence, security, threat modeling, and compliance.
* **Release Domain:** Owns CI/CD, versions, and deployment abstractions.
* **Operations Domain:** Owns runtime health, telemetry, incident response, and feedback loops.
* **AI Domain:** Owns AI workflows, prompts, and constraints.
* **Knowledge Domain:** Owns references and reference implementations.
* **Execution Domain:** Owns execution tracking (Sprints) and agile methodologies.
