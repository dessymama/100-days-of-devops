#!/bin/bash

echo "=============================="
echo " Day 81 - Uptime Monitor"
echo "=============================="

CURRENT_TIME=$(date)
CURRENT_USER=$(whoami)
SYSTEM_UPTIME=$(uptime -p)

echo "Current Time: $CURRENT_TIME"
echo "Current User: $CURRENT_USER"
echo "System Uptime: $SYSTEM_UPTIME"

echo
echo "=============================="
echo "Uptime report completed."
echo
echo "Learn. Build. Break. Fix. Document. Repeat."
