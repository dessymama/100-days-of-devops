Day 83 – Disk & Memory Health Checker

What I Learned

- Used "df -h" to check disk usage.
- Used "free -m" to check available memory.
- Extracted values using "awk".
- Used "tr" to remove the percentage symbol for comparison.
- Built a simple health report using conditional statements.

Challenges Encountered

- The root partition reported 100% disk usage, which is expected in my Termux/Android environment.

Resolution

- Verified that the script correctly parsed and evaluated both disk and memory information.

DevOps Lesson Learned

Combining multiple system checks into a single monitoring script makes it easier to identify potential issues quickly. Health-check scripts are a common part of server monitoring and automation.
