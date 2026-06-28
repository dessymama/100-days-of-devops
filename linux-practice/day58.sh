#!/bin/bash

welcome() {
    echo "=============================="
    echo " Day 58 - Server Health Check "
    echo "=============================="
}

check_server() {
    read -p "How many servers do you want to check? " count

    for ((i=1; i<=count; i++))
    do
        read -p "Is Server $i healthy? (yes/no): " answer

        if [ "$answer" = "yes" ]
        then
            echo "✅ Server $i is healthy."
        else
            echo "❌ Server $i needs attention."
        fi
    done
}

goodbye() {
    echo
    echo "Health check completed."
    echo "Learn. Build. Break. Fix. Document. Repeat."
    echo "Server check finished successfully."
}

welcome
check_server
goodbye
