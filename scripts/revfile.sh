#!/bin/bash

echo "Script to reverse a file"

file=$1
lines=`cat $file | wc -l`

while [ $lines -gt 0 ]
do
	sed -n '$linesp' $file  >> rev_file
	#head -$lines $1 | tail -1 >> rev_file
	lines=`expr $lines - 1`
done
cat rev_file
rm rev_file

