#!/bin/bash

BACKUP_DIR="log_backups"

echo "=============================="
echo " Day 89 - Backup Cleanup"
echo "=============================="

if [ ! -d "$BACKUP_DIR" ]; then
    echo "❌ Backup directory not found."
    exit 1
fi

TOTAL=$(ls "$BACKUP_DIR" | wc -l)

echo "Current backups: $TOTAL"

if [ "$TOTAL" -gt 3 ]; then
    ls -t "$BACKUP_DIR" | tail -n +4 | while read file
    do
        rm "$BACKUP_DIR/$file"
    done
    echo "✅ Old backups removed."
else
    echo "✅ No cleanup needed."
fi

echo
echo "Remaining backups:"
ls "$BACKUP_DIR"

echo
echo "=============================="
echo "Backup cleanup completed."

echo
echo "Learn. Build. Break. Fix. Document. Repeat."
