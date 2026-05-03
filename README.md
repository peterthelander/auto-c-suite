# 🏛️ auto-c-suite
### *The Sovereign "Company-in-a-Box" for the Solo Entrepreneur.*
**auto-c-suite** is an open-source framework designed to bridge the "Seniority Gap" for solo founders. By orchestrating a specialized executive team of AI agents—Chief of Staff, CTO, CFO, General Counsel and others—this repository turns a local folder into a functioning corporate entity.
## 🚀 The Movement: Why This Matters
The Class of 2026 is entering the toughest job market in nearly 40 years. Entry-level "learning" roles are vanishing as AI automates junior tasks. But while AI can write code, it cannot yet **govern a company.**
The mission of **auto-c-suite** is to provide the "Symmetry of Automation." If AI automates the work, we can use AI to automate the **mentorship.** This repo is for the developer, the chef, the consultant, and the creative who has a prototype but lacks the "Senior Room" of advisors to turn that prototype into a sustainable, legal, and profitable business.
## 🧠 How It Works: Multi-Agent Orchestration
Unlike generic chatbots, **auto-c-suite** uses a role-based, multi-agent architecture:
* **@chief-of-staff:** Your Master Orchestrator. Manages the **Maturity Roadmap** and delegates tasks.
* **@cto:** Your Lead Architect. Focuses on security-first infrastructure, technical debt, and privacy.
* **@cfo:** Your Financial Strategist. Focuses on unit economics, zero-burn infrastructure, and pricing.
* **@legal:** Your General Counsel. Focuses on liability, entity formation (LLC vs. C-Corp), and compliance.
### The "Memory" Protocol
Each agent maintains its own persistent memory in .gemini/memory/. They don't just answer questions; they build a **Corporate Ledger** of every decision made, ensuring that your company has a "long-term brain" as it grows.
## 🗺️ The Maturity Roadmap
The framework guides you through the five stages of startup evolution:
1. **Stage 0: Idea** – Problem/Solution fit and mission alignment.
2. **Stage 1: Proto** – Local development and MVP architecture.
3. **Stage 2: Entity** – Legal formation and liability protection.
4. **Stage 3: Product** – Production deployment and user onboarding.
5. **Stage 4: Business** – Revenue generation and unit economic scaling.
## 🛠️ Planned Enhancements
We are currently building toward the "Fully Operational" suite:
* [ ] **Google Workspace MCP Integration:** Allowing agents to read/write emails, manage calendars, and draft documents in Google Drive.
* [ ] **Maturity State Engine:** A /status command to automatically assess where the project is and "unlock" the next set of executive tasks.
* [ ] **Recursive Memory Compaction:** Automated "Weekly Board Reviews" that summarize long chat logs into high-density decision records to keep context windows lean.
* [ ] **Multi-Persona Profiles:** Pre-configured context for different industries (e.g., SaaS, Personal Chef, Professional Services).
## ⚡ Quick Start
1. **Clone the repo:** git clone https://github.com/your-username/auto-c-suite.git
2. **Run Setup:** ./setup.sh
3. **The Founding Interview:** ```bash
gemini "I am ready for the /interview to populate COMPANY_CONTEXT.md"
```

```
4. **The First Board Meeting:**
```bash
gemini "Strategic Review: @cto @cfo, what are the biggest risks to my current prototype?"

```
## 🛡️ Sovereign Data Policy
Your business data belongs to you. **auto-c-suite** is designed with a "Zero-Footprint" local-first architecture. Your COMPANY_CONTEXT.md and .gemini/memory/ files are ignored by Git by default, ensuring your private strategic decisions never leave your machine.


*Created by Peter Alan Thelander, 2026.*