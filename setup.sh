#!/bin/bash

# Ensure memory directory exists
mkdir -p .gemini/memory/

# Initialize empty log files if they don't exist
touch .gemini/memory/cto_logs.md
touch .gemini/memory/cfo_ledger.md

gemini \"I am ready for the /interview to populate COMPANY_CONTEXT.md\" --approval-mode auto_edit
