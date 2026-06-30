Day 69 – Memory Usage Monitor

What I Learned

- Used "free -h" to display memory usage in a human-readable format.
- Used "free -m" to display memory values in megabytes.
- Extracted available memory using "awk".
- Compared numeric values using "-lt" to determine if available memory was low.

Challenges Encountered

- I needed to understand the different memory columns shown by the "free" command and identify which value represented available memory.

Resolution

- I used "awk" to extract the available memory column and stored it in a variable for comparison.

DevOps Lesson Learned

Monitoring memory usage helps identify potential performance issues before applications become slow or unstable. Automating these checks is an important part of maintaining healthy systems.
