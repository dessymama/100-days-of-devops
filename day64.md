Day 64 – Backup Automation

What I Learned

- Used "cp" to copy multiple files.
- Used a wildcard ("*.txt") to back up all text files.
- Checked whether a directory existed before creating it.
- Verified the backup using "ls".

Challenges Encountered

- I expected the script to create the backup folder, but it didn't display the "Backup folder created" message.

Resolution

- I realized the backup folder already existed from a previous exercise, so the script correctly skipped creating it and continued with the backup.

DevOps Lesson Learned

Good automation scripts should check existing resources before creating them. This prevents unnecessary work and makes scripts safe to run multiple times.
