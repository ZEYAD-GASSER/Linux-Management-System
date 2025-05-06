#!/bin/bash
# This script is to ensure the user exists and check password
echo "$(date) - [$USER] ran script :$0 " >> search_log.txt
echo "Welcome to the Linux system"
read -p "Please enter username: " UserName

CheckUserName=$(cut -d ':' -f 1 /etc/passwd | grep "^$UserName$")

if [ "$UserName" = "$CheckUserName" ]
 then
    echo "Welcome Mr.$UserName please enter password"

    while true; do
        read -sp "Password: " Password
	echo
        if [ "zezo" = "$Password" ]
 then
            echo "Welcome in your account"
            break
        else
            echo "Wrong password, try again."
        fi
    done

else
    echo "User not found!"
fi



