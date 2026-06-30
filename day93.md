Day 93 – Directory Backup Automation

What I Learned

- Used the "tar" command to create compressed directory backups.
- Created timestamped archive filenames automatically.
- Generated backup directories when they did not already exist.
- Verified successful backup creation after compression.

Challenges Encountered

- The "tar" command displayed the message: "Removing leading '/' from member names."

Resolution

- Learned that this is normal behavior. "tar" removes leading slashes from absolute paths to make archives safer to extract and it does not indicate a backup failure.

DevOps Lesson Learned

Automated directory backups are essential for protecting important project files. Compressing backups reduces storage usage while making it easy to restore data when needed.
