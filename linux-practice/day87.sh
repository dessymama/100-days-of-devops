#!/bin/bash

echo "=============================="
echo " Day 87 - Active User Sessions"
echo "=============================="

CURRENT_USER=$(whoami)

echo "Current User: $CURRENT_USER"
echo

if command -v who >/dev/null 2>&1; then
    echo "Logged-in Sessions:"
    who

    SESSION_COUNT=$(who | wc -l)

    echo
    echo "Active Sessions: $SESSION_COUNT"

    if [ "$SESSION_COUNT" -eq 0 ]; then
        echo "⚠️ No active login sessions detected."
    else
        echo "✅ Active user session(s) detected."
    fi
else
    echo "⚠️ 'who' command is not available in this environment."
fi

echo
echo "=============================="
echo "Session report completed."

echo
echo "Learn. Build. Break. Fix. Document. Repeat."
