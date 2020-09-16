#!/bin/bash

echo "Check the given name is file/directory/link"

read name

if [ -f $name ];then
	echo "$name is a file"

elif [ -d $name ];then
	echo "$name is a directory"

elif [ -L $name ];then
	echo "$name is a link"

else echo "$name do not exist"
fi
