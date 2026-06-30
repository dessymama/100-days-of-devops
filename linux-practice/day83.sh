#!/bin/bash

echo "=============================="
echo " Day 83 - Disk & Memory Health"
echo "=============================="

DISK=$(df -h / | awk 'NR==2 {print $5}')
MEMORY=$(free -m | awk '/Mem:/ {print $7}')

echo "Disk Usage: $DISK"
echo "Available Memory: ${MEMORY} MB"

echo
echo "Health Summary"

DISK_PERCENT=$(echo "$DISK" | tr -d '%')

if [ "$DISK_PERCENT" -ge 90 ]; then
    echo "❌ Disk status: Critical"
else
    echo "✅ Disk status: Healthy"
fi

if [ "$MEMORY" -lt 500 ]; then
    echo "⚠️ Memory status: Low"
else
    echo "✅ Memory status: Healthy"
fi

echo
echo "=============================="
echo "Health check completed."

echo
echo "Learn. Build. Break. Fix. Document. Repeat."
