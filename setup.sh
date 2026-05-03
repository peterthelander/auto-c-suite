#!/bin/bash

# --- Claude Code Setup ---
echo "Setting up Claude Code agent memory..."
mkdir -p .claude/memory/

cat > .claude/memory/cto_logs.md << 'EOF'
# CTO Log
*(No entries yet.)*
EOF

cat > .claude/memory/cfo_ledger.md << 'EOF'
# CFO Ledger
*(No entries yet.)*
EOF

cat > .claude/memory/legal_briefs.md << 'EOF'
# Legal Briefs
*(No entries yet.)*
EOF

cat > .claude/memory/cmo_briefs.md << 'EOF'
# CMO Briefs
*(No entries yet.)*
EOF

cat > .claude/memory/coo_ops.md << 'EOF'
# COO Ops Log
*(No entries yet.)*
EOF

cat > .claude/memory/cro_pipeline.md << 'EOF'
# CRO Pipeline Log
*(No entries yet.)*
EOF

echo "Claude Code setup complete."

# --- Gemini CLI Setup ---
echo "Setting up Gemini CLI agent memory..."
mkdir -p .gemini/memory/

cat > .gemini/memory/cto_logs.md << 'EOF'
# CTO Log
*(No entries yet.)*
EOF

cat > .gemini/memory/cfo_ledger.md << 'EOF'
# CFO Ledger
*(No entries yet.)*
EOF

cat > .gemini/memory/legal_briefs.md << 'EOF'
# Legal Briefs
*(No entries yet.)*
EOF

cat > .gemini/memory/cmo_briefs.md << 'EOF'
# CMO Briefs
*(No entries yet.)*
EOF

cat > .gemini/memory/coo_ops.md << 'EOF'
# COO Ops Log
*(No entries yet.)*
EOF

cat > .gemini/memory/cro_pipeline.md << 'EOF'
# CRO Pipeline Log
*(No entries yet.)*
EOF

echo "Gemini CLI setup complete."

echo ""
echo "Setup complete! To begin your Founding Interview:"
echo ""
echo "  claude '/interview'   # or: gemini '/interview'"
echo ""
