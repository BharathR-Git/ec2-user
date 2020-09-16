#!/bin/bash

while [ 1 ]
do

echo "1.Thali Rs.120/plate"
read n1
echo "2.South Indian meals Rs.100/plate"
read n2
echo "3.North Indian mealsRs.130/plate"
read n3
echo "press 1 to total no. of items"

sm=100
nm=130
th=120

read ch
case $ch in
        1)items=`expr $n1 + $n2 + $n3`
		p1=`expr $th \* $n1`
                p2=`expr $sm \* $n2`
                p3=`expr $nm \* $n3`
                price=`expr $p1 + $p2 + $p3`
                echo "Amount= $price"
                echo "Totalitems= $items"
                ;;

        *) exit 1
                ;;
esac
break
done

