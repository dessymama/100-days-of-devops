#!/bin/bash

LOG_FILE="system.log"
ARCHIVE_DIR="log_archive"

mkdir -p "$ARCHIVE_DIR"

echo "=============================="
echo " Day 96 - Automatic Log Rotation"
echo "=============================="

if [ ! -f "$LOG_FILE" ]; then
    echo "Sample log entry." > "$LOG_FILE"
fi

TIMESTAMP=$(date +%Y%m%d_%H%M%S)
ARCHIVE_FILE="$ARCHIVE_DIR/system_$TIMESTAMP.log"

mv "$LOG_FILE" "$ARCHIVE_FILE"
touch "$LOG_FILE"

echo "✅ Log archived successfully."
echo "Archive:"
echo "$ARCHIVE_FILE"

echo
echo "New empty log created:"
ls -l "$LOG_FILE"

echo
echo "Learn. Build. Break. Fix. Document. Repeat."
