#!/bin/bash

echo "Enter the name of file or directory"
read name

if [ -f $name ]; then
    echo "The given input is a File"
    
    if [ -r $name ]; then
        echo "The file $name has read permission"
    else
        echo "The file $name doesnot have read permission"
    fi

    if [ -w $name ]; then
        echo "The file $name has write permission"
    else
        echo "The file $name doesnot have write permission"
    fi

    if [ -x $name ]; then
        echo "The file $name has executable permission"
    else
        echo "The file $name doesnot have executable permission"
    fi
     if [ -s $name ]; then
        echo "The file $name has has some data"
    else
        echo "The file $name doesnot have the data"
    fi
     if [ -e $name ]; then
        echo "The file $name has exitsin the server"
    else
        echo "The file $name doesnot exit in the server "
    fi



elif [ -d $name ]; then
    echo "The given input is a Directory"
else
    echo "File or Directory does not exist"
fi
