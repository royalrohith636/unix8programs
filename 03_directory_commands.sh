#!/bin/bash
# Directory Related Commands

# Create a directory
mkdir unix_demo

# Enter the directory
cd unix_demo || exit 1

# Create a file inside the directory
touch file1.txt

# Display directory contents
ls

# Go back to the parent directory
cd ..

# Copy the directory recursively
cp -r unix_demo unix_demo_copy

# Remove the copied directory
rm -r unix_demo_copy

# Display current directory
pwd

# Remove the original directory
rm -r unix_demo

echo "Directory operations completed."
