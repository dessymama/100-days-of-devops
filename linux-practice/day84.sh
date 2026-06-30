#!/bin/bash

LOGFILE="disk_history.log"

echo "=============================="
echo " Day 84 - Disk Usage Logger"
echo "=============================="

DATE=$(date)
DISK=$(df -h / | awk 'NR==2 {print $5}')

echo "$DATE | Root Disk Usage: $DISK" >> "$LOGFILE"

echo "Latest Entry:"
tail -n 1 "$LOGFILE"

echo
echo "Log file: $LOGFILE"
echo "=============================="
echo "Disk usage logged successfully."

echo
echo "Learn. Build. Break. Fix. Document. Repeat."
