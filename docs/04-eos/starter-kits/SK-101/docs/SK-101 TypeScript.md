---
identifier: SK-101
title: SK 101 TypeScript
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
# SK-101 — TypeScript Starter Kit

## 1. Starter Kit Identity

This document and its accompanying repository template define SK-101, the canonical TypeScript Starter Kit for the enterprise Engineering Operating System (EOS). It serves as the physical, executable manifestation of the EP-101 TypeScript Engineering Profile.

## 2. Purpose

The purpose of SK-101 is to eliminate boilerplate configuration, enforce architectural boundaries, and embed enterprise governance directly into the initialization phase of every new TypeScript project. It provides a secure-by-default, fully configured execution environment that allows engineers to focus immediately on domain logic rather than toolchain integration.

## 3. Scope

This Starter Kit applies to any general-purpose TypeScript application or library built within the enterprise. While downstream projects MAY adapt the presentation or infrastructure layers to specific frameworks (e.g., HTTP APIs, CLI tools, message processors), the core configuration, strictness, and structural topology defined in SK-101 MUST remain intact.

## 4. Design Philosophy

SK-101 is engineered according to the following philosophy:
* **Zero Configuration:** The project MUST build, lint, and test successfully immediately after cloning, without any manual configuration.
* **Fail Fast:** The compiler and linter MUST fail aggressively on any violation of enterprise standards.
* **Framework Agnostic:** The core structure MUST remain independent of specific runtime frameworks, preserving the purity of the domain logic.
* **Deterministic Execution:** The build and test pipelines MUST behave identically on local developer machines and CI/CD environments.

## 5. Project Structure

SK-101 enforces the canonical Reference Architecture defined in EP-101 through the following mandatory directory structure:

* `src/presentation/`: Entry points, route handlers, and external adapters.
* `src/application/`: Orchestration and use case coordination.
* `src/domain/`: Pure business logic, entities, and domain events.
* `src/infrastructure/`: Technical implementations, database repositories, and external clients.
* `src/shared/`: Cross-cutting utilities and enterprise primitives.
* `tests/`: Parallel test suite replicating the `src` directory structure.

## 6. Package Management

SK-101 standardizes dependency resolution.
* Projects MUST use the enterprise-approved package manager (`npm` by default in this baseline).
* The package lockfile (`package-lock.json`) MUST be committed to source control to guarantee deterministic builds.
* Scripts MUST utilize standard verbs (`build`, `test`, `lint`, `format`).

## 7. TypeScript Configuration

The `tsconfig.json` MUST enforce maximum type safety.
* `strict` mode MUST be enabled.
* `noImplicitAny`, `strictNullChecks`, and `noUnusedLocals` MUST be enforced.
* The target environment MUST align with the enterprise runtime baseline (e.g., ES2022).
* Compilation MUST fail if structural or typing boundaries are violated.

## 8. Code Organization

* Files MUST be organized by feature or domain, rather than purely by technical role.
* Each directory representing a distinct architectural layer or module MUST expose a public contract (e.g., an `index.ts` barrel file) that explicitly exports the permitted symbols.

## 9. Build System

The build process MUST be simple and deterministic.
* The `build` script MUST compile the TypeScript source into JavaScript.
* The output directory (`dist/` or `build/`) MUST be ignored by source control.
* The build process MUST NOT produce side effects outside the output directory.

## 10. Development Tooling

SK-101 provisions the standard development toolchain.
* **Linting:** ESLint is pre-configured with enterprise rules.
* **Formatting:** Prettier is pre-configured to eliminate style debates.
* **TypeScript:** The locally installed TypeScript compiler MUST be used to ensure version consistency across all environments.

## 11. Code Quality Baseline

* The `lint` script MUST execute without errors or warnings.
* Projects MUST NOT disable linting rules via inline comments (`// eslint-disable-next-line`) without a documented exception.
* The `format` script MUST enforce automated style consistency across the entire codebase.

## 12. Testing Baseline

