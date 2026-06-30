Day 89 – Backup Cleanup Automation

What I Learned

- Counted backup files in a directory using Bash.
- Used conditional statements to determine whether cleanup was needed.
- Learned how to keep only the most recent backup files by sorting them with "ls -t".
- Automated a simple backup retention policy.

Challenges Encountered

- No cleanup was required because only one backup file existed.

Resolution

- Verified that the script correctly detected the number of backup files and skipped deletion when unnecessary.

DevOps Lesson Learned

Backup automation should include retention policies to prevent storage from filling up. Scripts should also avoid deleting files unnecessarily by checking conditions first.
