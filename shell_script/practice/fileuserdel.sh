#!/bin/bash

while read user
do
    sudo userdel $user
    echo "$user has been deleted"
done < users.txt
