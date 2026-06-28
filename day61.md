Day 61 – File and Directory Automation

What I Learned

- Learned how to check if a directory exists using "-d".
- Created directories automatically with "mkdir".
- Wrote log entries to a file using ">>".
- Displayed file contents with "cat".
- Used "$(date)" to record timestamps in log files.

Challenges Encountered

- I initially saved only part of my script, so it stopped after displaying the header and did not create the directory or log file.

Resolution

- I inspected the script using "cat day61.sh", discovered that the rest of the code had not been saved, completed the script, and tested it twice to verify that log entries were appended correctly.

DevOps Lesson Learned

Automation isn't just about writing scripts—it also means validating that they work correctly. Logging operations with timestamps makes troubleshooting and monitoring much easier.
