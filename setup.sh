#!/bin/bash

# Helper: write a file only if it does not already exist
init_file() {
  local path="$1"
  local content="$2"
  if [ -f "$path" ]; then
    echo "  [skip] $path already exists"
  else
    echo "$content" > "$path"
    echo "  [init] $path"
  fi
}

# --- Claude Code Setup ---
echo "Setting up Claude Code agent memory..."
mkdir -p .claude/memory/
mkdir -p .claude/archive/

init_file ".claude/memory/corporate_decisions.md" "# Corporate Decisions Log
*(No entries yet.)*"

init_file ".claude/memory/cto_logs.md" "# CTO Log
*(No entries yet.)*"

init_file ".claude/memory/cfo_ledger.md" "# CFO Ledger
*(No entries yet.)*"

init_file ".claude/memory/legal_briefs.md" "# Legal Briefs
*(No entries yet.)*"

init_file ".claude/memory/cmo_briefs.md" "# CMO Briefs
*(No entries yet.)*"

init_file ".claude/memory/coo_ops.md" "# COO Ops Log
*(No entries yet.)*"

init_file ".claude/memory/cro_pipeline.md" "# CRO Pipeline Log
*(No entries yet.)*"

echo "Claude Code setup complete."

# --- Gemini CLI Setup ---
echo "Setting up Gemini CLI agent memory..."
mkdir -p .gemini/memory/
mkdir -p .gemini/archive/

init_file ".gemini/memory/corporate_decisions.md" "# Corporate Decisions Log
*(No entries yet.)*"

init_file ".gemini/memory/cto_logs.md" "# CTO Log
*(No entries yet.)*"

init_file ".gemini/memory/cfo_ledger.md" "# CFO Ledger
*(No entries yet.)*"

init_file ".gemini/memory/legal_briefs.md" "# Legal Briefs
*(No entries yet.)*"

init_file ".gemini/memory/cmo_briefs.md" "# CMO Briefs
*(No entries yet.)*"

init_file ".gemini/memory/coo_ops.md" "# COO Ops Log
*(No entries yet.)*"

init_file ".gemini/memory/cro_pipeline.md" "# CRO Pipeline Log
*(No entries yet.)*"

echo "Gemini CLI setup complete."

echo ""
echo "Setup complete! To begin your Founding Interview:"
echo ""
echo "  claude '/interview'   # or: gemini '/interview'"
echo ""
