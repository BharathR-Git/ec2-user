#!/bin/bash

echo "Program to Find Fibonacci Series"

echo "How many number of terms to be generated ?"
read n 
sum=0
num=1
i=2
 
echo "Fibonacci Series up to $n terms :"
echo "$sum"
echo "$num"
while [ $i -lt $n ]
do
	i=`expr $i + 1`
	fib=`expr $sum + $num`
      echo "$fib"
      sum=$num
      num=$fib
      
done
