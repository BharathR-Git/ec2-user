#!/bin/bash

echo "Script to print Line number before each line of a file"

while read line
do
	echo $line |  grep -n '^' $1
break
done < $1
 
