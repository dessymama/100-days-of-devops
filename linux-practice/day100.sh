#!/bin/bash

REPORT_DIR="final_reports"
BACKUP_DIR="final_backups"

mkdir -p "$REPORT_DIR"
mkdir -p "$BACKUP_DIR"

TIMESTAMP=$(date +%Y%m%d_%H%M%S)

REPORT="$REPORT_DIR/final_report_$TIMESTAMP.txt"

HOST=$(hostname)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
LOAD=$(uptime | awk -F'load average:' '{print $2}')
MEMORY=$(free -m | awk '/Mem:/ {print $7 " MB"}')
DISK=$(df -h / | awk 'NR==2 {print $5}')
PROCESSES=$(ps -e | wc -l)

echo "=============================="
echo " Day 100 - Final DevOps Dashboard"
echo "=============================="

echo "Hostname          : $HOST"
echo "Current User      : $USER_NAME"
echo "System Uptime     : $UPTIME"
echo "CPU Load          :$LOAD"
echo "Available Memory  : $MEMORY"
echo "Root Disk Usage   : $DISK"
echo "Running Processes : $PROCESSES"

{
echo "========== FINAL DEVOPS REPORT =========="
echo "Date: $(date)"
echo "Hostname: $HOST"
echo "Current User: $USER_NAME"
echo "System Uptime: $UPTIME"
echo "CPU Load:$LOAD"
echo "Available Memory: $MEMORY"
echo "Root Disk Usage: $DISK"
echo "Running Processes: $PROCESSES"
} > "$REPORT"

tar -czf "$BACKUP_DIR/final_report_$TIMESTAMP.tar.gz" "$REPORT"

echo
echo "Report saved:"
echo "$REPORT"

echo
echo "Backup saved:"
echo "$BACKUP_DIR/final_report_$TIMESTAMP.tar.gz"

echo
echo "🎉 Congratulations!"
echo "100 Days of DevOps Completed!"
echo
echo "Learn. Build. Break. Fix. Document. Repeat."
