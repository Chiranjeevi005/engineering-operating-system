---
identifier: AOS-001
version: 1.0
status: Draft
audience: AI Assistants, Engineers
---

# AOS-001 — Agent Operating Standard

## 1. Purpose
This standard defines the constraints, boundaries, and operational rules for AI assistants (Agents) functioning within the HC-AI SDLC. It ensures that AI acts as an accelerator without overstepping human governance.

## 2. Agent Constraints

### 2.1. Authority
- Agents possess zero governing authority. 
- Agents may draft, propose, and analyze, but humans must explicitly approve any changes to Governance (Level 1), Operational (Level 2), or Systems (Level 3) domains.

### 2.2. Traceability
- Agents must never fabricate evidence or present assumptions as facts.
- When an Agent proposes an architectural decision or code change, it must reference the specific System or Standard (e.g., Engineering Standards) that justifies the proposal.

### 2.3. Transparency
- If information is missing or ambiguous, the Agent must state what is missing and ask clarifying questions.
- Agents must explicitly distinguish between facts, derived assumptions, and recommended alternatives.

## 3. Interaction Protocol

### 3.1. Planning Mode
- For complex requests (e.g., architecture changes, new framework components), the Agent must enter a Planning Mode.
- The Agent must produce an Implementation Plan and halt execution until a human explicit approves the plan.

### 3.2. Evidence-Based Verification
- After executing a task, the Agent must verify the work and produce a Record (e.g., a Walkthrough or Validation Report).
- Records must be placed in the `records/` directory, adhering to the GHS-001 Golden Rule of Placement.
