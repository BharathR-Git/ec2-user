#!/bin/bash

echo "Script to Print line no. and count no. of characters"


num=1

echo "linenumber :  characters"

while read line
do

char=`echo $line | wc -c`
echo "  $num        :    $char"

num=`expr $num + 1`
done < $1
