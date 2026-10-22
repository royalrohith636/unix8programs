#!/bin/bash
# Program 09: Terminal Lock

CP="my pass"

echo "======================"
echo "     TERMINAL LOCK"
echo "======================"
echo "Terminal Locked"
read -n 1 -r -s -p "Press any key to continue..."
echo

read -r -s -p "Enter Password: " Pass
echo

if [ "$Pass" = "$CP" ]; then
    echo "Terminal Unlocked"
else
    echo "Wrong Password"
fi
