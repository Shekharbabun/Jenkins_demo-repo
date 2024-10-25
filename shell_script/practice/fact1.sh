#!/bin/bash

echo "Enter the number"
read n

fact=1
temp=$n

while [ $n -gt 1 ]
do
    fact=$(($fact * $n))
    ((n--))
done

echo "The factorial of $temp is $fact"
