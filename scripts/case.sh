#!/bin/bash

echo "Script to check numbers using case"

case $1 in 
	1) echo "This is one"
		;;
	2) echo "This is two"
		;;
	3) echo "This is three"
		;;
	*) echo "This is invalid"
		;;
esac

