#!/bin/bash
# Check Whether a Year is a Leap Year

read -p "Enter a year: " year

if ! [[ "$year" =~ ^[0-9]+$ ]]; then
    echo "Please enter a valid year."
    exit 1
fi

if (( year % 400 == 0 || (year % 4 == 0 && year % 100 != 0) )); then
    echo "$year is a leap year."
else
    echo "$year is not a leap year."
fi
