#!/bin/bash

LOGFILE="system.log"
BACKUP_DIR="log_backups"

echo "=============================="
echo " Day 88 - System Log Backup"
echo "=============================="

mkdir -p "$BACKUP_DIR"

if [ -f "$LOGFILE" ]; then
    DATE=$(date +%Y%m%d_%H%M%S)
    cp "$LOGFILE" "$BACKUP_DIR/system_$DATE.log"

    echo "✅ Log backup created."
    echo "Backup location:"
    ls "$BACKUP_DIR"
else
    echo "❌ Log file not found."
fi

echo
echo "=============================="
echo "Backup process completed."

echo
echo "Learn. Build. Break. Fix. Document. Repeat."
