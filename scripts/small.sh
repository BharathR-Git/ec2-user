#!/bin/bash

echo "Script to find smallest of given numbers"

small=$1
for i in $*
do
	if [ $small -gt $i ];then
		small=$i
	fi
done

echo "Numbers are $*"
echo "Smallest no. is $small"