SK-101 includes a pre-configured testing framework (Jest with ts-jest).
* The `test` script MUST execute all unit and integration tests.
* The testing framework MUST be capable of producing coverage reports in standard enterprise formats.
* Tests MUST execute against the TypeScript source files directly without requiring a pre-compilation step.

## 13. Logging Baseline

* The Starter Kit provides structural placeholders or abstractions for enterprise logging.
* Domain logic MUST NOT directly invoke `console.log`. It MUST rely on injected logging interfaces.

## 14. Error Handling Baseline

* Errors MUST be strongly typed.
* The architecture provides boundaries where untyped runtime errors are caught, mapped to standard enterprise errors, and logged appropriately.

## 15. Configuration Management

* Environment variables MUST be validated at the application boundary during startup.
* The application MUST fail to boot if required configuration is missing or malformed.

## 16. Environment Strategy

* The Starter Kit provides a `.env.example` file that documents all required environment variables.
* Actual `.env` files containing secrets MUST NOT be committed to source control.

## 17. Dependency Management

* `dependencies` MUST only contain libraries required at runtime.
* `devDependencies` MUST contain all compilation, testing, and formatting tools.
* Projects SHOULD minimize their reliance on third-party dependencies for core domain logic.

## 18. Security Baseline

* SK-101 enforces strict linting rules to prevent common vulnerabilities (e.g., disabling `eval`, restricting unsafe type assertions).
* Package management MUST include an automated audit step during the CI/CD pipeline.

## 19. Documentation Requirements

* Projects MUST maintain a comprehensive `README.md` containing setup, build, and execution instructions.
* Projects MUST maintain an `ARCHITECTURE.md` or equivalent documentation if they extend the baseline layers.

## 20. Automation Requirements

* The Starter Kit is designed to integrate seamlessly into standard CI/CD pipelines.
* The execution of `npm run lint`, `npm run test`, and `npm run build` MUST form the foundation of any automated quality gate.

## 21. Standard Scripts

Every project MUST support the following npm scripts:
* `npm run build`: Compiles the application.
* `npm run test`: Executes the test suite.
* `npm run lint`: Analyzes the codebase for quality and security violations.
* `npm run format`: Formats the codebase automatically.

## 22. Project Metadata

The `package.json` MUST contain metadata linking the project back to SK-101.
* A specific field (e.g., `eosStarterKit`) MUST denote the version of SK-101 used to initialize the project, providing enterprise traceability.

## 23. Extension Points

* Downstream projects MAY add specialized tools (e.g., database ORMs, HTTP routers) provided they are encapsulated within the appropriate architectural layer (Infrastructure or Presentation).
* Projects MUST NOT alter the compiler strictness or core linting rules.

## 24. Upgrade Strategy

* The Starter Kit is versioned via SemVer.
* Downstream projects SHOULD periodically update their devDependencies and core configurations to match the latest active version of SK-101 to receive security and quality patches.

## 25. Validation Checklist

A project initialized from SK-101 MUST pass the following validation immediately:
- [x] `npm install` completes successfully.
- [x] `npm run lint` completes with 0 errors.
- [x] `npm run test` executes and passes all baseline tests.
- [x] `npm run build` produces compiled artifacts without type errors.

## 26. Starter Kit Deliverables

The SK-101 artifact consists of:
* This documentation file (`SK-101-TypeScript-Starter-Kit.md`).
* The executable project scaffold (`template/` directory).

## 27. TypeScript Starter Kit Anti-Patterns

The following actions defeat the purpose of SK-101 and MUST NOT be performed by downstream consumers:
* **Weakening the Compiler:** Setting `strict: false` or adding `any` to bypass type safety.
* **Bypassing the Linter:** Disabling enterprise lint rules to speed up development.
* **Corrupting the Architecture:** Placing database queries in the `domain/` layer or business logic in the `presentation/` layer.
* **Manual Toolchain Hacking:** Attempting to replace the canonical build or test tools with unsupported alternatives, breaking enterprise CI/CD compatibility.
