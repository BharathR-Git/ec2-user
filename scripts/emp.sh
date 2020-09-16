#!/bin/bash


echo "Script to get employee names to if age is more than 50 "

sed '1d' $1 > temp

while read line
do
	age=`echo $line | awk -F " " '{print$3}'`

if [ $age -gt 50 ];then
	echo $line | awk -F " " '{print$1,$2,$3}'
fi
done < temp
rm temp
