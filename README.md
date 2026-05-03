# 🏛️ auto-c-suite
### *The Sovereign "Company-in-a-Box" for the Solo Entrepreneur.*
**auto-c-suite** is an open-source framework designed to bridge the "Seniority Gap" for solo founders. By orchestrating a specialized executive team of AI agents—Chief of Staff, CTO, CFO, General Counsel and others—this repository turns a local folder into a functioning corporate entity.
## 🚀 The Movement: Why This Matters
The Class of 2026 is entering the toughest job market in nearly 40 years. As AI automates entry-level work, more new graduates are skipping the traditional career ladder entirely — and going straight to building something of their own.

That's not a bad outcome. But it creates a new problem: the traditional path through junior and mid-level roles wasn't just about income. It was where you absorbed institutional knowledge — how to price a service, how to structure a legal entity, how to manage burn rate, how to position a product. The "Senior Room" of advisors you'd eventually earn access to.

Without that experience, a solo founder with a great idea and a working prototype can still stall — not because the idea is bad, but because they've never had to think about liability, or unit economics, or what "go-to-market" actually means in practice.

**auto-c-suite** is built to bridge that gap. It gives the developer, the chef, the consultant, and the creative a full executive team — CTO, CFO, General Counsel, CMO — that brings that accumulated institutional knowledge to bear on their specific situation. You don't need to spend years climbing a corporate ladder to get access to senior-level strategic thinking. That's what this is for.
## 🧠 How It Works: Multi-Agent Orchestration
Unlike generic chatbots, **auto-c-suite** uses a role-based, multi-agent architecture:
* **@chief-of-staff:** Your Master Orchestrator. Manages the **Maturity Roadmap** and delegates tasks.
* **@cto:** Your Lead Architect. Focuses on security-first infrastructure, technical debt, and privacy.
* **@cfo:** Your Financial Strategist. Focuses on unit economics, zero-burn infrastructure, and pricing.
* **@legal:** Your General Counsel. Focuses on liability, entity formation (LLC vs. C-Corp), and compliance.
* **@cmo:** Your Chief Marketing Officer. Focuses on positioning, messaging, and getting the first paying customers.

Both **Claude Code** and **Gemini CLI** are supported — use whichever fits your workflow.

### The "Memory" Protocol
Each agent maintains its own persistent memory log and **reads all other agents' logs** before advising. The CTO knows what the CFO approved. The Legal agent flags when the CMO's marketing claims create regulatory exposure. They don't just answer questions in isolation — they build a **shared Corporate Ledger** that gets smarter with every session.
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
* [ ] **`/status` Command:** Automatically assess the current Maturity Stage and surface the next set of executive priorities.
* [ ] **Recursive Memory Compaction:** Automated "Weekly Board Reviews" that summarize long memory logs into high-density decision records to keep context windows lean.
* [ ] **Multi-Persona Profiles:** Pre-configured context for different industries (e.g., SaaS, Personal Chef, Professional Services).
* [ ] **Gemini CLI Parity:** Full `/interview` script and `@cmo` agent for the Gemini CLI path.
## ⚡ Quick Start

1. **Clone the repo:**
```bash
git clone https://github.com/your-username/auto-c-suite.git
cd auto-c-suite
```

2. **Run Setup:**
```bash
./setup.sh
```

3. **The Founding Interview:**

**Claude Code:**
```bash
claude
# Then type: I am ready for the /interview
```

**Gemini CLI:**
```bash
gemini "I am ready for the /interview to populate COMPANY_CONTEXT.md"
```

4. **The First Board Meeting:**

**Claude Code:**
```
Strategic Review: @cto @cfo, what are the biggest risks to my current prototype?
```

**Gemini CLI:**
```bash
gemini "Strategic Review: @cto @cfo, what are the biggest risks to my current prototype?"
```
## 🛡️ Sovereign Data Policy
Your business data belongs to you. **auto-c-suite** is designed with a "Zero-Footprint" local-first architecture. Your `COMPANY_CONTEXT.md` and all agent memory files (`.claude/memory/`, `.gemini/memory/`) are gitignored by default — your private strategic decisions never leave your machine.


*Created by Peter Alan Thelander, 2026.*
