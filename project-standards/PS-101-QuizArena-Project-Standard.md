# PS-101 QuizArena Project Standard

## 1. Project Identity

This document establishes the specific engineering standards and operational rules for **QuizArena**. It serves as the definitive source of truth for how the QuizArena team builds, tests, and delivers the product.

## 2. Inheritance

QuizArena is governed by the Engineering Operating System (EOS). This project standard strictly inherits from:
* **PS-001:** Project Standards Foundation
* **SK-101:** TypeScript Starter Kit (Executable Baseline)

## 3. Technology Stack Decisions

QuizArena uses the enterprise default stack provided by SK-101, with the following project-specific decisions:
* **Language:** TypeScript (Strict Mode)
* **Runtime:** Node.js
* **Package Manager:** npm

*(Note: As QuizArena evolves and requires new capabilities—such as a Next.js frontend or a specific database ORM—these decisions will be recorded here via Architecture Decision Records (ADRs). If these capabilities prove universally reusable, they will be extracted into a new enterprise Starter Kit like SK-301).*

## 4. Repository & Workflow

Inheriting from PS-001, QuizArena enforces the following:
* **Primary Branch:** `main` (Protected).
* **Branching Model:** Short-lived feature branches (`feature/<description>`).
* **Commits:** Conventional Commits are mandatory for automated changelog generation.

## 5. Definition of Ready & Done

QuizArena adheres strictly to the EOS Definitions defined in PS-001. No feature may be merged without:
* Passing all automated tests (Jest).
* Passing strict static analysis (ESLint/Prettier) with 0 warnings.
* Updating the relevant architectural documentation if structural boundaries are modified.

## 6. Project Architecture

QuizArena utilizes the canonical layer separation enforced by SK-101:
* **Presentation:** (To be defined—e.g., REST API controllers, CLI, or UI).
* **Application:** Orchestrates quiz sessions, scoring, and user workflows.
* **Domain:** Contains the pure business rules of the quiz (Questions, Answers, Matchmaking, Scoring logic).
* **Infrastructure:** Manages state persistence and external service integrations.
