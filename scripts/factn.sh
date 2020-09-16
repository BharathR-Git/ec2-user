#!/bin/bash

echo "Scrpit to find factorial of n numbers"

for i in $*
do
	fact=1
	num=$i
	while [ $num -gt 1 ]
	do
		fact=`expr $fact \* $num`
		num=`expr $num - 1`
	done

#echo "Numbers are $*"
echo "factorial of $i is $fact"
done
