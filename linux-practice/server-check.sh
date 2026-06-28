#!/bin/bash

echo "===== Server Check ====="

read -p "Is nginx running? (yes/no): " answer

if [ "$answer" = "yes" ]
then
    echo "Server is healthy."
else
    echo "Please start nginx."
fi
