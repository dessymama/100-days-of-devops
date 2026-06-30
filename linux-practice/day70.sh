#!/bin/bash

echo "=============================="
echo " Day 70 - Mini System Monitor"
echo "=============================="

LOG_FILE="$HOME/100-days-of-devops/server.log"

echo
echo "📊 Disk Usage"
DISK=$(df / | awk 'NR==2 {gsub("%","",$5); print $5}')
echo "Root partition usage: ${DISK}%"

echo
echo "🧠 Memory Usage"
MEMORY=$(free -m | awk 'NR==2 {print $7}')
echo "Available memory: ${MEMORY} MB"

echo
echo "📄 Error Log Check"

if [ -f "$LOG_FILE" ]; then
    ERRORS=$(grep -c "ERROR" "$LOG_FILE")
    echo "Total ERROR entries: $ERRORS"
else
    echo "Log file not found."
fi

echo
echo "=============================="
echo "System Summary"

if [ "$DISK" -ge 80 ]; then
    echo "⚠️ Disk usage is high."
else
    echo "✅ Disk usage is healthy."
fi

if [ "$MEMORY" -lt 500 ]; then
    echo "⚠️ Low available memory."
else
    echo "✅ Memory usage is healthy."
fi

if [ -f "$LOG_FILE" ]; then
    if [ "$ERRORS" -gt 0 ]; then
        echo "⚠️ Errors detected in log file."
    else
        echo "✅ No errors found in log file."
    fi
fi

echo
echo "Learn. Build. Break. Fix. Document. Repeat."
echo "Mini system monitor completed successfully."
