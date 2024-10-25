#!/bin/bash

echo "Enter the name of file or directory"
read name

if [ -f $name ];
 then
    echo "The given input is a File"
elif [ -d $name ]; 
then
    echo "The given input is a Directory"
else
    echo "File or Directory does not exist"
fi
