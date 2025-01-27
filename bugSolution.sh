#!/bin/bash

# Get the directory name from the command-line argument
directory=$1

# Check if the directory is provided
if [ -z "$directory" ]; then
  echo "Usage: $0 <directory>" >&2
  exit 1
fi

# Recursive function to process files and subdirectories
process_files() {
  local dir="$1"
  for file in "$dir"/*; do
    if [ -f "$file" ]; then
      echo "Processing file: $file"
    elif [ -d "$file" ]; then
      echo "Processing directory: $file"
      process_files "$file"
    fi
  done
}

# Start processing from the provided directory
process_files "$directory"