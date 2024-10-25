#!/bin/bash


if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <userfile>"
    exit 1
fi

USERFILE=$1


if [ ! -f "$USERFILE" ]; 
then
    echo "File not found: $USERFILE"
    exit 1
fi

while IFS= read -r username; do
   
    if id "$username" &>/dev/null;
    then

        usermod -aG sudo "$username"
        echo "Granted sudo permissions to $username"
    else
        echo "User $username does not exist"
    fi
done < "$USERFILE"

