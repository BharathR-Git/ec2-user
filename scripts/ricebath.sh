#!/bin/bash


while [ 1 ]
do

echo "1.tomato rice Rs.15/plate"
read n1
echo "2.lemon rice Rs.10/plate"
read n2
echo "3.palav Rs.30/plate"
read n3

tr=15
lr=10
pl=30

echo "press 1 to total no. of items"
read ch
case $ch in
        1)items=`expr $n1 + $n2 + $n3`
		p1=`expr $tr \* $n1`
                p2=`expr $lr \* $n2`
                p3=`expr $pl \* $n3`
                price=`expr $p1 + $p2 + $p3`
                echo "Amount= $price"
                echo "Totalitems= $items"
                ;;

        *) exit 1
                ;;
esac
break
done

