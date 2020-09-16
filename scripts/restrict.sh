#!/bin/bash

#echo "How to restrict and print the message"

if [ $# -ne 2 ];then
 	echo "Error: Pass two arguments to the script"
exit 1 # exit from script from exit status 1
fi

echo "Check the two biggest number"

if [ $1 -gt $2 ];then
	echo "$1 is big"
else 
	echo "$2 is big"
fi
