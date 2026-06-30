Day 85 – System Health Logger

What I Learned

- Combined CPU, memory, and disk information into a single report.
- Used "uptime" to retrieve CPU load averages.
- Used "free -m" to obtain available memory.
- Used "df -h" to check disk usage.
- Stored structured health reports in a log file.

Challenges Encountered

- No major issues. The script successfully generated and appended a health report.

Resolution

- Verified that each execution added a new timestamped report to "system_health.log" and displayed the latest entry.

DevOps Lesson Learned

Collecting multiple system metrics in a single report provides a quick overview of system health. This type of logging is a foundation for monitoring and automation in production environments.
