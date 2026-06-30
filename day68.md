Day 68 – Disk Space Monitor

What I Learned

- Used "df -h" to display disk usage in a human-readable format.
- Learned how to extract command output using "awk".
- Used command substitution "$(...)" to store a value in a variable.
- Compared numeric values with "-ge" to trigger a warning.

Challenges Encountered

- The root partition showed 100% usage, which initially looked alarming.

Resolution

- I learned that I am working in a Termux environment on Android, where the root filesystem can report very high usage. My script correctly detected the value and displayed the appropriate warning.

DevOps Lesson Learned

Monitoring disk usage is essential for system reliability. Automated disk checks help engineers detect storage issues before they affect applications or services.
