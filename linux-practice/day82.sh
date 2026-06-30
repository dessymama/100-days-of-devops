#!/bin/bash

echo "=============================="
echo " Day 82 - File Permission Audit"
echo "=============================="

FILES=("day80.sh" "day81.sh" "day82.sh")

for FILE in "${FILES[@]}"
do
    if [ -f "$FILE" ]; then
        echo "✅ $FILE found"
        ls -l "$FILE"
        echo
    else
        echo "❌ $FILE is missing"
        echo
    fi
done

echo "=============================="
echo "Permission audit completed."
echo
echo "Learn. Build. Break. Fix. Document. Repeat."
