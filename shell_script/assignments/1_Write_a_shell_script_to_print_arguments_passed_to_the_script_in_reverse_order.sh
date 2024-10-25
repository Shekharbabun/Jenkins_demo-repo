#!/bin/bash

count=$#

if [ "$#" -eq 0 ];
then
    echo "No arguments provided."
    exit 1
fi


while [ $count -gt 0 ];
do
    echo "${!count}"
    ((count--))
done

