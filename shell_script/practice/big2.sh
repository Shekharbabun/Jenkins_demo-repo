#!/bin/bash

num1=$1
num2=$2

if [ $# -ne 2 ];
 then
    echo "Error!! Pass two arguments to the script"
elif [ $num1 -eq $num2 ];
 then
    echo "Both Numbers are equal"
elif [ $num1 -gt $num2 ];
 then
    echo "$num1 is the greatest"
else
    echo "$num2 is the greatest"
fi


