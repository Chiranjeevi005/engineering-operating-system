
---
identifier: EOS-002
title: EOS Catalog & Architecture
version: 1.0
status: Active
owner: Engineering
audience:
  - Architects
  - Engineers
  - AI Assistants
category: Engineering Operating System
lifecycle: EOS
governed_by:
  - EOS-001
inherits_from:
  - EOS-001
---
# EOS-002 — EOS Catalog & Architecture

> **Normative EOS Architecture Document**
>
> This document defines the information architecture, artifact taxonomy, organizational structure, navigation model, and relationships of the Engineering Operating System (EOS).
>
> It provides the canonical map of all reusable engineering assets within the Human-Centered Artificial Intelligence Software Development Lifecycle (HC-AI SDLC).
>
> This document derives its authority from **EOS-001 — Engineering Operating System**.

---

# 1. Purpose

The purpose of this document is to establish a single, consistent architecture for organizing the Engineering Operating System.

The EOS Catalog ensures that engineering assets remain discoverable, reusable, maintainable, and traceable throughout the lifecycle.

---

# 2. Objectives

The EOS Catalog exists to:

- Organize reusable engineering assets.
- Standardize engineering resources.
- Simplify navigation.
- Promote reuse.
- Reduce duplication.
- Support AI-assisted engineering.
- Enable long-term scalability.
- Preserve engineering consistency.

---

# 3. Engineering Operating System Philosophy

EOS transforms standards into engineering execution.

Governance defines principles.

Operational Standards define execution.

System Standards define capabilities.

EOS provides the reusable assets that engineers use every day.

---

# 4. EOS Architecture

The Engineering Operating System is organized into reusable engineering domains.

```text
Engineering Operating System

Blueprints
Starter Kits
Workflows
Templates
Checklists
Playbooks
Automation
Prompts
Reference Architectures
Examples
Assets
```

Each domain has a clearly defined responsibility.

---

# 5. EOS Artifact Taxonomy

## Blueprints

Blueprints describe complete engineering solutions at a conceptual level.

Examples:

- SaaS Blueprint
- AI Product Blueprint
- Dashboard Blueprint

---

## Starter Kits

Starter Kits provide production-ready engineering foundations.

Examples:

- Next.js SaaS Starter
- AI Agent Starter
- REST API Starter

---

## Workflows

Workflows define repeatable engineering activities.

Examples:

- Product Discovery
- Architecture Design
- Sprint Planning
- Release Management

---

## Templates

Templates provide standardized engineering documents.

Examples:

- Product Requirements Document
- Architecture Decision Record
- API Specification
- User Story

---

## Checklists

Checklists provide verification before progressing to the next activity.

Examples:

- Release Checklist
- Architecture Review Checklist
- Sprint Completion Checklist

---

## Playbooks

Playbooks describe recommended engineering practices.

Examples:

- Incident Response
- Production Deployment
- Code Review
- AI Collaboration

---

## Automation

Automation assets improve repeatability and engineering efficiency.

Examples:

- CI/CD Pipelines
- Validation Scripts
- Documentation Generation
- Repository Automation

---

## Prompts

Prompt libraries support AI-assisted engineering.

Examples:

- Business Analysis Prompt
- Architecture Prompt
- Verification Prompt
- Documentation Prompt

---

## Reference Architectures

Reference Architectures describe reusable solution architectures.

Examples:

- SaaS Architecture
- Event-Driven Architecture
- AI Platform Architecture

---

## Examples

Examples demonstrate practical implementation.

Examples include:

- Sample APIs
- Sample Specifications
- Sample Repositories
- Sample Workflows

---

## Assets

Reusable engineering assets.

Examples:

- Icons
- Diagrams
- Components
- Libraries
- Snippets

---

# 6. EOS Navigation

Engineering assets shall be organized according to capability rather than individual products.

Users should locate reusable assets before creating new ones.

---

# 7. Artifact Relationships

Engineering artifacts support one another.

Typical relationships include:

- Blueprint → Starter Kit
- Starter Kit → Workflow
- Workflow → Template
- Template → Checklist
- Checklist → Verification
- Playbook → Operational Guidance
- Automation → Workflow
- Prompt → Engineering Activity

Relationships shall remain traceable.

---

# 8. Naming Convention

EOS artifacts shall use consistent identifiers.

Examples:

- BP-101
- SK-101
- WF-101
- TM-101
- CL-101
- PB-101
- AU-101
- PR-101
- RA-101

Identifiers shall remain unique.

---

# 9. Repository Organization

The Engineering Operating System shall be organized as follows.

```text
04-eos/

EOS-001 Engineering Operating System.md
EOS-002 EOS Catalog & Architecture.md

blueprints/
starter-kits/
workflows/
templates/
checklists/
playbooks/
automation/
prompts/
reference-architectures/
examples/
assets/
```

---

# 10. Traceability

Every EOS artifact shall maintain traceability to:

- Governance Standards
- Operational Standards
- System Standards
- Engineering Activities
- Products

Traceability preserves consistency throughout the engineering lifecycle.

---

# 11. Evolution

The EOS Catalog may evolve to accommodate new engineering capabilities while preserving existing organizational principles.

Evolution shall:

- Maintain compatibility.
- Preserve discoverability.
- Avoid unnecessary complexity.
- Improve engineering productivity.

---

# 12. Compliance

EOS assets shall comply with this document by:

- Following the defined architecture.
- Maintaining traceability.
- Using standardized naming.
- Supporting engineering reuse.
- Preserving organizational consistency.

Compliance shall be verified through repository and engineering reviews.

---

# EOS Catalog Declaration

The EOS Catalog establishes the canonical architecture for organizing the Engineering Operating System.

Its purpose is to ensure that engineering assets remain reusable, discoverable, governed, and maintainable across products, projects, and organizations.

This document possesses no independent governance authority.

Its authority derives entirely from **EOS-001**, which derives its authority from the HC-AI SDLC governance hierarchy.

Accordingly, every EOS artifact shall be created, organized, maintained, and evolved in accordance with this catalog.
