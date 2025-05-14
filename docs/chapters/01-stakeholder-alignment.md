---
layout: page
title: Stakeholder Alignment & Requirement Gathering
parent: Chapters
nav_order: 1
permalink: /chapters/01-stakeholder-alignment/
date: 2023-05-15
---

# Stakeholder Alignment & Requirement Gathering

LLM applications require specialized stakeholder alignment and requirement gathering approaches that differ from traditional software projects. This chapter explores techniques for building consensus and capturing unique LLM-specific requirements.

## Identifying Key Stakeholders for LLM Projects

LLM projects introduce unique stakeholder roles beyond traditional software development:

| Stakeholder | Role in LLM Projects |
|-------------|----------------------|
| **Subject Matter Experts** | Validate domain knowledge and assess outputs |
| **Data Owners** | Ensure data privacy, quality, and compliance |
| **Governance Teams** | Establish AI usage policies and ethical guidelines |
| **End Users** | Provide feedback on interaction patterns and utility |
| **Regulatory Teams** | Navigate evolving AI regulations |

Effective LLM projects require early and consistent engagement with these stakeholders, establishing clear roles for each group in both development and operational phases.

## LLM-Specific User Stories

Traditional user stories often fail to capture LLM-specific concerns. Consider this enhanced format:

```
As a [USER ROLE],
I want to [ACTION/CAPABILITY],
So that [BUSINESS VALUE],
With information that is [ACCURACY LEVEL],
While maintaining [ETHICAL CONSTRAINT],
And explaining [TRANSPARENCY REQUIREMENT].
```

**Example:** 
```
As a financial advisor,
I want to generate investment recommendations based on client profiles,
So that I can serve more clients efficiently,
With information that is verified against current regulatory guidelines,
While maintaining client privacy and avoiding inappropriate risk profiles,
And explaining the factors that influenced each recommendation.
```

This format explicitly captures trust, transparency, and governance requirements alongside functional needs.

## Expectation Management

Managing expectations is critical for LLM projects. Key challenges include:

1. **The Demo Effect** - Stakeholders who have experienced consumer ChatGPT may have inflated expectations
2. **Hallucination Risk** - Non-technical stakeholders need to understand inherent reliability limitations
3. **Capability Boundaries** - Clear understanding of what LLMs can/cannot do in production environments

**Recommendation:** Create a "Capabilities Matrix" for each project that explicitly documents:
- Guaranteed capabilities (100% reliable)
- Expected capabilities (reliable with exceptions)
- Experimental capabilities (may require human verification)
- Beyond scope capabilities (will not be attempted)

## Specialized Requirements for LLM Applications

Beyond traditional functional requirements, LLM projects must capture:

### 1. Knowledge Requirements
- Required knowledge domains and boundaries
- Knowledge freshness requirements (how current?)
- Source authority requirements (which sources are acceptable?)

### 2. Interaction Requirements
- Expected query complexity
- Output format constraints
- Acceptable response time

### 3. Trust Requirements
- Hallucination tolerance levels
- Required confidence metrics
- Citation and reference expectations

### 4. Safety Requirements
- Content filtering parameters
- Sensitive topic handling
- Bias mitigation approaches

## Requirements Prioritization Framework

When prioritizing LLM application requirements, consider this specialized RICE framework:

- **Reach:** How many users/processes will benefit?
- **Impact:** What's the business value?
- **Confidence:** How certain are we of LLM capability?
- **Effort:** Development and operational complexity

The "Confidence" dimension is unique to LLM projects and should be assessed based on:
- Model capability evidence
- Similar implemented use cases
- Technical feasibility testing

## Implementing Feedback Loops

LLM applications require continuous feedback mechanisms:

1. **Initial Requirement Validation**
   - Create prompt+response pairs for key requirements
   - Validate with stakeholders before full implementation

2. **Progressive Exposure**
   - Deploy to increasingly broader stakeholder groups
   - Capture and categorize feedback systematically

3. **Operational Monitoring**
   - Track user satisfaction metrics
   - Implement feedback channels within the interface

By implementing these specialized approaches to stakeholder alignment and requirements gathering, AI architects can build LLM applications that better meet business needs while managing the unique challenges these systems present.

---

[Previous Chapter](previous-chapter-link) | [Next Chapter](next-chapter-link)
