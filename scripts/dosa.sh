#!/bin/bash

while [ 1 ]
do

echo "1.masala dosa Rs.50/plate"
read n1
echo "2.set dosa Rs.40/plate"
read n2
echo "3.ragi dosa Rs.30/plate"
read n3
echo "press 1 to total no. of items"

md=50
sd=40
rd=30

read ch
case $ch in
        1)items=`expr $n1 + $n2 + $n3`
                p1=`expr $md \* $n1`
                p2=`expr $sd \* $n2`
                p3=`expr $rd \* $n3`
                price=`expr $p1 + $p2 + $p3`
                echo "Amount= $price"
		echo "Totalitems= $items"
                ;;

        *) exit 1
                ;;
esac
break
done

