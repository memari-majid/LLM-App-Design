# LLM Application-Architecture Design

> Canonical patterns, design checklists, and real-world practices for building reliable, scalable, and secure LLM applications in production.

---

## About the Book

Large-language-model (LLM) systems are reshaping how modern software is designed and operated.  Yet building **production-grade** LLM applications still requires stitching together a fast-moving landscape of models, orchestration frameworks, data layers, and infrastructure services.  

This open-source book distills hard-won lessons from the field into a set of architecture blueprints you can apply today.  Every chapter focuses on *why* certain design choices matter, *how* to implement them, and *what* pitfalls to avoid.

It also consolidates a **living catalogue of LLM-specific design patterns**—from Retrieval-Augmented Generation (RAG) to Guardrails and Shadow Evaluation—so you can pick proven solutions quickly.

* Audience Senior engineers, ML/AI architects, DevOps/SRE leads, and product managers.
* License Creative Commons BY-SA-4.0 — fork, remix, and contribute back.
* Status `v0.1-alpha` — skeleton outline; drafts in progress.

---

## Table of Contents

### Part I – Foundations of LLM Systems
1. [Why LLM Application Architecture Matters](chapters/01-why-architecture.md)
2. [LLM Model Landscape (APIs vs OSS)](chapters/02-llm-model-landscape.md)
3. [Retrieval, Embeddings, and Vector Stores](chapters/03-retrieval-embeddings-vector-stores.md)

### Part II – Frameworks & Orchestration
4. [Survey of LLM Frameworks](chapters/04-survey-llm-frameworks.md)
5. [LangGraph In-Depth](chapters/05-langgraph-in-depth.md)
6. [Designing Agent Workflows](chapters/06-designing-agent-workflows.md)
7. [Prompt & Policy Engineering](chapters/07-prompt-policy-engineering.md)

### Part III – Core Components & Patterns
8. [UI / API Gateway Layer](chapters/08-ui-api-gateway-layer.md)
9. [Inference Tier](chapters/09-inference-tier.md)
10. [Caching & Acceleration](chapters/10-caching-acceleration.md)
11. [Domain Data Layer](chapters/11-domain-data-layer.md)
12. [Safety & Compliance Filters](chapters/12-safety-compliance-filters.md)

### Part IV – End-to-End Architectures (Case Studies)
13. [Customer-Support Chatbot](chapters/13-customer-support-chatbot.md)
14. [Code-Generation Assistant](chapters/14-code-generation-assistant.md)
15. [Legal-Document Review Agent](chapters/15-legal-document-review-agent.md)
16. [Finance Research Copilot](chapters/16-finance-research-copilot.md)

### Part V – Ops, SRE, & MLOps
17. [Observability with LangSmith & OpenTelemetry](chapters/17-observability-langsmith-opentelemetry.md)
18. [Offline & Online Evaluation Pipelines](chapters/18-offline-online-evaluation-pipelines.md)
19. [CI/CD for LLM Apps](chapters/19-ci-cd-llm-apps.md)
20. [Reliability Engineering](chapters/20-reliability-engineering.md)
21. [Cost & Sustainability Engineering](chapters/21-cost-sustainability-engineering.md)

### Part VI – Security, Privacy, & Governance
22. [Threat Modeling for LLM Systems](chapters/22-threat-modeling-llm-systems.md)
23. [Data-Protection & DP-Tuning](chapters/23-data-protection-dp-tuning.md)
24. [Regulatory Landscape & Model Cards](chapters/24-regulatory-landscape-model-cards.md)

### Part VII – Future Directions
25. [Multimodal & Tool-Augmented Agents](chapters/25-multimodal-tool-augmented-agents.md)
26. [Neuro-Symbolic & Memory-Centric Trends](chapters/26-neuro-symbolic-memory-centric-trends.md)
27. [Open Challenges](chapters/27-open-challenges.md)

### Appendices
* [Glossary](chapters/A-glossary.md)
* [Design Checklists](chapters/B-design-checklists.md)
* [Further Reading](chapters/C-further-reading.md)

---

## LLM Design Pattern Catalogue (Quick Reference)

| Pattern | Problem Solved | Core Idea |
|---------|----------------|-----------|
| Retrieval-Augmented Generation (RAG) | Base model lacks private or fresh knowledge | Retrieve relevant docs and inject into prompt before generation |
| Chunk & Embed Pipeline | Long docs need retrieval within token limits | Split, embed, store vectors for similarity search |
| Prompt Template / Few-Shot | Need consistent tone, format, examples | Parameterised prompt with placeholders and examples |
| Chain-of-Thought / Tool-Call Orchestration | Complex reasoning requiring multi-step reasoning or external tools | Orchestrated sequence of LLM calls and tool invocations |
| Agent + Tools | Delegate sub-tasks dynamically | Agent loop plans and executes tool calls with memory |
| Draft-then-Refine | Balance latency with quality | Small model drafts, large model refines |
| Guardrails / Content Filtering | Prevent toxic, policy-violating, or hallucinated output | Classifier/policy engine filters, rewrites, or blocks responses |
| Structured Output Validation | Require JSON / SQL / XML rather than free text | Schema-guided prompt plus parse-and-retry loop |
| Semantic Caching | Reduce cost & latency for repeat or similar queries | Embedding-hash lookup returns cached answer or falls back to LLM |
| Shadow / Canary Evaluation | Safely test new models/prompts in production | Live-traffic fork compares new vs. old path |
| Telemetry & Feedback Loop | Observe quality, cost, and safety in real time | Collect prompt/response metrics & human feedback |

Each pattern maps to one or more chapters listed in the **Table of Contents**; upcoming deep-dive chapters will detail rationale, trade-offs, and implementation options.

*Pattern names align with community references such as [GitHub's "The architecture of today's LLM applications"](https://github.blog/ai-and-ml/llms/the-architecture-of-todays-llm-applications/).*  

---

## Contributing

Pull requests are welcome!  Please read `CONTRIBUTING.md` (coming soon) before submitting a change.  Whether you spot a typo, propose a diagram, or draft an entire section, your help makes the book better for everyone.

1. Check out a new branch `draft/<chapter-slug>`.
2. Write or edit Markdown.  No code snippets are required.
3. Open a PR — automated checks will run linting & spell-check.
4. At least one reviewer is required before merge.

---

## Building the Site Locally (optional)

If you'd like to preview the book as a website:

```bash
pip install mkdocs-material mkdocs-mermaid2
mkdocs serve
```

Then open <http://localhost:8000> in your browser.  (This step is optional; you can also preview Markdown directly in GitHub.)

---

© 2025 The LLM Application-Architecture Design Authors 