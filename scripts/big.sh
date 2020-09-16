#!/bin/bash

echo "Script to find biggest no. from given set of nos."

big=$1

for i in $*
do
	if [ $big -lt $i ];then
		big=$i
	fi
done

echo "Numbers are $*"
echo "Biggest= $big"
