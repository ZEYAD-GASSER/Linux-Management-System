#!/bin/bash
echo "$(date) - [$USER] ran script :$0 " >> search_log.txt
read -p "To list the users in a specific group, please enter the group name: " groupname

if grep -q "^$groupname:" /etc/group; then
    echo -e "\nUsers in group [$groupname]:"
    grep "^$groupname:" /etc/group | cut -d: -f4 | tr ',' '\n'
    echo -e "\nThanks for using the script. Goodbye!"
else
    echo "The group name [$groupname] was not found!"
fi
