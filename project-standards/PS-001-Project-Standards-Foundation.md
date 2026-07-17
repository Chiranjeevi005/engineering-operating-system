# PS-001 — Project Standards Foundation

## 1. Project Standard Identity

This document establishes the universal foundation for all Project Standards within the enterprise Engineering Operating System (EOS). It serves as the definitive structural template for PS-tier assets, dictating how individual engineering projects inherit, extend, and govern their execution environments.

## 2. Purpose

The purpose of this document is to define the boundaries, lifecycle, and operational constraints of Project Standards. It ensures that every project within the enterprise maintains a consistent, governed approach to its domain-specific engineering decisions without violating overarching enterprise rules.

## 3. Scope

This foundational standard applies universally to every Project Standard created within the enterprise, regardless of the target domain, platform, language, or deployment strategy.

## 4. Objectives

The primary objectives of this document are to:
* Establish a standardized composition for all Project Standards.
* Define the explicit inheritance relationship between a Project Standard and the broader EOS hierarchy.
* Prevent the duplication or contradiction of enterprise-level mandates at the project level.
* Provide a clear framework for defining project-specific workflows, architectures, and conventions.

## 5. Intended Audience

This document is intended for:
* **Enterprise Architects:** To ensure project-level standards align with the EOS.
* **Engineering Leads & Technical Product Managers:** To understand the constraints and responsibilities when drafting a new Project Standard for a specific product.
* **Software Engineers:** To comprehend the origin and authority of the Project Standards governing their day-to-day execution.

## 6. Applicability

The rules defined herein MUST be universally applied whenever a new project is initiated or a legacy project is brought under EOS governance. Every project MUST possess an active, documented Project Standard inheriting from this foundation.

## 7. Non-Goals

To preserve a strict separation of concerns, this foundation document has explicit non-goals:
* It MUST NOT mandate specific programming languages, tools, or runtimes.
* It MUST NOT define business domain rules or specific application architectures.
* It MUST NOT attempt to function as an executable Starter Kit.

## 8. Knowledge Flow

Within the EOS, knowledge flows downward from the enterprise to the project. Project Standards MUST consume enterprise mandates through their inherited Engineering Profiles and Starter Kits. The Project Standard serves as the final, localized crystallization of this knowledge, applying specific execution rules to a defined business domain.

## 9. Inheritance Model

Project Standards exist at the terminal edge of the EOS inheritance hierarchy:
1. **Engineering Standards (ES):** Define universal, technology-agnostic enterprise rules.
2. **Engineering Profiles (EP):** Inherit from ES; define technology-specific mandates.
3. **Starter Kits (SK):** Inherit from EP; provide the executable scaffolding and implementation.
4. **Project Standards (PS):** Inherit from SK; define project-specific execution rules and architecture.

A Project Standard MUST inherit strictly from an approved Starter Kit.

## 10. Project Standard Lifecycle

A Project Standard MUST maintain a defined lifecycle:
* **Inception:** Drafted during the architectural planning phase of a new product or service.
* **Active:** Maintained and governed alongside the active development of the project.
* **Deprecated:** Scheduled for retirement, typically when the underlying product enters maintenance mode.
* **Retired:** Archived upon the decommissioning of the associated product or repository.

## 11. Governance

Project Standards MUST be treated as formal governance documents.
* A Project Standard MUST be peer-reviewed and ratified by the engineering leadership team responsible for the domain.
* Any structural deviation from the inherited Starter Kit MUST require a documented governance exception within the Project Standard.

## 12. Versioning Strategy

Project Standards SHOULD utilize Semantic Versioning (SemVer) aligned with major architectural shifts in the project.
* **Major:** A fundamental change in the project's domain architecture or a migration to a new parent Starter Kit.
* **Minor:** The introduction of new project-specific workflows, tools, or structural layers.
* **Patch:** Clarifications, updates to documentation, or minor process refinements.

## 13. Extension Rules

Project Standards are designed to extend the EOS into the specific business domain.
* A Project Standard MUST NOT redefine rules already established by its parent Starter Kit or Engineering Profile.
* A Project Standard MAY introduce stricter constraints than those inherited (e.g., requiring 100% test coverage when the enterprise mandates 80%).
* A Project Standard MUST NOT weaken or disable inherited governance (e.g., disabling static analysis rules injected by the Starter Kit).

