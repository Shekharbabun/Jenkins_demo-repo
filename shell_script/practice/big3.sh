#!/bin/bash

echo "Enter Num1"
read num1
echo "Enter Num2"
read num2
echo "Enter Num3"
read num3
 
if [ $num1 -gt $num2 ] && [ $num1 -gt $num3 ]
then
    echo $num1 is the biggest
elif [ $num2 -gt $num3 ]
then
    echo $num2 is the biggest
else
    echo $num3 is the biggest
fi
