Day 84 – Disk Usage Logger

What I Learned

- Used "date" to record timestamps.
- Used "df -h" and "awk" to retrieve disk usage.
- Appended log entries to a file using ">>".
- Displayed the latest log entry with "tail -n 1".

Challenges Encountered

- No major challenges. The script successfully created and updated the log file.

Resolution

- Verified that each execution added a new timestamped disk usage entry to "disk_history.log".

DevOps Lesson Learned

Logging system metrics over time helps track trends, diagnose problems, and maintain historical records. Automated logging is an important part of monitoring and system administration.
