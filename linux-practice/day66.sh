#!/bin/bash

echo "=============================="
echo " Day 66 - Log Search"
echo "=============================="

LOG_FILE="$HOME/100-days-of-devops/server.log"

read -p "Enter a keyword to search: " keyword

echo
echo "Searching for '$keyword'..."

if grep -i "$keyword" "$LOG_FILE"
then
    echo
    echo "✅ Keyword found."
else
    echo
    echo "❌ No matching entries found."
fi

echo
echo "Learn. Build. Break. Fix. Document. Repeat."
echo "Log search completed successfully."
