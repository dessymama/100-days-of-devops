#!/bin/bash

echo "=============================="
echo " Day 63 - File Scanner"
echo "=============================="

count=0

for file in ~/100-days-of-devops/*.txt
do
    if [ -f "$file" ]; then
        echo "📄 Found: $(basename "$file")"
        count=$((count + 1))
    fi
done

echo
echo "Total text files found: $count"

echo
echo "Learn. Build. Break. Fix. Document. Repeat."
echo "File scan completed successfully."
