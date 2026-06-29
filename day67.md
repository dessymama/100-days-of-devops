Day 67 – Error Counter with grep

What I Learned

- Used "grep -c" to count matching lines in a log file.
- Learned command substitution using "$(...)".
- Stored a command's output in a variable.
- Used numeric comparison ("-eq") to make decisions.

Challenges Encountered

- I needed to understand how to count log entries instead of displaying them.

Resolution

- I used "grep -c" to count the number of "ERROR" entries and stored the result in a variable for comparison.

DevOps Lesson Learned

Monitoring is not just about finding errors—it is also about measuring them. Counting errors helps engineers determine the health of systems and decide when action is required.
