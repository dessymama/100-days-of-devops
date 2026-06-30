#!/bin/bash

echo "=============================="
echo " Day 73 - File Existence Checker"
echo "=============================="

FILES=(
"$HOME/100-days-of-devops/day73.md"
"$HOME/100-days-of-devops/day1.txt"
"$HOME/100-days-of-devops/aws.txt"
"$HOME/100-days-of-devops/linux.txt"
)

for file in "${FILES[@]}"
do
    if [ -f "$file" ]; then
        echo "✅ Found: $(basename "$file")"
    else
        echo "❌ Missing: $(basename "$file")"
    fi
done

echo
echo "Learn. Build. Break. Fix. Document. Repeat."
echo "File verification completed successfully."
