Day 87 – Active User Session Report

What I Learned

- Used "whoami" to identify the current user.
- Learned that the "who" command is not available in my Termux environment.
- Used "command -v" to check whether a command exists before running it.
- Improved the script to handle different Linux environments gracefully.

Challenges Encountered

- The script initially failed because the "who" command was not installed in Termux.

Resolution

- Updated the script to verify the availability of the "who" command before executing it, preventing runtime errors.

DevOps Lesson Learned

Reliable automation should detect differences between environments and handle missing tools gracefully. Writing portable Bash scripts improves compatibility across Linux distributions and platforms.
