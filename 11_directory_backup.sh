#!/bin/bash
# Program 11: Directory Backup

source_dir=${1:-.}
backup_dir=${2:-backup}

if [ ! -d "$source_dir" ]; then
    echo "Error: source directory '$source_dir' does not exist."
    exit 1
fi

# Avoid copying the backup directory into itself.
source_abs=$(cd "$source_dir" 2>/dev/null && pwd -P) || exit 1
mkdir -p "$backup_dir" || exit 1
backup_abs=$(cd "$backup_dir" 2>/dev/null && pwd -P) || exit 1

case "$backup_abs/" in
    "$source_abs/"*)
        echo "Error: backup directory must not be inside the source directory."
        exit 1
        ;;
esac

cp -r "$source_dir" "$backup_dir/" || {
    echo "Backup failed."
    exit 1
}

echo "Backup of source '$source_dir' completed in '$backup_dir'."
