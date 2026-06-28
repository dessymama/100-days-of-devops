#!/bin/bash

echo "=============================="
echo " Day 61 - File Automation"
echo "=============================="

LOG_DIR="$HOME/server_logs"
LOG_FILE="$LOG_DIR/health.log"
if [ ! -d "$LOG_DIR" ]; then
    mkdir "$LOG_DIR"
    echo "📁 Created directory: $LOG_DIR"
fi

echo "Health check completed at $(date)" >> "$LOG_FILE"

echo "📝 Log updated:"
cat "$LOG_FILE"

echo
echo "Learn. Build. Break. Fix. Document. Repeat."
echo "Server check finished successfully."
