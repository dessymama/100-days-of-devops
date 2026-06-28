#!/bin/bash

echo "=============================="
echo " Day 59 - Command-Line Arguments"
echo "=============================="

check_service() {
    if [ -z "$1" ]; then
        echo "Usage: ./day59.sh <service-name>"
        exit 1
    fi

    echo "Checking service: $1"

    if [ "$1" = "nginx" ]; then
        echo "✅ $1 is running."
    else
        echo "⚠️ $1 status unknown."
    fi
}

check_service "$1"

echo
echo "Learn. Build. Break. Fix. Document. Repeat."
echo "Server check finished successfully."
