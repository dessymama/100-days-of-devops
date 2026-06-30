#!/bin/bash

echo "=============================="
echo " Day 80 - Disk Usage Report"
echo "=============================="

USAGE=$(df -h / | awk 'NR==2 {print $5}')
PERCENT=$(echo "$USAGE" | tr -d '%')

echo "Root Disk Usage: $USAGE"

if [ "$PERCENT" -ge 90 ]; then
    echo "❌ Critical: Disk usage is very high."
elif [ "$PERCENT" -ge 80 ]; then
    echo "⚠️ Warning: Disk usage is getting high."
else
    echo "✅ Disk usage is healthy."
fi

echo
echo "=============================="
echo "Disk report completed."
echo
echo "Learn. Build. Break. Fix. Document. Repeat."
