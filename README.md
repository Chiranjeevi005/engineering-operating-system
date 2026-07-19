# HC-AI Software Development Lifecycle (SDLC) v1.0

Welcome to the **Human-Centered AI Software Development Lifecycle (HC-AI SDLC)** repository. This repository acts as the single source of truth for the governance, processes, systems, and tools that power an AI-augmented engineering operating model.

## Why Does This Repository Exist?

The primary purpose of this repository is to establish a deterministic, domain-driven framework that standardizes the interactions between human engineers and AI assistants. It ensures that AI acts as a powerful execution accelerator without ever assuming the authority of governance, maintaining strict human accountability and zero-trust engineering principles.

## The Governance Hierarchy

Our repository structure strictly mirrors the HC-AI SDLC 5-tier governance hierarchy. A document or artifact is always placed in the domain that owns its **primary responsibility**, not the domain that consumes it.

1. **Level 1: Governance Domain** — Universal laws, charters, and meta-standards.
2. **Level 2: Operational Domain** — Abstract lifecycles and process workflows.
3. **Level 3: Systems Domain** — Concrete constraints, standards, and rules for specific capabilities (e.g., Engineering, Verification).
4. **Level 4: Implementation Domain (EOS)** — The tangible tools, templates, starter-kits, and scaffolding used to execute work.
5. **Level 5: Products Domain** — The end applications that consume this framework.

## Repository Domains

### `docs/` — The Authoritative Framework

Contains all prescriptive governance and system definitions. This is the "code" of the operating system.

- `01-governance/` (Constitutions, Charters, IAS, AOS, GLOSSARY*)
- `02-operational/` (Lifecycles, Workflows)
- `03-systems/` (Engineering Standards, Verification Rules)
- `04-eos/` (Templates, Blueprints, Tooling)

*\* Note: `GLOSSARY-001` currently resides in `01-governance`, but is planned to evolve into a cross-domain `00-reference` category in future iterations.*

### `records/` — Evidence of Execution

Contains descriptive, ephemeral, or point-in-time proof of execution. Records carry zero governing authority.

- `architecture/` (Architecture Decision Records)
- `engineering/` (Engineering logs)
- `releases/` (Sprint reports, release notes)
- `verification/` (Validation reports)

### `products/` — Consumers

Contains the specific project implementations built on top of this framework (e.g., QuizArena, AI PROOF).

### `99-legacy/` — Traceability

Contains deprecated architectures and un-migrated files from EOS v0.x to ensure total traceability and prevent data loss.

## Navigation for New Contributors

1. **Start Here**: Read the **Universal Constitution** (`docs/01-governance/universal-constitution/`) to understand our human-centered philosophy.
2. **Learn the Structure**: Read the **Information Architecture Standard (IAS-001)** (`docs/01-governance/information-architecture/`) to understand how files and domains inherit authority.
3. **Understand the Agents**: Read the **Agent Operating Standard (AOS-001)** (`docs/01-governance/agent-operating-standard/`) to learn how to safely and productively pair with AI assistants in this framework.
