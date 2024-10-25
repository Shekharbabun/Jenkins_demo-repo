#!/bin/bash

echo "Enter the number"
read n

sum=0

while [ $n -gt 1 ]
do
    mod=$(($n%2))
    if [ $mod -eq 0 ];
    then
        even=$(($sum + $n))
    fi
    n=$(($n-1))
done

echo "The sum of even numbers is $sum"

while [ $n -gt 1 ]
do
    mod=$(($n%3))
    if [ $mod -eq 0 ];
    then
        odd=$(($sum + $n))
    fi
    n=$(($n))
done

echo "The sum of odd numbers is $sum"

