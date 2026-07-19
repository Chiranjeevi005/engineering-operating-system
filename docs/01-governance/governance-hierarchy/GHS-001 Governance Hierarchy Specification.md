---
identifier: GHS-001
version: 1.0
status: Approved
audience: Architects, Engineers, AI Assistants
---

# GHS-001 — Governance Hierarchy Specification

## 1. Purpose
This specification defines the strict, multi-tiered governance model for the Human-Centered AI Software Development Lifecycle (HC-AI SDLC). It ensures that every artifact, process, and system has one clearly defined responsibility and one parent authority, preventing duplication and competing governance layers.

## 2. The Golden Rule of Placement
> **A document belongs to the domain that owns its primary responsibility, not the domain that references or consumes it.**

Examples of this rule in practice:
- *Repository Standards* govern how systems manage repositories, so they belong to the **Engineering System**, not top-level Governance.
- *Agent Operating Standard* governs universal AI behavior, so it belongs to **Governance**, not an individual agent implementation.
- *Session Manager* is a tool implementing the operational flow, so it belongs to **EOS**, not Systems.
- *Validation Report* is evidence of execution, so it belongs to **Records**.
- *QuizArena Architecture* is a specific consumer project, so it belongs to **Products**.

## 3. Governance Hierarchy

### Level 1: Governance
- **Responsibility**: Establishes universal laws, standards, terminology, and foundational structures.
- **Authority**: Absolute. All other levels must comply with Level 1.
- **Examples**: Universal Constitution, Information Architecture Standard (IAS-001), Terminology Standard (GLOSSARY-001).

### Level 2: Operational
- **Responsibility**: Translates governance into abstract processes and lifecycle models. Describes the end-to-end flow of work.
- **Authority**: Subordinate to Level 1, governs Level 3.
- **Examples**: Operational Model.

### Level 3: Systems
- **Responsibility**: Defines concrete rules, standards, and constraints for specific capability domains (e.g., Engineering, Verification).
- **Authority**: Subordinate to Level 2, governs Level 4.
- **Examples**: Engineering Standards, Research Standards.

### Level 4: Implementation (EOS)
- **Responsibility**: Provides the tangible tools, reusable assets, templates, and platforms to execute the systems.
- **Authority**: Subordinate to Level 3, provides scaffolding for Level 5.
- **Examples**: Starter kits, automation scripts, Session Manager.

### Level 5: Products
- **Responsibility**: The end applications or services that consume the framework.
- **Authority**: Subordinate to the entire framework. Cannot dictate rules upward.
- **Examples**: Client projects, internal applications.

## 4. Evidence (Records)
Records exist outside the prescriptive governance hierarchy. They are descriptive proof of execution (e.g., ADRs, logs, reports). They have zero governing authority.
