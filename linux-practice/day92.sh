#!/bin/bash

LOGFILE="disk_alert.log"

echo "=============================="
echo " Day 92 - Automatic Disk Alert"
echo "=============================="

DISK=$(df / | awk 'NR==2 {print $5}')
USAGE=${DISK%\%}

echo "Current Disk Usage: $DISK"

if [ "$USAGE" -ge 90 ]; then
    STATUS="❌ CRITICAL"
elif [ "$USAGE" -ge 80 ]; then
    STATUS="⚠️ WARNING"
else
    STATUS="✅ HEALTHY"
fi

echo "Status: $STATUS"

echo "$(date) | Disk Usage: $DISK | $STATUS" >> "$LOGFILE"

echo
echo "Alert saved to: $LOGFILE"

echo
echo "=============================="
echo "Disk alert completed."

echo
echo "Learn. Build. Break. Fix. Document. Repeat."
