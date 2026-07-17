---
Title: State Model
Document ID: META-003
Version: 1.0
Status: Approved
Owner: Chief Engineering Architect
Created: 2026-07-17
Updated: 2026-07-17
Dependencies: None
Approval: Approved
Classification: Internal
Review Frequency: Annually
Related Artifacts: None
Next Review: 2027-07-17
---

# State Model

## Purpose
To define the universal condition of an Engineering Object at any point in its Lifecycle. While Lifecycle answers *Where am I?*, State answers *What is my condition?*

## Universal State Machine

### 1. Draft
* **Definition:** Work in progress; highly malleable.
* **Rules:** No downstream dependencies can rely on a Draft object.

### 2. In Review
* **Definition:** Frozen for evaluation; awaiting a decision.
* **Rules:** Object cannot be modified by the author while in this state.

### 3. Changes Requested
* **Definition:** Blocked by reviewers; requires remediation.
* **Rules:** Object must loop back to Draft/Review to address feedback.

### 4. Approved
* **Definition:** Validated against criteria; awaiting final lock or execution.
* **Rules:** Content is finalized. Downstream processes may begin preparation.

### 5. Locked
* **Definition:** Immutable state.
* **Rules:** Any further changes require a new version to be created.
