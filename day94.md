Day 94 – System Information Logger

What I Learned

- Generated a timestamped system information report using Bash.
- Collected hostname, current user, kernel version, uptime, memory, and disk usage.
- Saved reports into a dedicated directory for better organization.
- Used output redirection to create reusable report files.

Challenges Encountered

- The root disk usage remained at 100%, but the report was generated successfully.

Resolution

- Confirmed that the script collected all required system information and saved it correctly with a unique timestamp.

DevOps Lesson Learned

System inventory reports help administrators track the state of servers over time. Automating report generation improves consistency and makes troubleshooting easier.
