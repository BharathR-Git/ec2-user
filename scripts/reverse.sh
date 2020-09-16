#!/bin/bash

echo "Script to reverse a string or word"

str=$*
len=`echo $str | wc -c`
len=`expr $len - 1`
rev=""
while [ $len -gt 0 ]
do
	rev1=`echo $str | cut -c$len`
	rev=$rev$rev1
	len=`expr $len - 1`
done
echo "$rev"
