#!/bin/bash

welcome() {
    echo "=============================="
    echo " Day 60 - DevOps Health Checker"
    echo "=============================="
}

check_service() {
    if [ -z "$1" ]; then
        echo "Usage: ./day60.sh <service-name>"
        exit 1
    fi

    echo "Checking service: $1..."

    if [ "$1" = "nginx" ]; then
        echo "✅ Nginx service is healthy."
    elif [ "$1" = "mysql" ]; then
        echo "✅ MySQL service is healthy."
    else
        echo "⚠️ Service '$1' is not recognized."
    fi
}

goodbye() {
    echo
    echo "Health check completed."
    echo "Learn. Build. Break. Fix. Document. Repeat."
}

welcome
check_service "$1"
goodbye
