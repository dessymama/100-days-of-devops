#!/bin/bash

LOGFILE="system.log"

echo "=============================="
echo " Day 91 - Log File Analyzer"
echo "=============================="

if [ ! -f "$LOGFILE" ]; then
    echo "❌ Log file not found."
    exit 1
fi

TOTAL=$(wc -l < "$LOGFILE")
INFO=$(grep -c "^INFO" "$LOGFILE")
WARNING=$(grep -c "^WARNING" "$LOGFILE")
ERROR=$(grep -c "^ERROR" "$LOGFILE")

echo "Total Log Entries : $TOTAL"
echo "INFO Entries      : $INFO"
echo "WARNING Entries   : $WARNING"
echo "ERROR Entries     : $ERROR"

echo
echo "=============================="
echo "Analysis completed."

echo
echo "Learn. Build. Break. Fix. Document. Repeat."
