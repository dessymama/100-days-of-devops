Day 98 – Process Monitor

Overview

Built a Bash script to monitor running processes, identify the top CPU-consuming processes, and generate a timestamped monitoring report.

---

📌 What I Learned

- Used "ps" to inspect running processes.
- Counted active processes using "wc -l".
- Sorted processes by CPU usage.
- Generated timestamped monitoring reports for future reference.

---

⚠️ Issues Encountered

- Process counts and CPU usage change continuously depending on system activity.

---

🛠️ Resolution

- Used live process information from "ps" so the script always reports the current system state.

---

📚 DevOps Lesson Learned

Monitoring running processes helps administrators identify resource-intensive applications and troubleshoot performance issues before they impact production systems.

---

🚀 Summary

Successfully built an automated Bash process monitoring tool that reports running processes and highlights the highest CPU consumers.
