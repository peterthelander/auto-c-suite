#!/bin/bash

# Ensure memory directory exists
mkdir -p .gemini/memory/

# Initialize empty log files if they don't exist
touch .gemini/memory/cto_logs.md
touch .gemini/memory/cfo_ledger.md

# Ensure .gitignore exists
if [ ! -f .gitignore ]; then
  echo "COMPANY_CONTEXT.md" >> .gitignore
  echo ".gemini/memory/*.md" >> .gitignore
  echo ".env" >> .gitignore
  echo ".gitignore initialized."
fi

echo "=========================================="
echo "   Welcome to your Sovereign C-Suite      "
echo "=========================================="
echo "Your infrastructure is initialized."
echo ""
echo "To begin, run the following command:"
echo "gemini \"I am ready for the /interview to populate COMPANY_CONTEXT.md\""
echo "=========================================="
