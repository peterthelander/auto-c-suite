# 🏛️ auto-c-suite
### *The Sovereign "Company-in-a-Box" for the Solo Entrepreneur.*
**auto-c-suite** is an open-source framework designed to bridge the "Seniority Gap" for solo founders. By orchestrating a specialized executive team of AI agents—Chief of Staff, CTO, CFO, General Counsel and others—this repository turns a local folder into a functioning corporate entity.
## 🚀 The Movement: Why This Matters
The Class of 2026 is entering the toughest job market in nearly 40 years. As AI automates entry-level work, more new graduates are skipping the traditional career ladder entirely — and going straight to building something of their own.

That's not a bad outcome. But it creates a new problem: the traditional path through junior and mid-level roles wasn't just about income. It was where you absorbed institutional knowledge — how to price a service, how to structure a legal entity, how to manage burn rate, how to position a product. The "Senior Room" of advisors you'd eventually earn access to.

Without that experience, a solo founder with a great idea and a working prototype can still stall — not because the idea is bad, but because they've never had to think about liability, or unit economics, or what "go-to-market" actually means in practice.

**auto-c-suite** is built to bridge that gap. It gives the developer, the chef, the consultant, and the creative a full executive team — CTO, CFO, General Counsel, CMO — that brings that accumulated institutional knowledge to bear on their specific situation. You don't need to spend years climbing a corporate ladder to get access to senior-level strategic thinking. That's what this is for.
## 🧠 How It Works: Multi-Agent Orchestration
Unlike generic chatbots, **auto-c-suite** uses a role-based, multi-agent architecture with a **talent pool** model — not every executive is hired for every company. The Founding Interview recommends a starting board based on your business type and stage. As you grow, you add executives with `/hire @[agent]`.

**Master Orchestrator:**
* **@chief-of-staff:** Manages the Maturity Roadmap, runs the Founding Interview, and delegates to the active board.

**Talent Pool** (hire the ones that fit your stage and business type):
| Agent | Role | Default for |
|-------|------|-------------|
| `@cfo` | Financial Strategist — unit economics, burn rate, pricing | All companies |
| `@legal` | General Counsel — entity formation, contracts, compliance | All companies |
| `@cmo` | Chief Marketing Officer — positioning, messaging, first customers | All companies |
| `@cto` | Lead Architect — infrastructure, technical debt, security | Tech product companies |
| `@coo` | Chief Operating Officer — delivery, process, hiring, scaling | Service businesses; any company at Stage 2+ |
| `@cro` | Chief Revenue Officer — pipeline, deals, closing, revenue metrics | B2B companies at Stage 2+ |

Both **Claude Code** and **Gemini CLI** are supported — use whichever fits your workflow.

### The "Memory" Protocol
The framework uses a three-tier memory model designed to keep context lean and agent identities distinct:

- **Agent-owned logs** — each executive maintains their own private memory (e.g. `cto_logs.md`, `cfo_ledger.md`). Only that agent reads its own log in full.
- **Shared corporate decisions log** — cross-functional decisions are distilled by the Chief of Staff into a concise `corporate_decisions.md` that every agent reads. The CTO knows the CFO approved a budget cap. Legal knows the CMO is running a campaign that needs a compliance check. This is the "memo from the board meeting" — curated signal, not raw reasoning dumps.
- **Company context** — `COMPANY_CONTEXT.md` is read by everyone, every session.

