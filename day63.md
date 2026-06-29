Day 63 – File Scanner Automation

What I Learned

- Used a "for" loop to process multiple files automatically.
- Used the "*.txt" wildcard to match all text files.
- Checked whether each item was a regular file using "-f".
- Used "basename" to display only the filename.
- Counted files using a Bash counter.

Challenges Encountered

- There were many text files in the project, so I needed a way to process them automatically instead of one by one.

Resolution

- I used a "for" loop with a wildcard pattern and a counter variable to scan every text file and display a summary at the end.

DevOps Lesson Learned

Automation becomes more powerful when scripts can work on many files at once. This approach is useful for backups, log analysis, deployments, and system maintenance.
