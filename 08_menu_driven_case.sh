#!/bin/bash
# Menu Driven Shell Program using case

while true; do
    echo
    echo "===== UNIX MENU ====="
    echo "1. Show current date and time"
    echo "2. Show current directory"
    echo "3. List files"
    echo "4. Show current user"
    echo "5. Exit"
    echo

    read -p "Enter your choice: " choice

    case "$choice" in
        1)
            date
            ;;
        2)
            pwd
            ;;
        3)
            ls
            ;;
        4)
            whoami
            ;;
        5)
            echo "Exiting..."
            break
            ;;
        *)
            echo "Invalid choice. Please try again."
            ;;
    esac
done
