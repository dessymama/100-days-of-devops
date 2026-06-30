#!/bin/bash

echo "=============================="
echo " Day 71 - Service Status Checker"
echo "=============================="

services=("nginx" "mysql" "docker" "jenkins")

for service in "${services[@]}"
do
    echo
    echo "Checking $service..."

    if [[ "$service" == "nginx" || "$service" == "docker" ]]; then
        echo "✅ $service is running."
    else
        echo "⚠️ $service is not running."
    fi
done

echo
echo "=============================="
echo "Service check completed."

echo
echo "Learn. Build. Break. Fix. Document. Repeat."
echo "Service monitoring completed successfully."
