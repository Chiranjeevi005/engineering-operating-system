---
identifier: PRD-Template
title: Product Requirements Document (PRD) - [Product Name]
version: 1.0
status: Active
owner: EOS
audience: 
  - Architects
  - Engineers
  - AI Assistants
category: Template
lifecycle: EOS
governed_by: 
  - EOS
inherits_from:
  - ENG-001
---
# Product Requirements Document (PRD): [Product Name]

## Document Purpose
The **Product Requirements Document (PRD)** is the definitive business artifact that defines what product is being built, for whom, and why it matters. It focuses purely on business intent, user value, and product scope. It deliberately excludes technical decisions, architectures, and implementation details.

> [!IMPORTANT]
> **Architectural Rule:** The PRD is a strategic document. It must **never** contain granular capability IDs (e.g., `FR-001`, `UC-001`, `REQ-001`). Granular requirements belong inside individual Capability Blueprints (`EA-001`).

## Knowledge Flow

**Consumes**
- Enterprise Vision
- Business Research
- Market Analysis

**Produces**
- Product Vision
- Product Goals
- Product Scope
- User Definitions
- Business Constraints
- Business Priorities

**Consumed By**
- Product Engineering Blueprint (PEB)

## Inheritance & Traceability

**Inheritance**
*What does this document receive?*
The PRD inherits business priorities and strategic directives directly from Enterprise Strategy.

**Traceability**
*What documents are connected?*
`Enterprise Vision` ➔ `PRD` ➔ `PEB (Product Engineering Blueprint)`

---

## Part A — Product Identity
*Defines the foundational identity and ambition of the product.*

- **Product Name:** [Official name of the product]
- **Product Category:** [e.g., SaaS, Marketplace, LMS, FinTech, Healthcare]
- **Vision:** [A high-level aspirational statement of what the product will achieve in the long term.]
- **Mission:** [A concrete statement of how the product will achieve its vision.]
- **Elevator Pitch:** [A concise paragraph explaining what the product does, for whom, and why it is uniquely valuable.]

## Part B — Business Context
*Explains why the product exists and the business reasoning behind it.*

- **Problem Statement:** [The specific gap, pain point, or inefficiency this product resolves.]
- **Market Context:** [The landscape, trends, and timing that make this product relevant now.]
- **Opportunity:** [The measurable upside of solving this problem (e.g., total addressable market, cost savings).]
- **Business Objectives:** [Measurable business goals that guide engineering priorities later.]
- **Value Proposition:** [How this product solves the problem better than existing alternatives.]

## Part C — Users
*Defines who the product serves (those who interact with the product).*

- **Primary Users:** [The core demographic or user group whose problem is being solved directly.]
- **Secondary Users:** [Administrators, operators, or peripheral users who support or interact with the product.]
- **User Personas:** [Specific archetypes of users, their motivations, and behaviors.]

## Part D — Stakeholders
*Defines who influences the product (those who have a vested interest but may not be direct users).*

- **Business Sponsors:** [Executives or departments funding the product.]
- **Compliance & Legal:** [Regulatory bodies or internal teams ensuring compliance.]
- **Operations & Support:** [Teams responsible for customer success and operational health.]

## Part E — Product Goals & Scope
*Defines what the product will fundamentally do and the boundaries of that effort.*

- **Goals:** [The core outcomes the product must achieve to be considered successful.]
- **Scope:** [The broad functional areas the product will cover.]
- **Out of Scope (Explicit):** [What the product will deliberately NOT do, preventing strategic drift.]
- **Success Metrics:** [Key Performance Indicators (KPIs) to measure the product's impact.]

## Part F — Business Model
*Defines how the product creates and captures value.*

- **Revenue Model:** [How the product generates revenue, if applicable (e.g., subscription, usage-based, ad-supported).]
- **Pricing Strategy:** [The approach to pricing the product relative to the market and value provided.]
- **Competitive Positioning:** [How the product positions itself against direct and indirect competitors.]
- **Key Assumptions:** [The most critical business assumptions that must hold true for the product to succeed.]
- **Business Risks:** [Identified threats to the business assumptions and potential mitigations.]

## Part G — Transition to Engineering
*Prepares the engineering team by distilling the business requirements into explicit inputs for the Product Engineering Blueprint (PEB).*

### Engineering Handoff

**Outputs**
- Product Vision
- Product Goals
- Scope
- User Definitions
- Business Priorities
- Business Constraints

**Next Artifact**
`Product Engineering Blueprint (PEB)`

---

# Appendix

### Definitions
* [Term]: [Definition]
* **Capability:** A business ability delivered by the product.
* **Domain:** Logical grouping of capabilities.

### Acronyms
* **PRD:** Product Requirements Document
* **PEB:** Product Engineering Blueprint

### References
* [Link to Enterprise Strategy]
* [Link to Market Research]

<!-- 
Lifecycle Status Definitions:
- Draft: Under active creation.
- Review: Pending approval from stakeholders.
- Approved: Business intent locked.
- Production: Actively driving engineering work.
- Frozen: Locked template or historical record; no further changes permitted.
- Deprecated: No longer relevant or supported.
-->
