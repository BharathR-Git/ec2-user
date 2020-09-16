#!/bin/bash

echo "Script to Display the script on console without using cat command"

while read line
do
echo $line
done < $1
