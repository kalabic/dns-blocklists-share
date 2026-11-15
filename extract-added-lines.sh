#!/usr/bin/env bash
set -euo pipefail

# Extract added lines from the last N commits (default: 10)
# restricted to a single hard-coded file.
#
# Usage: ./extract-added-lines.sh [N] [--chrono]
#   N         number of commits (default: 10)
#   --chrono  show additions in chronological (per-commit) order
#             instead of cumulative file order

# Hard-coded file to operate on (relative to repo root)
FILE="share/ad-shield.txt"

COMMITS=10
CHRONO=false

# Parse arguments (N and/or --chrono, in any order)
while [[ $# -gt 0 ]]; do
    case "$1" in
        --chrono)
            CHRONO=true
            shift
            ;;
        -h|--help)
            echo "Usage: $0 [N] [--chrono]"
            echo "  N         number of commits (default: 10)"
            echo "  --chrono  chronological (per-commit) order"
            exit 0
            ;;
        *)
            if [[ "$1" =~ ^[0-9]+$ ]] && [[ "$1" -gt 0 ]]; then
                COMMITS="$1"
                shift
            else
                echo "Error: unknown argument '$1'" >&2
                echo "Usage: $0 [N] [--chrono]" >&2
                exit 1
            fi
            ;;
    esac
done

if [[ "$CHRONO" == true ]]; then
    # Per-commit patches (chronological order)
    git format-patch "HEAD~${COMMITS}" --stdout -- "$FILE" \
        | grep "^+" \
        | grep -v "^+++" \
        | cut -c 2-
else
    # Cumulative diff (file order)
    git diff "HEAD~${COMMITS}" HEAD -- "$FILE" \
        | grep "^+" \
        | grep -v "^+++" \
        | cut -c 2-
fi