#!/bin/bash

mem=`df -h . | tail -1 | awk -F " " '{print $(NF-1)}' | sed 's/%//g'`

if [ $mem -gt 10 ];then

echo -e "Hi\n Memory reached $mem,Please take approriate action\n Thanks"
# | mailx -s "Memory reached $mem" -c "bharathramachandra91@yahoo.in" bharathramachandra91@gmail.com
fi
