---
identifier: SK-001
title: SK 001 Foundation
version: 1.0
status: Active
owner: EOS
audience: 
  - Architects
  - Engineers
  - AI Assistants
category: Starter Kit
lifecycle: EOS
governed_by: 
  - EOS
inherits_from:
  - ENG-001
---
# SK-001 Starter Kit Foundation

## 1. Starter Kit Identity

This document establishes the enterprise foundation for all Starter Kits within the Engineering Operating System (EOS). A Starter Kit is the executable manifestation of an Engineering Profile, providing the initial scaffolding, configuration, and structural baseline from which all downstream projects MUST inherit.

## 2. Purpose

The primary purpose of a Starter Kit is to bridge the gap between abstract engineering governance (Engineering Standards and Profiles) and concrete execution (Project Standards and source code). It MUST accelerate time-to-value for engineering teams by providing a compliant, ready-to-build, and secure-by-default project structure that embodies enterprise best practices.

## 3. Scope

This foundation applies to every Starter Kit created, managed, or distributed within the enterprise ecosystem. It governs the structural expectations, lifecycle, and compliance requirements of the Starter Kit artifacts themselves, rather than the specific technologies they encapsulate.

## 4. Objectives

Starter Kits MUST achieve the following enterprise objectives:
* **Accelerated Bootstrapping:** Dramatically reduce the time required to initialize a compliant project.
* **Structural Consistency:** Guarantee that all new projects share an identical, recognizable architectural topology.
* **Embedded Governance:** Automatically enforce security, quality, and operational constraints at project inception.
* **Deterministic Inheritance:** Ensure downstream projects can predictably inherit updates and structural patches.

## 5. Intended Audience

The intended audience for this foundational document includes:
* **Platform Engineers:** Who design, build, and maintain the enterprise Starter Kits.
* **Enterprise Architects:** Who verify that Starter Kits accurately reflect the Engineering Profiles.
* **Technical Leads:** Who consume Starter Kits to bootstrap their domain-specific projects.
* **Governance Boards:** Who audit the inheritance and compliance models of the enterprise.

## 6. Applicability

The principles and constraints defined in this document MUST be applied universally to all Starter Kits, regardless of the underlying language, framework, runtime, or deployment target. This applies equally to backend, frontend, mobile, infrastructure, and data engineering Starter Kits.

## 7. Non-Goals

To maintain a clear separation of concerns, this foundational document has explicit non-goals:
* It MUST NOT define technology-specific configurations (e.g., compiler settings, linter rules).
* It MUST NOT mandate specific programming languages or frameworks.
* It MUST NOT provide business logic or domain-specific templates.
* It MUST NOT replace the need for comprehensive Project Standards.

## 8. Knowledge Flow

Within the EOS, knowledge flows structurally downward into the Starter Kit. A Starter Kit MUST act as a conduit, translating the theoretical knowledge defined in Engineering Standards (ES) and Engineering Profiles (EP) into executable structure. Downstream Project Standards MUST consume this flowing knowledge exclusively through the Starter Kit.

## 9. Inheritance Model

The Starter Kit occupies a specific, immutable position within the EOS inheritance hierarchy:
1. **Research Standards:** Define the foundational principles of the enterprise.
2. **Engineering Standards (ES):** Define universal enterprise rules.
3. **Engineering Profiles (EP):** Inherit from ES; define technology-specific rules.
4. **Starter Kits (SK):** Inherit from EP; provide the executable canonical implementation and scaffolding.
5. **Project Standards (PS):** Inherit from Starter Kits; define project-specific constraints.
6. **Projects:** Inherit from PS; the terminal node where business value is delivered.

A Starter Kit MUST strictly inherit from an approved Engineering Profile and acts as its executable reference implementation.

## 10. Lifecycle

A Starter Kit MUST possess a defined, governed lifecycle independent of the projects that consume it:
* **Inception:** Created to support a newly ratified Engineering Profile.
* **Active:** Maintained, patched, and distributed to engineering teams.
* **Deprecated:** Scheduled for retirement; no new projects MAY be bootstrapped from this kit, but existing projects receive critical patches.
* **Retired:** Completely unsupported; downstream projects MUST migrate to an active Starter Kit or assume the risk of an orphaned standard.

## 11. Governance

The enterprise MUST govern Starter Kits as first-class architectural assets. 
* Starter Kits MUST undergo rigorous security and architectural review before enterprise distribution.
* The structure and configuration within a Starter Kit MUST represent the uncompromised standard.
* Any deviation between a Starter Kit and its parent Engineering Profile MUST require a documented, formal governance exception.

## 12. Versioning Strategy

Starter Kits MUST utilize Semantic Versioning (SemVer).
* **Major:** Introduces breaking structural changes, paradigm shifts, or drops support for older inherited baselines.
* **Minor:** Introduces new non-breaking features, configurations, or structural additions.
* **Patch:** Addresses security vulnerabilities, configuration bugs, or minor dependency bumps.
Downstream projects SHOULD define a strategy for consuming Minor and Patch updates to their parent Starter Kit.

## 13. Extension Rules

