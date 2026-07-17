# PS-001 Project Standards Foundation

## 1. Purpose & Identity

This document establishes the enterprise foundation for all Project Standards within the Engineering Operating System (EOS). While Starter Kits define *how to initialize* a compliant codebase, Project Standards define *how a specific project should be engineered and operated*. PS-001 serves as the universal template and governing baseline from which all individual project standards (e.g., PS-101) MUST inherit.

## 2. Scope

PS-001 governs the procedural, operational, and organizational expectations for all software engineering projects within the enterprise. It applies universally to all teams, regardless of the underlying technology stack, business domain, or deployment environment.

## 3. The Role of Project Standards

A Project Standard answers the question: "How does this specific team build and deliver this specific product?" It is the definitive source of truth for a project's workflow, bridging the gap between automated governance (Starter Kits) and human execution. 

A well-defined Project Standard MUST eliminate procedural ambiguity, ensuring that any engineer can join the project and immediately understand how to contribute successfully.

## 4. Inheritance Model

Project Standards exist at the penultimate layer of the EOS inheritance hierarchy:

1. **Engineering Standards (ES):** Define universal enterprise rules.
2. **Engineering Profiles (EP):** Define technology-specific rules.
3. **Starter Kits (SK):** Provide the executable reference implementations.
4. **Project Standards (PS):** Inherit from the Starter Kit; define project-specific execution rules.
5. **Projects:** Inherit from the Project Standard; the terminal node delivering business value.

A downstream Project Standard (e.g., PS-101 for QuizArena) MUST NOT contradict or weaken the constraints defined in its parent Starter Kit or the EOS.

## 5. Repository Governance

Every enterprise project MUST establish strict repository governance.
* **Ownership:** Every repository MUST have a clear, documented owner (e.g., a specific team or guild) responsible for its maintenance.
* **Access Control:** Repositories MUST enforce the Principle of Least Privilege. Direct commits to the main branch MUST be disabled.
* **Protection Rules:** The primary branch MUST require automated status checks (build, test, lint) and at least one peer review before a merge is permitted.

## 6. Workflow & Branching Strategy

Projects MUST adopt a standardized branching strategy to ensure predictable collaboration.
* **Main Branch:** The `main` branch MUST always represent the deployable, production-ready state of the software.
* **Feature Branches:** All new development MUST occur on short-lived feature branches cut from `main`.
* **Branch Naming:** Branches SHOULD follow a standardized naming convention (e.g., `feature/<ticket>-<description>`, `bugfix/<ticket>-<description>`).
* **Integration:** Long-running feature branches MUST be avoided. Engineers SHOULD integrate their work into `main` frequently to minimize merge conflicts.

## 7. Commit Conventions

Commit history is a permanent record of engineering intent and MUST be treated as critical documentation.
* **Conventional Commits:** Projects MUST adopt a structured commit message format (e.g., Conventional Commits) to enable automated changelog generation and semantic versioning.
* **Atomic Commits:** Commits MUST be atomic, representing a single logical change that passes all tests independently.
* **Descriptive Messages:** Commit messages MUST explain the *why* behind a change, not just the *what*.

## 8. Versioning & Release Process

Releases MUST be deterministic, traceable, and automated.
* **Semantic Versioning:** Projects MUST use Semantic Versioning (SemVer) to communicate the impact of changes.
* **Immutable Artifacts:** Build artifacts MUST be immutable. A compiled binary or container image tested in staging MUST be the exact artifact deployed to production.
* **Release Tags:** Every release MUST correspond to a specific, immutable tag in the version control system.

## 9. Documentation Standards

Project documentation MUST be treated as code, living alongside the source in the repository.
* **README:** Every project MUST have a comprehensive `README.md` detailing the project's purpose, setup instructions, and execution commands.
* **Architecture Decision Records (ADRs):** Significant architectural deviations or complex domain models MUST be documented using ADRs to capture context and intent.
* **Runbooks:** Projects MUST maintain operational runbooks for incident response and routine maintenance.

## 10. Project Architecture Decisions

While the Starter Kit defines the enterprise architecture, the Project Standard defines the domain architecture.
* **Domain Boundaries:** The Project Standard MUST define the specific bounded contexts and modules unique to the business domain.
* **Infrastructure Choices:** The Project Standard MUST explicitly document the chosen infrastructure components (e.g., PostgreSQL, Redis, Kafka) and how they integrate into the architecture.

## 11. Dependency Approval Process

External dependencies introduce operational and security risks.
* **Justification:** Every new dependency MUST be justified. Engineers SHOULD favor utilizing existing enterprise libraries or standard language features before importing third-party code.
* **Security Scanning:** All dependencies MUST undergo automated security scanning before integration.
* **Lockfiles:** Dependency lockfiles (e.g., `package-lock.json`) MUST be utilized and committed to ensure reproducible builds.

## 12. Review Checklist

Peer review is the primary mechanism for maintaining quality and sharing knowledge. Reviews MUST verify:
* Architectural alignment with the Project Standard.
* Adherence to naming and stylistic conventions.
* The presence of adequate test coverage for new or modified logic.
* The absence of hardcoded secrets or insecure patterns.
* The clarity and accuracy of accompanying documentation.

## 13. Definition of Done

A feature or task is only "Done" when it meets the following criteria:
* The code is written, peer-reviewed, and merged into the main branch.
* All automated tests pass, and coverage thresholds are met.
* The feature is fully integrated into the CI/CD pipeline.
* Documentation (including ADRs and API contracts) has been updated.
* The feature has been successfully deployed to a staging or pre-production environment.

## 14. Definition of Ready

A task or feature request is only "Ready" to be worked on when:
* The business value and acceptance criteria are clearly defined.
* The technical constraints and dependencies are identified.
* The necessary architectural design has been completed or discussed.
* The work is sized appropriately to fit within a single iteration or sprint.

## 15. Extensibility & Exceptions

Project Standards are living documents that MUST evolve with the project.
* **Project Specifics:** A specific project (like QuizArena) MUST create its own Project Standard (e.g., PS-101) that inherits this foundation and fills in the specific details (e.g., "We use PostgreSQL 16" or "We use GitHub Actions").
* **Exceptions:** Any deviation from the Project Standard MUST require an Architecture Decision Record (ADR) detailing the justification, risks, and expected duration of the exception.
