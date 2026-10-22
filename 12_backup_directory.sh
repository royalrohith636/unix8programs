#!/bin/bash
# Program 12: Create/Check Backup Directory

backup_dir="backup"

if [ ! -d "$backup_dir" ]; then
    echo "Backup directory does not exist."
    mkdir -p "$backup_dir" || exit 1
    echo "Backup directory created successfully."
else
    echo "Backup directory already exists."
fi
