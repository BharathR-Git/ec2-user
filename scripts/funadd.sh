#!/bin/bash

echo "Script to Add numbers using function"

function addnum(){
	sum=0
	sum=`expr $1 + $2`
	echo "sum of $1 and $2 is $sum"
}
num1=$1
num2=$2
addnum $num1 $num2
