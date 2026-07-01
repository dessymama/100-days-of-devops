Day 97 – System Cleanup Report

Overview

Built a Bash script to automatically detect and clean log files while generating a cleanup summary.

---

📌 What I Learned

- Used "find" to search for log files.
- Counted matching files using "wc -l".
- Automated cleanup using the "-delete" option.
- Generated a simple cleanup report after execution.

---

⚠️ Issues Encountered

- The number of log files can vary depending on previous script executions.

---

🛠️ Resolution

- Counted log files before and after cleanup to verify that the cleanup process completed successfully.

---

📚 DevOps Lesson Learned

Automated cleanup scripts help prevent unnecessary disk usage and are an important part of routine Linux system maintenance.

---

🚀 Summary

Successfully built an automated Bash cleanup script that detects, removes, and reports log file cleanup operations.
