#!/bin/bash
# Check command-line arguments and count lines in files

if [ "$#" -eq 0 ]; then
    echo "Usage: $0 <file_or_directory> [file_or_directory ...]"
    exit 1
fi

for item in "$@"; do
    if [ -f "$item" ]; then
        lines=$(wc -l < "$item")
        echo "$item is a file with $lines lines."
    elif [ -d "$item" ]; then
        echo "$item is a directory."
    else
        echo "$item is not a valid file or directory."
    fi
done
