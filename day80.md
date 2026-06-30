Day 80 – Disk Usage Report

What I Learned

- Used the "df" command to check disk usage.
- Used "awk" to extract the root partition usage.
- Used "tr" to remove the percentage (%) symbol.
- Applied conditional statements to classify disk usage as healthy, warning, or critical.

Challenges Encountered

- No major challenges. The script correctly analyzed disk usage and displayed the appropriate status.

Resolution

- Verified that the percentage was converted into a numeric value before comparison.

DevOps Lesson Learned

Monitoring disk usage is essential because a full disk can cause applications, databases, and services to fail. Automating disk checks helps detect storage issues before they become critical.
