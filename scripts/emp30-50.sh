#!/bin/bash

echo "Script to get employee names between age 30 to 50 "

sed '1d' $1 > temp

while read line
do
        age=`echo $line | awk -F " " '{print$3}'`

#if [ $age -ge 30 ] && [ $age -le 50 ];then

if [ $age -ge $2 ] && [ $age -le $3 ];then

        echo $line | awk -F " " '{print$1,$2,$3}'
fi
done < temp
rm temp
