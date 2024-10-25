#!/bin/bash

while read user
do
    sudo useradd $user
    echo "$user has been created"
done < users.txt
