#!/bin/bash

echo "Script for the following using case statement"

day="date +%a"
#day=$1

case $day in
	'mon'|'Mon'|'monday')echo "Create a file temp_3 if the day is mon"
		touch temp_3
		;;
	'tue'|'Tue'|'tuesday')echo "Rename file temp_3 to temp3"
		mv temp_3 temp3 > test3
		;;
	'wed'|'Wed'|'Wednesday')echo "Create a softlink soft_test3 to file test3 if day is Wednesday"
		ln -s test3 soft_test3
		;;
	'thru'|'Thru'|'Thrusday')echo "Delete file temp3 if day is Thursday"
		rm -rf temp3
		;;
	'fri'|'Fri'|'Friday')echo "create hardlink to test3 if day is Friday"
		ln test3 hard_test3
		;;
	'sat'|'sun')echo "Holiday if day is sat or sun"
		echo "Today is Holiday"
		;;
esac


