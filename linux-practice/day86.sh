#!/bin/bash

LOGFILE="auth.log"

echo "=============================="
echo " Day 86 - Failed Login Detector"
echo "=============================="

FAILED=$(grep -c "FAILED LOGIN" "$LOGFILE")

echo "Failed login attempts: $FAILED"

if [ "$FAILED" -gt 0 ]; then
    echo "⚠️ Security Alert: Failed login attempts detected."
else
    echo "✅ No failed login attempts."
fi

echo
echo "=============================="
echo "Security scan completed."

echo
echo "Learn. Build. Break. Fix. Document. Repeat."
