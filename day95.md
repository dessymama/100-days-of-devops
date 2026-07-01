# Day 95 – Service Status Report

## Overview
Built a Bash script to check the availability of common system commands and generate a service status report for system validation and readiness checks.

---

## 📌 What I Learned
- Used `command -v` to check if system commands are installed and available.
- Automated validation of multiple services/tools using a Bash loop.
- Improved script portability across different environments (Linux/Termux).
- Generated structured output for system readiness reporting.

---

## ⚠️ Issues Encountered
- Some commands (e.g., `ssh`) may not be available in all environments by default.
- Initial assumption that all services exist caused incomplete or inconsistent reporting.

---

## 🛠️ Resolution
- Replaced direct service checks with `command -v` validation.
- This ensured the script does not fail when a command is missing.
- Improved reliability by making checks environment-independent.

---

## 📚 DevOps Lesson Learned
In real DevOps environments, tools and services may not always be installed. Writing scripts that safely check for availability before execution improves reliability, portability, and prevents runtime errors.

---

## 🚀 Summary
Successfully built an automated service validation script that checks system tools and generates a structured readiness report.
