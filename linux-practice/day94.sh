#!/bin/bash

LOG_DIR="system_reports"

mkdir -p "$LOG_DIR"

DATE=$(date +%Y%m%d_%H%M%S)
REPORT="$LOG_DIR/system_report_$DATE.txt"

HOST=$(hostname)
USER=$(whoami)
KERNEL=$(uname -r)
UPTIME=$(uptime -p)
MEM=$(free -m | awk '/Mem:/ {print $7}')
DISK=$(df / | awk 'NR==2 {print $5}')

{
echo "=============================="
echo "System Report"
echo "=============================="
echo "Date: $(date)"
echo "Hostname: $HOST"
echo "User: $USER"
echo "Kernel: $KERNEL"
echo "Uptime: $UPTIME"
echo "Available Memory: ${MEM} MB"
echo "Root Disk Usage: $DISK"
} > "$REPORT"

echo "=============================="
echo " Day 94 - System Information Logger"
echo "=============================="

cat "$REPORT"

echo
echo "Report saved to:"
echo "$REPORT"

echo
echo "Learn. Build. Break. Fix. Document. Repeat."
