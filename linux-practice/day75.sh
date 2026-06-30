#!/bin/bash

echo "=============================="
echo " Day 75 - Project Report"
echo "=============================="

echo "Date: $(date)"
echo "User: $(whoami)"
echo "Project Directory: $(pwd)"

SCRIPT_COUNT=$(find ~/100-days-of-devops -name "*.sh" | wc -l)
MARKDOWN_COUNT=$(find ~/100-days-of-devops -name "*.md" | wc -l)

echo
echo "Bash Scripts: $SCRIPT_COUNT"
echo "Markdown Files: $MARKDOWN_COUNT"

echo
echo "=============================="
echo "Project report generated."

echo
echo "Learn. Build. Break. Fix. Document. Repeat."
