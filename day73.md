Day 73 – File Existence Checker

What I Learned

- Used the "-f" test operator to check whether a file exists.
- Stored multiple file paths in a Bash array.
- Used a "for" loop to check each file automatically.
- Used "basename" to display only the filename instead of the full path.

Challenges Encountered

- The script reported that "day73.md" was missing, which was expected because I had not created it yet.

Resolution

- I verified that the script correctly detected existing files and identified missing ones. After creating "day73.md", the script can be run again to confirm that it is found.

DevOps Lesson Learned

Before running deployments or automation, engineers often verify that required files exist. Automating these checks reduces errors and saves time.

