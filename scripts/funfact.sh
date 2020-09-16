#!/bin/bash

echo "Script to find factorial of a number using function"

function funfact (){
	num=$1
	fact=1
	while [ $num -gt 1 ]
	do
		fact=`expr $fact \* $num`
		num=`expr $num - 1`
	done
	echo "Factorial is $fact"
}
for i in $*
do
	funfact $i
done
