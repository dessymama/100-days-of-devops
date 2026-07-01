#!/bin/bash

REPORT_DIR="service_reports"
mkdir -p "$REPORT_DIR"

DATE=$(date +%Y%m%d_%H%M%S)
REPORT="$REPORT_DIR/service_report_$DATE.txt"

echo "==============================" | tee "$REPORT"
echo " Day 95 - Service Status Report" | tee -a "$REPORT"
echo "==============================" | tee -a "$REPORT"

COMMANDS=("bash" "git" "curl" "ssh" "tar")

for cmd in "${COMMANDS[@]}"
do
    if command -v "$cmd" >/dev/null 2>&1
    then
        echo "✅ $cmd : Available" | tee -a "$REPORT"
    else
        echo "❌ $cmd : Not Available" | tee -a "$REPORT"
    fi
done

echo | tee -a "$REPORT"
echo "Report saved to:" | tee -a "$REPORT"
echo "$REPORT" | tee -a "$REPORT"

echo
echo "Learn. Build. Break. Fix. Document. Repeat."
