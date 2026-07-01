#!/bin/bash

echo "=============================="
echo " Day 97 - System Cleanup Report"
echo "=============================="

LOG_COUNT=$(find . -maxdepth 1 -name "*.log" | wc -l)

echo "Log files found: $LOG_COUNT"

if [ "$LOG_COUNT" -gt 0 ]; then
    find . -maxdepth 1 -name "*.log" -delete
    echo "✅ Cleanup completed."
else
    echo "✅ No log files to clean."
fi

REMAINING=$(find . -maxdepth 1 -name "*.log" | wc -l)

echo "Remaining log files: $REMAINING"

echo
echo "Learn. Build. Break. Fix. Document. Repeat."
