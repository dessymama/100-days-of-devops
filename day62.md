Day 62 – Linux File Permissions

What I Learned

- Learned how to view file permissions using "ls -l".
- Used "chmod +x" to make a script executable.
- Learned the difference between "644" and "755" permissions.
- Used the "-x" test to check whether a file is executable.

Challenges Encountered

- After changing the script permission to "644", I received a "Permission denied" error when trying to execute it.

Resolution

- I understood that "644" removes the execute permission. I restored execution by changing the permission back to "755", and the script worked again.

DevOps Lesson Learned

Correct file permissions are essential for Linux security and automation. A script must have execute permission before it can run.
