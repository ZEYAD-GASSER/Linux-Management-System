#!/bin/bash
# Let's add user for system and option to add this user to group

echo "$(date) - [$USER] ran script :$0 " >> search_log.txt
read -rp "Please enter the name for new user: " NewUser
NewUser_afterTransfom=$(echo "$NewUser" | tr ' ' '-')

if [ "$NewUser_afterTransfom" = "$(cut -d ':' -f 1 /etc/passwd | grep "^$NewUser_afterTransfom$")" ]; then 
    echo "This user already in system "

else
    echo $(sudo useradd -m -s /bin/bash -G sudo "$NewUser_afterTransfom")
    echo "Successful add, thanks !!"
    read -p "Do you like to add user to group? please enter yes/no: " check

    if [ "$check" = "yes" ]; then
        echo "I will display all groups to choose from!!"
        sleep 1
        sudo cut -d ':' -f 1 /etc/group
        read -p "Please enter group name: " groupName

        if [ "$groupName" = "$(cut -d ':' -f 1 /etc/group | grep "^$groupName$")" ]; then
            sudo usermod -a -G "$groupName" "$NewUser_afterTransfom" 
            echo "Successful add to group $groupName"
        else
            echo "This group is not found"
        fi
    else 
        echo "OK, thanks to you !!"
    fi
fi
