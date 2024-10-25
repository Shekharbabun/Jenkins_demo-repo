#!/bin/bash

echo "Enter the number"
read n

sum=0

while [ $n -gt 1 ]
do
    mod=$(($n%2))
    if [ $mod -eq 0 ]; then
        sum=$(($sum + $n))
    fi
    n=$(($n-1))
done

echo "The sum of even numbers is $sum"

