#!/bin/bash

echo "Script to ADD numbers"


num=$1
sum=0

set -x #debug a shell script(Display output in step-by=step)

while [ $num -gt 0 ]
do
	sum=`expr $sum + $num`
	num=`expr $num - 1`
done

echo " Sum= $sum"
