#!/bin/bash

LOGFILE="system_health.log"

DATE=$(date)
CPU=$(uptime | awk -F'load average:' '{print $2}')
MEMORY=$(free -m | awk '/Mem:/ {print $7}')
DISK=$(df -h / | awk 'NR==2 {print $5}')

echo "=============================="
echo " Day 85 - System Health Logger"
echo "=============================="

{
echo "Date: $DATE"
echo "CPU Load:$CPU"
echo "Available Memory: ${MEMORY} MB"
echo "Root Disk Usage: $DISK"
echo "--------------------------------"
} >> "$LOGFILE"

echo "Latest Health Report:"
tail -n 5 "$LOGFILE"

echo
echo "Log file: $LOGFILE"
echo "=============================="
echo "System health logged successfully."

echo
echo "Learn. Build. Break. Fix. Document. Repeat."
