#!/bin/bash

i=1

while read line
do
    if [ $i -ne 1 ]; then
        age=`echo $line | cut -d " " -f3`
        if [ $age -ge 25 ]; then
            echo $line | cut -d " " -f1
        fi
    else
        ((i++))
    fi
done 
