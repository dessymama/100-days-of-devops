#!/bin/bash

echo "=============================="
echo " Day 79 - System Resource Report"
echo "=============================="

HOST=$(hostname)
DATE=$(date)
CPU=$(uptime | awk -F'load average:' '{print $2}')
MEM=$(free -m | awk '/Mem:/ {print $7}')
DISK=$(df -h / | awk 'NR==2 {print $5}')

echo "Hostname: $HOST"
echo "Date: $DATE"
echo
echo "CPU Load:$CPU"
echo "Available Memory: ${MEM} MB"
echo "Root Disk Usage: $DISK"

echo
echo "=============================="
echo "System resource report completed."
echo
echo "Learn. Build. Break. Fix. Document. Repeat."
