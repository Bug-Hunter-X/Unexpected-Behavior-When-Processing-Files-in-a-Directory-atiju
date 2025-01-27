# Shell Script Bug: Directory Handling

This repository demonstrates a common error in shell scripts when processing files within a directory. The script attempts to process all files and subdirectories. The issue lies in how it handles directories found within the main directory; it prints a message when encountering a directory but doesn't recursively handle its contents. This can lead to incomplete processing or unexpected behavior if subdirectories contain files that should also be processed.

## Bug Description:
The script incorrectly handles directories by outputting a message about the directory. The solution addresses this by recursively handling subdirectories for a complete file processing solution.

## How to Reproduce:
1. Clone the repository.
2. Create a directory structure (e.g., `testdir` with subdirectories containing files).
3. Run the `bug.sh` script, passing the `testdir` directory as a command-line argument.
4. Observe the incorrect handling of directories.

## Solution:
The `bugSolution.sh` script provides a corrected approach to handle both files and subdirectories recursively.