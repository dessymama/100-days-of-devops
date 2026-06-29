#!/bin/bash

echo "=============================="
echo " Day 67 - Error Counter"
echo "=============================="

LOG_FILE="$HOME/100-days-of-devops/server.log"

if [ ! -f "$LOG_FILE" ]; then
    echo "❌ Log file not found."
    exit 1
fi

ERROR_COUNT=$(grep -c "ERROR" "$LOG_FILE")

echo "Total ERROR entries: $ERROR_COUNT"

if [ "$ERROR_COUNT" -eq 0 ]; then
    echo "✅ System looks healthy."
else
    echo "⚠️ Attention: Errors detected."
fi

echo
echo "Learn. Build. Break. Fix. Document. Repeat."
echo "Error analysis completed successfully."
