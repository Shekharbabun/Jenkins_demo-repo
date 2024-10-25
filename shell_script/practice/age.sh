#!/bin/bash

sed 1d table > temp.txt

while read line
do
    age=`echo $line | cut -d " " -f3`
    if [ $age -ge 25 ]; then
        echo $line | cut -d " " -f1
    fi
done < age.txt

rm age.txt
