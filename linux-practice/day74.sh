#!/bin/bash

echo "=============================="
echo " Day 74 - Directory Size Analyzer"
echo "=============================="

DIRS=(
"$HOME/100-days-of-devops"
"$HOME/backup"
"$HOME/server_logs"
)

for dir in "${DIRS[@]}"
do
    echo

    if [ -d "$dir" ]; then
        echo "📁 $(basename "$dir")"
        du -sh "$dir"
    else
        echo "❌ $(basename "$dir") not found."
    fi
done

echo
echo "Learn. Build. Break. Fix. Document. Repeat."
echo "Directory analysis completed successfully."
