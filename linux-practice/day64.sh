#!/bin/bash

echo "=============================="
echo " Day 64 - Backup Automation"
echo "=============================="

SOURCE="$HOME/100-days-of-devops"
BACKUP="$HOME/backup"

if [ ! -d "$BACKUP" ]; then
    mkdir "$BACKUP"
    echo "📁 Backup folder created."
fi

cp "$SOURCE"/*.txt "$BACKUP"

echo
echo "✅ Backup completed."

echo
echo "Files in backup folder:"
ls "$BACKUP"

echo
echo "Learn. Build. Break. Fix. Document. Repeat."
echo "Backup completed successfully."
