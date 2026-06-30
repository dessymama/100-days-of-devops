#!/bin/bash

echo "=============================="
echo " Day 68 - Disk Space Monitor"
echo "=============================="

echo "Disk usage:"

df -h

echo

USAGE=$(df / | awk 'NR==2 {gsub("%","",$5); print $5}')

echo "Root partition usage: ${USAGE}%"

if [ "$USAGE" -ge 80 ]; then
    echo "⚠️ Warning: Disk usage is above 80%."
else
    echo "✅ Disk usage is within a safe range."
fi

echo
echo "Learn. Build. Break. Fix. Document. Repeat."
echo "Disk check completed successfully."
