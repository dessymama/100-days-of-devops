#!/bin/bash

echo "=============================="
echo " Day 76 - Process Monitor"
echo "=============================="

PROCESSES=("bash" "ssh" "nginx")

for process in "${PROCESSES[@]}"
do
    if pgrep "$process" > /dev/null
    then
        echo "✅ $process is running."
    else
        echo "⚠️ $process is not running."
    fi
done

echo
echo "=============================="
echo "Process check completed."

echo
echo "Learn. Build. Break. Fix. Document. Repeat."
