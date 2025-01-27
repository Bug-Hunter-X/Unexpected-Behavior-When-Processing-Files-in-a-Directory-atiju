#!/bin/bash

# This script attempts to process files in a directory,
# but it contains a subtle error that can lead to unexpected behavior.

# Get the directory name from the command-line argument
directory=$1

# Check if the directory is provided
if [ -z "$directory" ]; then
  echo "Usage: $0 <directory>" >&2
  exit 1
fi

# Loop through the files in the directory
for file in $directory/*; do
  # Check if it is a regular file
  if [ -f "$file" ]; then
    # Process the file (example: print the filename)
    echo "Processing: $file"
  fi
  # This is the problem; should be done only when it's a directory
  if [ -d "$file" ]; then
    echo "Found directory: $file"
  fi
done