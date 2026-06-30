Day 92 – Automatic Disk Usage Alert

What I Learned

- Monitored root disk usage using Bash.
- Compared disk usage against predefined thresholds.
- Generated Healthy, Warning, or Critical alerts.
- Logged monitoring results to a file for future reference.

Challenges Encountered

- The system reported 100% disk usage, triggering a Critical alert.

Resolution

- Verified that the script correctly identified the threshold breach and recorded the alert in the log file.

DevOps Lesson Learned

Monitoring systems rely on thresholds to detect abnormal conditions. Logging alerts creates a history that helps administrators investigate recurring issues and monitor system health over time.
