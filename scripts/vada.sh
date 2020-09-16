#!/bin/bash

while [ 1 ]
do

echo "1.masala vada Rs.50/plate"
read n1
echo "2.vada sambar Rs.40/plate"
read n2
echo "3.curd vada Rs.30/plate"
read n3

mv=50
vs=40
cv=30

echo "press 1 to total no. of items"
read ch
case $ch in
        1)items=`expr $n1 + $n2 + $n3`
		p1=`expr $mv \* $n1`
                p2=`expr $vs \* $n2`
                p3=`expr $cv \* $n3`
                price=`expr $p1 + $p2 + $p3`
		echo "Amount= $price"
                echo "Totalitems= $items"
                ;;

        *) exit 1
                ;;
esac
break
done

