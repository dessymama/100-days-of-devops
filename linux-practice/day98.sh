#!/bin/bash

REPORT_DIR="process_reports"
mkdir -p "$REPORT_DIR"

TIMESTAMP=$(date +%Y%m%d_%H%M%S)
REPORT="$REPORT_DIR/process_report_$TIMESTAMP.txt"

echo "=============================="
echo " Day 98 - Process Monitor"
echo "=============================="

PROCESS_COUNT=$(ps -e | wc -l)

echo "Running Processes: $PROCESS_COUNT"

echo
echo "Top 5 CPU-consuming processes:"
ps -eo pid,comm,%cpu --sort=-%cpu | head -6

{
echo "Process Report"
echo "Date: $(date)"
echo "Running Processes: $PROCESS_COUNT"
echo
echo "Top 5 CPU Processes:"
ps -eo pid,comm,%cpu --sort=-%cpu | head -6
} > "$REPORT"

echo
echo "Report saved to:"
echo "$REPORT"

echo
echo "Learn. Build. Break. Fix. Document. Repeat."
