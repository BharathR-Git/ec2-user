#!/bin/bash

echo "Print Hotel Devops Menu"

while [ 1 ]
do
	read list
	case $list in
		1)/home/ec2-user/scripts/idli.sh
			;;
		2)/home/ec2-user/scripts/ricebath.sh
			;;
		3)/home/ec2-user/scripts/breakfast.sh
			 ;;
		4)/home/ec2-user/scripts/dosa.sh
			 ;;
		5)/home/ec2-user/scripts/meals.sh
			  ;;
		6)/home/ec2-user/scripts/vada.sh
			;;
		7) exit
			;;
		*)echo "invalid option"
		        ;;

		esac

echo "do you want to continue (y/n)?"
read i
if [ $i != "y" ];then
	exit 1
fi
done


