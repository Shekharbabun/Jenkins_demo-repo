#!/bin/bash

echo "Enter the number"
read n

fact=1

while [ $n -gt 1 ]
do
    fact=$(($fact * $n))
    ((n--))
done

echo "The factorial of the number is $fact"

