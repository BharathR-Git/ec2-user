#!/bin/bash

echo "Varities of idlli"

while [ 1 ]
do

echo "1.rava idli Rs.15/piece"
read n1
echo "2.rice idli Rs.10/piece"
read n2
echo "3.ragi idli Rs.15/piece"
read n3
echo "press 1 to total no. of items"

rava=15
ragi=15
rice=10

read ch
case $ch in
	1)items=`expr $n1 + $n2 + $n3`
		#price=$(($rava \* $n1)+ ($ragi \* $n2) + ($rice \* $n2))
		p1=`expr $rava \* $n1`
		p2=`expr $rice \* $n2`
	        p3=`expr $ragi \* $n3`
		price=`expr $p1 + $p2 + $p3`
		echo "Amount= $price"
		echo "Totalitems= $items"
		;;
		
	*) exit 1
		;;
esac
break
done


