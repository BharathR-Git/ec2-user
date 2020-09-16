#!/bin/bash

echo "search word"

read word
grep -R -l "$word" * > log
#check whether file exist or not
if [ $? -eq 0 ];then
echo "$word exists"
cat log
rm log
else
echo "$word doesn't exists"
fi

