#!/bin/bash

find -maxdepth 1 -type f -name "*.py" > temp

while read file
do
    dest_file=`echo $file | sed 's/py/txt/g'`
    mv $file $dest_file
done < temp

rm temp