Starter Kits are designed to be consumed and extended, not modified directly by the consumer.
* Projects MUST NOT modify the core enterprise scaffolding files injected by the Starter Kit unless explicitly permitted by the kit's design.
* Projects MAY add new layers, modules, or configurations that extend the Starter Kit, provided they do not conflict with inherited constraints.
* If a project requires a fundamental modification to the Starter Kit, the team SHOULD submit a proposal to update the enterprise Starter Kit rather than creating a localized fork.

## 14. Relationship with Engineering Profiles

A Starter Kit is the physical manifestation of an Engineering Profile. Where an Engineering Profile states that a project "MUST enforce static analysis," the corresponding Starter Kit MUST provide the configured static analysis tooling. The Starter Kit MUST NOT contain any structural or configuration choices that contradict the mandates of its parent Engineering Profile.

## 15. Relationship with Project Standards

Starter Kits provide the foundation upon which Project Standards are built. While the Starter Kit defines the enterprise baseline, the Project Standards define the domain-specific execution rules. Project Standards MUST acknowledge their inheritance from a specific version of a Starter Kit and MUST NOT override or weaken the enterprise configurations provided by that kit.

## 16. Starter Kit Principles

All enterprise Starter Kits MUST adhere to the following principles:
* **Secure by Default:** All initial configurations MUST represent the most secure posture possible.
* **Zero-Configuration Execution:** A newly generated project MUST build, test, and pass all verification gates immediately without manual configuration.
* **Minimalism:** Starter Kits MUST contain only the scaffolding necessary to enforce enterprise standards. They MUST NOT contain speculative architectures or unnecessary boilerplate.
* **Transparency:** The Starter Kit MUST clearly document which configurations are immutable and which are intended to be modified by the consuming project.

## 17. Compliance Requirements

To be recognized as a valid enterprise asset, a Starter Kit MUST prove compliance with the EOS.
* It MUST pass all security scans.
* It MUST successfully build a pristine project that passes all enterprise quality gates.
* It MUST include verifiable metadata linking it to its parent Engineering Profile.
* It MUST be registered within the enterprise asset catalog.

## 18. Maintenance Responsibilities

Starter Kits MUST have explicit ownership.
* **Platform/Architecture Teams:** MUST own the lifecycle, maintenance, and distribution of the Starter Kits.
* **Security Teams:** MUST continuously audit active Starter Kits for emerging vulnerabilities in default configurations or dependencies.
* **Consuming Teams:** MUST maintain their projects by periodically merging non-breaking updates from the parent Starter Kit.

## 19. Traceability

Every project generated from a Starter Kit MUST maintain traceability back to its origin. The generated project MUST include metadata (e.g., in a configuration file or package manifest) detailing the specific identity and version of the Starter Kit used during initialization. This traceability MUST be verifiable by enterprise automated governance tools.

## 20. Starter Kit Anti-Patterns

The following practices destroy the value of Starter Kits and MUST NOT be permitted:
* **The "Kitchen Sink":** Including every possible library, tool, or framework integration "just in case," resulting in bloated, incomprehensible scaffolding.
* **Silent Divergence:** Allowing downstream projects to silently delete or modify mandatory governance configurations injected by the Starter Kit.
* **Orphaned Kits:** Creating a Starter Kit for a niche project and failing to assign long-term maintenance ownership.
* **Hardcoded Business Logic:** Embedding domain-specific logic, mock data, or product names into the generic enterprise Starter Kit.
* **Manual Initialization:** Requiring a human engineer to run a list of manual configuration steps after the Starter Kit generates the project.

## 21. Starter Kit Composition

Every future Starter Kit MUST inherit a standard composition blueprint. The baseline composition includes:

* **Identity:** Version, metadata, and origin traceability.
* **Documentation:** Architectural intent and usage instructions.
* **Configuration:** Pre-configured tools (e.g., TSConfig, ESLint, Prettier).
* **Tooling:** Development and build toolchains.
* **Scripts:** Standardized execution targets (build, test, lint).
* **Templates:** Boilerplate for common patterns or components.
* **Automation:** Workflows for continuous integration and deployment.
* **Quality Gates:** Pre-commit hooks, static analysis, and testing frameworks.
* **Security Baseline:** Secure-by-default settings and dependency scanning.
* **Project Structure:** Canonical layer separation (Presentation, Application, Domain, Infrastructure).
* **Extension Points:** Well-defined areas where consuming projects can add specific configurations.

## 22. Starter Kit Deliverables

To provide consumers with a clear expectation of what "done" means, every Starter Kit MUST produce the following deliverables:

* **Executable Project Scaffold:** A ready-to-run baseline repository.
* **Documentation:** Comprehensive guides on architecture and toolchain usage.
* **Configuration Baseline:** Immutable enterprise settings.
* **Automation Scripts:** CI/CD integration scaffolding.
* **Quality Tooling:** Fully integrated testing and linting ecosystem.
* **Security Baseline:** Configured scanners and secure defaults.
* **Version Metadata:** A machine-readable manifest declaring the inherited EOS versions.
* **Upgrade Guide:** Instructions for downstream projects to consume minor/patch updates.
* **Change Log:** A detailed history of architectural and structural modifications.
