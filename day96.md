Day 96 – Automatic Log Rotation

Overview

Built a Bash script to automatically archive an existing log file with a timestamp and create a new empty log file for continued logging.

---

📌 What I Learned

- Used "mv" to archive log files.
- Created timestamped filenames to prevent overwriting previous logs.
- Used "touch" to generate a new empty log file.
- Organized archived logs into a dedicated directory.

---

⚠️ Issues Encountered

- The log file may not exist during the first execution.

---

🛠️ Resolution

- Added a check to create a sample log file if none exists before performing log rotation.

---

📚 DevOps Lesson Learned

Log rotation prevents log files from growing indefinitely and is an essential maintenance practice for production Linux servers.

---

🚀 Summary

Successfully built an automated Bash log rotation script that archives logs and prepares a fresh log file for future system events.
