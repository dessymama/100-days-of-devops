Day 66 – Log Search with grep

What I Learned

- Learned how to search log files using "grep".
- Used the "-i" option to perform case-insensitive searches.
- Accepted user input with "read".
- Used "grep" inside an "if" statement to determine whether a keyword exists.

Challenges Encountered

- On my first attempt, I pressed Enter without typing a keyword, so the script searched for an empty string and displayed every log entry.

Resolution

- I realized that an empty search matches every line. After entering valid keywords like "ERROR", "INFO", "WARNING", and "nginx", the script behaved as expected.

DevOps Lesson Learned

Searching logs quickly with "grep" is an essential Linux troubleshooting skill. It allows engineers to locate errors, warnings, and important events without reading entire log files.
