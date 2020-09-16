#!/bin/bash

while [ 1 ] 
do
	read opt
	case $opt in
		1)/home/ec2-user/scripts/search.sh
			#echo "Enter to word to search"
			;;
		2)/home/ec2-user/scripts/edit.sh
			#echo "Edit a file"
                        ;;
		3)/home/ec2-user/scripts/createsoft.sh
			#echo "Create a softlink"
                        ;;
		4)/home/ec2-user/scripts/location.sh
			#echo "Find the location"
                        ;;
		5)/home/ec2-user/scripts/ckname.sh
			#echo "Check name is file/dir/link"
                        ;;
		6) exit 1
			;;
		*)echo "This is invalid option"
			;;
	esac
done
