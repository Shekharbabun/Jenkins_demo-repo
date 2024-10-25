#!/bin/bash

num1=$1
num2=$2

sum=`expr $num1 + $num2`
sub=`expr $num1 - $num2`
mult=`expr $num1 \* $num2`
div=`expr $num1 / $num2`
mod=`expr $num1 % $num2`

echo "The sum of two numbers is $sum"
echo "The difference of two numbers is $sub"
echo "The product of two numbers is $mult"
echo "The division of two numbers is $div"
echo "The modulus of two numbers is $mod"
