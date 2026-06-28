#!/bin/bash

echo "===== Day 55 ====="

read -p "Enter your age: " age

if [ "$age" -ge 18 ]
then
    echo "You are an adult."
else
    echo "You are a minor."
fi
