#!/bin/bash

echo "Script to add numbers"

sum=0
#for i in 1 2 3 4 5
for i in $*
do
	sum=`expr $sum + $i`
done

echo "Sum of $*"
echo "Sum= $sum"
