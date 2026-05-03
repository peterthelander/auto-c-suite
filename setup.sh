#!/bin/bash

# --- Claude Code Setup ---
echo "Setting up Claude Code agent memory..."
mkdir -p .claude/memory/
touch .claude/memory/cto_logs.md
touch .claude/memory/cfo_ledger.md
touch .claude/memory/legal_briefs.md
touch .claude/memory/cmo_briefs.md
echo "Claude Code setup complete."

# --- Gemini CLI Setup ---
echo "Setting up Gemini CLI agent memory..."
mkdir -p .gemini/memory/
touch .gemini/memory/cto_logs.md
touch .gemini/memory/cfo_ledger.md
touch .gemini/memory/legal_briefs.md
touch .gemini/memory/cmo_briefs.md
echo "Gemini CLI setup complete."

echo ""
echo "Setup complete! To begin your Founding Interview:"
echo ""
echo "  Claude Code:  claude"
echo "                Then type: /interview"
echo ""
echo "  Gemini CLI:   gemini 'I am ready for the /interview to populate COMPANY_CONTEXT.md'"
echo ""
