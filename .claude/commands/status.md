Produce a full Company Status Report for the current session. Follow these steps exactly:

1. Read `COMPANY_CONTEXT.md` in full.
2. Read all four agent memory files:
   - `.claude/memory/cto_logs.md`
   - `.claude/memory/cfo_ledger.md`
   - `.claude/memory/legal_briefs.md`
   - `.claude/memory/cmo_briefs.md`

3. Output the following report. Be direct and specific — use actual data from the files, not placeholders.

---

## Status Report — [Company Name]

**Stage:** [N] — [Stage name: Idea / Proto / Entity / Product / Business]
**Date:** [today's date]

### Snapshot
[2–3 sentences: what exists today, what's been decided, what's still open]

### Stage Gate: What's needed to reach Stage [N+1]
[Bulleted checklist of specific, concrete blockers — cross-reference memory logs for anything already resolved]

### Open Items by Function

**CTO**
[Summarize unresolved technical flags or decisions from cto_logs.md. If none, say "None logged."]

**CFO**
[Summarize open financial decisions, watch items, or unmet milestones from cfo_ledger.md. If none, say "None logged."]

**Legal**
[Summarize open legal risks, pending actions, or unresolved positions from legal_briefs.md. If none, say "None logged."]

**CMO**
[Summarize open growth bets, untested hypotheses, or positioning questions from cmo_briefs.md. If none, say "None logged."]

### Prioritized Next Actions
[Numbered list, maximum 5 items, ordered by urgency. Each item should be actionable and assigned to a function (CTO / CFO / Legal / CMO).]

### Key Risks
[Bulleted list of the top 3 risks to the company right now, drawn from OPEN_RISKS_AND_DECISIONS and agent memory.]
