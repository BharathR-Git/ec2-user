#!/bin/bash

# echo "Restrict and Print the message"

if [ $# -ne 3 ];then	
	echo "Error: Pass three arguments to the script"
exit 1
fi

echo "Find the biggest of three numbers"

if [ $1 -gt $2 ] && [ $1 -gt $3 ];then
	echo "$1 is big"
elif [ $2 -gt $1 ] && [ $2 -gt $3 ];then
	echo "$2 is big"
else echo "$3 is big"
fi
   
