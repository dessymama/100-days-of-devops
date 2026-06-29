#!/bin/bash

echo "=============================="
echo " Day 65 - Log File Analyzer"
echo "=============================="

LOG_FILE="$HOME/100-days-of-devops/sample.log"

if [ ! -f "$LOG_FILE" ]; then
    echo "❌ Log file not found."
    exit 1
fi

echo "📄 Log file found."

echo
echo "Total log entries:"
wc -l < "$LOG_FILE"

echo
echo "Last 5 log entries:"
tail -5 "$LOG_FILE"

echo
echo "Learn. Build. Break. Fix. Document. Repeat."
echo "Log analysis completed successfully."
