#!/bin/bash

# log the session start
echo "$(date) - $USER ran main.sh" >>search_log.txt 

while true; do
    echo ""
    echo "==== Linux Management System ===="
    echo "1) Login Session"
    echo "2) Add New User"
    echo "3) Search Logs"
    echo "4) Show System Info"
    echo "5) Backup /home"
    echo "6) List Groups"
    echo "7) Exit"
    echo "================================"
    read -p "Enter your choice [1-7]: " choice

    case $choice in
        1)bash login.sh ;;
        2)bash add_user.sh ;;
        3)bash search_logs.sh ;;
        4)bash system_info.sh ;;
        5)bash backup_home.sh ;;
        6)bash list_group.sh ;;
        7)
            echo "Exiting... Goodbye!"
            exit 0
            ;;
        *)
            echo "Invalid option. Please choose between 1 and 7."
            ;;
    esac
done
