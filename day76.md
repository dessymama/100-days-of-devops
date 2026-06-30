Day 76 – Process Monitor

What I Learned

- Used "pgrep" to check whether a process is running.
- Used "> /dev/null" to suppress unnecessary command output.
- Used an "if" statement to determine whether a process exists.
- Monitored multiple processes using a Bash array and a "for" loop.

Challenges Encountered

- Some processes, such as "ssh" and "nginx", were not running in my Termux environment.

Resolution

- I confirmed that the script correctly identified running and non-running processes based on the current environment.

DevOps Lesson Learned

Monitoring running processes is an essential part of system administration. Automating these checks helps engineers quickly detect service failures and maintain system reliability.
