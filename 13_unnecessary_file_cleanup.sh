#!/bin/bash
# Program 13: Find Unnecessary Temporary Files (safe preview)

temp_dir="/tmp"
backup_dir="backup"

if [ ! -d "$backup_dir" ]; then
    echo "Backup directory does not exist. Creating it..."
    mkdir -p "$backup_dir" || exit 1
else
    echo "Backup directory already exists."
fi

echo "Temporary .tmp files found in $temp_dir:"
find "$temp_dir" -type f -name "*.tmp" -print

# This program only lists files; it does not delete them.
echo "Preview completed. No files were deleted."
