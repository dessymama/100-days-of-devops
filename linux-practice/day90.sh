#!/bin/bash

echo "=============================="
echo " Day 90 - System Health Dashboard"
echo "=============================="

HOST=$(hostname)
DATE=$(date)
CPU=$(uptime | awk -F'load average:' '{print $2}')
MEM=$(free -m | awk '/Mem:/ {print $7}')
DISK=$(df / | awk 'NR==2 {print $5}')
UPTIME=$(uptime -p)

echo "Hostname: $HOST"
echo "Date: $DATE"
echo "CPU Load:$CPU"
echo "Available Memory: ${MEM} MB"
echo "Root Disk Usage: $DISK"
echo "System Uptime: $UPTIME"

echo
echo "=============================="
echo "Health Summary"

if [ "${DISK%\%}" -ge 90 ]; then
    echo "❌ Disk: Critical"
else
    echo "✅ Disk: Healthy"
fi

if [ "$MEM" -lt 500 ]; then
    echo "⚠️ Memory: Low"
else
    echo "✅ Memory: Healthy"
fi

echo
echo "Dashboard completed."
echo
echo "Learn. Build. Break. Fix. Document. Repeat."
