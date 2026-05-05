#!/usr/bin/env bash
# compact.sh — Memory compaction helper for auto-c-suite
#
# Handles the mechanical parts of log compaction. The LLM still owns
# semantic summarization; this script owns file ops, dates, and extraction.
#
# Usage:
#   ./compact.sh                  Check which memory files exceed 50KB
#   ./compact.sh --archive FILE   Safely copy FILE to .claude/archive/ with date prefix
#   ./compact.sh --tail FILE N    Print the last N '## ' sections from FILE

set -euo pipefail

MEMORY_DIR=".claude/memory"
ARCHIVE_DIR=".claude/archive"
THRESHOLD=51200  # 50KB

usage() {
    echo "Usage:"
    echo "  ./compact.sh                    Check which memory files need compaction"
    echo "  ./compact.sh --archive FILE     Safely archive FILE to .claude/archive/ with date prefix"
    echo "  ./compact.sh --tail FILE N      Print the last N '## ' sections from FILE"
    exit 1
}

cmd_check() {
    mkdir -p "$ARCHIVE_DIR"
    local needs_compaction=0

    for f in "$MEMORY_DIR"/*.md; do
        [[ -f "$f" ]] || continue
        local size
        size=$(wc -c < "$f")
        if (( size > THRESHOLD )); then
            echo "NEEDS COMPACTION: $f  (${size} bytes)"
            needs_compaction=1
        else
            echo "OK:               $f  (${size} bytes)"
        fi
    done

    if (( needs_compaction == 0 )); then
        echo "All memory files are within the 50KB threshold."
    fi

    return $needs_compaction
}

cmd_archive() {
    local file="$1"
    [[ -f "$file" ]] || { echo "ERROR: File not found: $file"; exit 1; }

    mkdir -p "$ARCHIVE_DIR"
    local basename
    basename=$(basename "$file" .md)
    local dest
    dest="$ARCHIVE_DIR/$(date +%Y-%m-%d)_${basename}.md"

    # cp, not mv — original stays intact until the LLM finishes summarizing.
    # The LLM re-initializes the active file with Edit after summarization.
    cp "$file" "$dest"
    echo "$dest"
}

cmd_tail() {
    local file="$1"
    local n="$2"

    [[ -f "$file" ]] || { echo "ERROR: File not found: $file"; exit 1; }
    [[ "$n" =~ ^[0-9]+$ && "$n" -gt 0 ]] || { echo "ERROR: N must be a positive integer"; exit 1; }

    # Collect line numbers of all top-level ADR headings (## but not ###)
    local heading_lines
    heading_lines=$(grep -n '^## ' "$file" | cut -d: -f1)

    if [[ -z "$heading_lines" ]]; then
        echo "ERROR: No '## ' sections found in $file" >&2
        exit 1
    fi

    local total_headings
    total_headings=$(echo "$heading_lines" | wc -l | tr -d ' ')

    if (( n >= total_headings )); then
        # Fewer sections than requested — return the whole file
        cat "$file"
        return
    fi

    # Start line of the Nth-from-last heading
    local start_line
    start_line=$(echo "$heading_lines" | tail -n "$n" | head -n 1)

    tail -n +"$start_line" "$file"
}

# Dispatch
case "${1:-}" in
    --archive)
        [[ $# -ge 2 ]] || usage
        cmd_archive "$2"
        ;;
    --tail)
        [[ $# -ge 3 ]] || usage
        cmd_tail "$2" "$3"
        ;;
    "")
        cmd_check
        ;;
    *)
        usage
        ;;
esac
