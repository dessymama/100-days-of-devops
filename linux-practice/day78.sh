#!/bin/bash

echo "=============================="
echo " Day 78 - CPU Usage Monitor"
echo "=============================="

CPU_LOAD=$(uptime | awk -F'load average:' '{print $2}')

echo "Current CPU Load:"
echo "$CPU_LOAD"
echo

echo "=============================="
echo "CPU monitoring completed."

echo
echo "Learn. Build. Break. Fix. Document. Repeat."
echo "CPU monitor completed successfully."