This keeps individual agents lean (they don't load four full logs for every query), preserves each agent's distinct "self," and routes cross-functional accountability through the Chief of Staff — the right hub for that coordination.

---

## 🆚 Why Not Just Use ChatGPT?

Fair question. In a single short session, the difference can feel subtle. But the architecture is where the real advantages live:

### 1. Memory that compounds across sessions
With a generic chatbot, every session starts from zero — you re-explain your company, re-establish context, re-surface prior decisions. Here, every agent reads a persistent `COMPANY_CONTEXT.md` and its own memory log before responding. A legal concern flagged in session one is already known by the CFO in session three. **The system gets smarter with every conversation.**

### 2. Role-constrained tension as useful signal
A single chatbot tries to be "balanced." A CFO agent whose mandate is to minimize burn *will push back* on the CTO's infrastructure choice — because that's its job. A Legal agent *will flag* when the CMO's marketing copy creates regulatory exposure. These aren't hedged opinions; they're role-based constraints producing the kind of productive friction you'd get in a real boardroom. The disagreements are information.

### 3. Cross-functional accountability, automatically
In a chatbot conversation, surfacing cross-functional context is your job. Here, it's built into the protocol: the Chief of Staff distills cross-functional decisions into a shared corporate log that every agent reads before advising. Legal already knows the CMO proposed a new channel that needs a compliance check. The CFO already knows the CTO's infrastructure choice was approved at a given budget. You don't have to carry that context yourself — and agents don't waste context loading four full memory dumps for every domain question.

### 4. The boardroom round
One of the most powerful interactions is simply asking the board to go around the table:
```
Go around each board member and tell me your thoughts — where we are and what's important right now from your perspective.
```
Because each agent holds its own memory and role mandate, you get genuinely differentiated perspectives — not a single model wearing different hats, but role-constrained advisors drawing on separate institutional knowledge.

### 5. A versioned, private strategic record
`COMPANY_CONTEXT.md` is your company's persistent brain — updated after every meaningful session, gitignored by default, and never sent anywhere. It's the document every advisor has read before they open their mouth.

---

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
* [x] **`/status` Command:** Automatically assess the current Maturity Stage and surface the next set of executive priorities.
* [ ] **Recursive Memory Compaction:** Automated "Weekly Board Reviews" that summarize long memory logs into high-density decision records to keep context windows lean.
* [ ] **Multi-Persona Profiles:** Pre-configured context for different industries (e.g., SaaS, Personal Chef, Professional Services).
## ⚡ Quick Start

Works with **Claude Code** (`claude`) or **Gemini CLI** (`gemini`) — your choice. Once you're in the session, the conversation is the same either way.

**1. Clone and set up:**
```bash
git clone https://github.com/peterthelander/auto-c-suite.git
cd auto-c-suite
./setup.sh
```

**2. Start your CLI and run the Founding Interview:**
```bash
claude   # or: gemini
```
```
/interview
```
The Chief of Staff will walk you through a structured interview to populate your `COMPANY_CONTEXT.md` — your company's permanent strategic record. Every agent reads this file before every response.

---

### 💬 Example Conversations

**Call specific board members on a strategic question:**
```
@cto @cfo What are the biggest risks to my current prototype, and what should I fix first?
```

**Get a technical architecture review:**
```
@cto I'm deciding between Supabase and a self-hosted Postgres on Fly.io. What do you recommend given our stage?
```

**Run a financial gut-check:**
```
@cfo I'm thinking of charging $29/month. Does that make sense given my target customer and burn rate?
```

**Get legal clarity before you ship:**
```
@legal I'm about to launch a waitlist and collect emails. What do I need in place before I go live?
```

**Work out your go-to-market:**
```
@cmo I have a working product but zero users. Where should I focus first to get my first 10 paying customers?
```

**Run a cross-functional review:**
```
Strategic review: @cto @cfo @cmo @legal — I'm ready to move from prototype to public launch. What does each of you need to see before we go?
```
## 🛡️ Sovereign Data Policy
Your business data belongs to you. **auto-c-suite** is designed with a "Zero-Footprint" local-first architecture. Your `COMPANY_CONTEXT.md` and all agent memory files (`.claude/memory/`, `.gemini/memory/`) are gitignored by default — your private strategic decisions never leave your machine.


## 📄 License
This project is licensed under the **GNU General Public License v3.0**. See [LICENSE](LICENSE) for details.

*Created by Peter Thelander, 2026.*
