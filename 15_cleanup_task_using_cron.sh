#!/bin/bash
# Program 15: Cleanup Task (can be scheduled with cron)
# WARNING: This script deletes matching files under /tmp.
# Review the patterns and test in a safe directory before scheduling.

cleanup_dir="/tmp"
log_file="$HOME/cleanup.log"
patterns=("*.tmp" "*~" "*.bak")
deleted_count=0

log_msg() {
    printf '%s - %s\n' "$(date '+%Y-%m-%d %H:%M:%S')" "$*" >> "$log_file"
}

log_msg "Cleanup started"

if [ ! -d "$cleanup_dir" ]; then
    log_msg "Directory $cleanup_dir does not exist"
    echo "Error: directory $cleanup_dir does not exist."
    exit 1
fi

for pattern in "${patterns[@]}"; do
    while IFS= read -r -d '' file; do
        if rm -- "$file"; then
            log_msg "Deleted $file"
            ((deleted_count += 1))
        else
            log_msg "Failed to delete $file"
        fi
    done < <(find "$cleanup_dir" -type f -name "$pattern" -print0)
done

log_msg "Cleanup completed. Total files deleted: $deleted_count"

echo "Cleanup completed."
echo "Total files deleted: $deleted_count"
echo "Log file: $log_file"
