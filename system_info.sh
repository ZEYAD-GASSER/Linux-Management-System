#!/bin/bash
echo "$(date) - [$USER] ran script :$0 " >> search_log.txt
echo "1) INFO ABOUT CPU"
echo "2) INFO ABOUT Memory"
echo "3) INFO ABOUT Disk Size"
echo "4) All"
echo -e "\n"

read -p "Choose what information you need: " numChoice

case "$numChoice" in
    1)
        echo -e "\n===== CPU INFO ====="
        lscpu
        ;;
    2)
        echo -e "\n===== MEMORY INFO ====="
        free -h
        ;;
    3)
        echo -e "\n===== DISK INFO ====="
        df -h
        ;;
    4)
        echo -e "\n===== CPU INFO ====="
        lscpu
        echo -e "\n===== MEMORY INFO ====="
        free -h
        echo -e "\n===== DISK INFO ====="
        df -h
        ;;
    *)
        echo "UNKNOWN NUMBER"
        ;;
esac
