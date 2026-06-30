#!/bin/bash

echo "=============================="
echo " Day 77 - File Cleanup"
echo "=============================="

touch temp1.tmp temp2.tmp temp3.tmp

echo "Temporary files before cleanup:"
ls *.tmp

rm -f *.tmp

echo
echo "Cleanup completed."

if ls *.tmp >/dev/null 2>&1
then
    echo "⚠️ Some temporary files still exist."
else
    echo "✅ All temporary files removed."
fi

echo
echo "Learn. Build. Break. Fix. Document. Repeat."
echo "File cleanup completed successfully."
