---
identifier: GLOSSARY-001
version: 1.0
status: Draft
audience: Architects, Engineers, AI Assistants
---

# GLOSSARY-001 — Terminology Standard

## 1. Purpose
This standard establishes the immutable vocabulary for the HC-AI SDLC. Consistent terminology is essential to prevent drift and ambiguity, particularly when human engineers interact with AI assistants.

## 2. Core Terminology

### Artifact
A tangible output (document, code, template, diagram) produced during the execution of a lifecycle. Artifacts belong to specific domains based on their primary responsibility.

### Capability
A distinct functional ability required to achieve a business or human objective. Capabilities are defined before selecting the technical implementation.

### Charter
A Level 1 Governance document that establishes the vision, mission, core values, and guiding principles for a domain or the entire framework (e.g., Constitutional Charter).

### Domain
A bounded area of responsibility within the Governance Hierarchy (e.g., Governance Domain, Operational Domain, Systems Domain). Domains define authority and ownership.

### Engineering Operating System (EOS)
The Implementation Domain (Level 4). It is the tangible execution of the Operational Model, containing the physical assets, scripts, session managers, and templates used by engineers and agents.

### Governance
The highest level of authority (Level 1). Governance establishes the immutable laws, standards, and definitions that constrain all lower-level domains.

### Operational Model
The abstract process definition (Level 2) that describes the end-to-end flow of work, roles, and lifecycles without tying them to specific tools.

### Record
Evidence of execution (e.g., an Architecture Decision Record, Validation Report, or Observation). Records are descriptive, not prescriptive, and carry zero governing authority.

### State
The current, verifiable condition of a system, artifact, or process within a lifecycle.

### System
A conceptual grouping (Level 3) of rules, constraints, and procedures that govern a specific capability domain (e.g., the Engineering System, Verification System). Systems implement the Operational Model.