## 14. Relationship with Engineering Standards

Engineering Standards define universal truths (e.g., "All secrets MUST be encrypted in transit"). The Project Standard MUST assume these truths are enforced by the underlying platforms and MUST NOT attempt to redefine or circumvent them.

## 15. Relationship with Engineering Profiles

Engineering Profiles define the abstract rules for a specific technology. Project Standards MUST NOT reference Engineering Profiles directly; they MUST consume these rules via the physical manifestation provided by the Starter Kit.

## 16. Relationship with Starter Kits

Starter Kits provide the executable baseline. The Project Standard MUST document the exact version of the Starter Kit used during initialization and MUST define the project's strategy for consuming future updates from that Starter Kit.

## 17. Relationship with Engineering Projects

The Project Standard is the definitive rulebook for a specific engineering project (e.g., "QuizArena"). The engineering project repository is the physical execution of the Project Standard. A project MUST NOT contain architectural paradigms, tools, or workflows that contradict its governing Project Standard.

## 18. Project Standard Principles

All Project Standards MUST adhere to the following principles:
* **Clarity Over Cleverness:** Rules and workflows MUST be explicitly defined, leaving no room for procedural ambiguity.
* **Traceability:** Every major architectural or tooling decision unique to the project MUST be documented as an Architecture Decision Record (ADR).
* **Automation First:** Project Standards SHOULD mandate automated enforcement of rules (e.g., CI/CD gates) over manual developer discipline.

## 19. Compliance Requirements

To remain compliant within the EOS, a Project Standard MUST:
* Explicitly declare its inheritance from a ratified Starter Kit.
* Contain all required sections defined in the Project Standard Composition baseline.
* Be stored in a discoverable, version-controlled repository alongside or near the product codebase.

## 20. Maintenance Responsibilities

The Technical Lead or Engineering Manager of the specific project MUST own the maintenance of the Project Standard. It is their responsibility to ensure the document remains an accurate reflection of the project's architecture and operational reality.

## 21. Traceability

Project Standards MUST maintain verifiable traceability. The document MUST include metadata detailing the specific project name, the parent Starter Kit, and the date of last ratification.

## 22. Project Standard Deliverables

A complete Project Standard MUST deliver:
* The core governance document (e.g., `PS-101.md`).
* Project-specific Architecture Decision Records (ADRs).
* A documented Definition of Done (DoD) and Definition of Ready (DoR).
* A clear operational workflow (Branching, PR rules, Release strategy).

## 23. Project Standard Composition

Every Project Standard MUST contain the following sections:

1. Project Identity
2. Project Vision
3. Business Objectives
4. Scope
5. Stakeholders
6. Inheritance
7. Technology Stack
8. Architecture
9. Repository Standards
10. Development Workflow
11. Coding Standards
12. Quality Standards
13. Testing Strategy
14. Security Requirements
15. Deployment Strategy
16. Monitoring & Observability
17. Documentation Standards
18. Definition of Ready
19. Definition of Done
20. ADR Index
21. Risk Register
22. Version History

## 24. Project Standard Anti-Patterns

The following practices destroy the value of Project Standards and MUST NOT be permitted:
* **The "Copy-Paste" Standard:** Duplicating the contents of the Starter Kit documentation into the Project Standard instead of relying on inheritance.
* **The Phantom Standard:** Creating a Project Standard that does not reflect the actual workflows and architecture used by the engineering team.
* **The Governance Bypass:** Using the Project Standard as a loophole to explicitly disable enterprise security or quality gates.
* **The Theoretical Standard:** Defining rules and workflows that are entirely manual and lack CI/CD or tooling enforcement.

## 25. Project Lifecycle

Every project within the EOS MUST adhere to the following universal lifecycle:

```text
Inception

↓

Planning

↓

Development

↓

Testing

↓

Release

↓

Operations

↓

Maintenance

↓

Retirement
```

The Project Standard MUST govern the workflows spanning this entire lifecycle.
