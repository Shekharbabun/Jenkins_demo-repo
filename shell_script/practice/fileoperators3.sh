#!/bin/bash
 
echo "Enter the name of file or directory"
read name
 
if [ -f $name ]; 
 then
    if [ -L $name ];
 then
        echo "The given file is a symbolic link"
    else    
        echo "The given input is a File"
elif [ -d $name ];
 then
    echo "The given input is a Directory"
else
    echo "File, Directory or symbolic link does not exist"
fi
