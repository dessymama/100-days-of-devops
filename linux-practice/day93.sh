#!/bin/bash

SOURCE_DIR="$HOME/100-days-of-devops/linux-practice"
BACKUP_DIR="$HOME/backups"

mkdir -p "$BACKUP_DIR"

DATE=$(date +%Y%m%d_%H%M%S)
BACKUP_FILE="$BACKUP_DIR/linux-practice_$DATE.tar.gz"

echo "=============================="
echo " Day 93 - Directory Backup"
echo "=============================="

tar -czf "$BACKUP_FILE" "$SOURCE_DIR"

if [ $? -eq 0 ]; then
    echo "✅ Backup created successfully."
    echo
    echo "Backup file:"
    ls -lh "$BACKUP_FILE"
else
    echo "❌ Backup failed."
fi

echo
echo "=============================="
echo "Backup process completed."

echo
echo "Learn. Build. Break. Fix. Document. Repeat."
