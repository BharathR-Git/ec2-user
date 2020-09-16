#!/bin/bash

while [ 1 ]
do

echo "1.Upma Rs.15/plate"
read n1
echo "2.Poori Rs.50/plate"
read n2
echo "3.pongal Rs.30/piece"
read n3
echo "press 1 to total no. of items"
up=15
po=50
pg=30
read ch
case $ch in
        1)items=`expr $n1 + $n2 + $n3`
		p1=`expr $up \* $n1`
                p2=`expr $po \* $n2`
                p3=`expr $pg \* $n3`
                price=`expr $p1 + $p2 + $p3`
                echo "Amount= $price"
                echo "Totalitems= $items"
                ;;

        *) exit 1
                ;;
esac
break
done

