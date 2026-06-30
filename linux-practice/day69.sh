#!/bin/bash

echo "=============================="
echo " Day 69 - Memory Monitor"
echo "=============================="

echo "Memory usage:"
free -h

echo

AVAILABLE=$(free -m | awk 'NR==2 {print $7}')

echo "Available memory: ${AVAILABLE} MB"

if [ "$AVAILABLE" -lt 500 ]; then
    echo "⚠️ Warning: Low available memory."
else
    echo "✅ Memory usage is healthy."
fi

echo
echo "Learn. Build. Break. Fix. Document. Repeat."
echo "Memory check completed successfully."
