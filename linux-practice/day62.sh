#!/bin/bash

echo "=============================="
echo " Day 62 - File Permissions"
echo "=============================="

echo "Current file permissions:"
ls -l day62.sh

echo
echo "Checking if the script is executable..."

if [ -x day62.sh ]; then
    echo "✅ day62.sh is executable."
else
    echo "❌ day62.sh is NOT executable."
fi

echo
echo "Learn. Build. Break. Fix. Document. Repeat."
echo "Permission check completed successfully."
