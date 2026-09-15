#!/bin/bash
# Basic Unix Commands

echo "Current date and time:"
date

echo
echo "Current directory:"
pwd

echo
echo "Files and folders:"
ls

echo
echo "Current user:"
whoami

echo
echo "First 10 lines of /etc/passwd:"
head -n 10 /etc/passwd

echo
echo "Last 10 lines of /etc/passwd:"
tail -n 10 /etc/passwd

echo
echo "Calendar:"
cal
