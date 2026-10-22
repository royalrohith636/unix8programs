#!/bin/bash
# Program 14: Calculate SHA-256 Checksum

file="$1"

if [ -z "$file" ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

if [ -f "$file" ]; then
    echo "Calculating checksum of '$file':"
    if command -v sha256sum >/dev/null 2>&1; then
        sha256sum -- "$file"
    elif command -v shasum >/dev/null 2>&1; then
        shasum -a 256 -- "$file"
    else
        echo "Error: neither sha256sum nor shasum is available."
        exit 1
    fi
else
    echo "Error: '$file' does not exist or is not a regular file."
    exit 1
fi
