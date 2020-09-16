#!/bin/bash

echo "Script to menu for the following"

case $1 in
	1)echo "search word"
		read word
		grep -R -l "$word" * > log
		#check whether file exist or not
		if [ $? -eq 0 ];then
			echo "$word exists"
			cat log
			rm log
			else 
			echo "$word doesn't exists"
		fi
		;;
	2)echo "Edit a given file"
		read file
	 	#check whether given file is file/dir/link" 
	 	if [ -f $file ];then
			echo "$file is file"
			vi $file
		elif [ -d $file ];then
		       	echo "$file is dir"
		elif [ -L $file ];then
		       	echo "$file is link"
		else echo "$file doesn't exist"
		fi
		;;
	3)echo "Create a softlink"
		#check whether given file is file/dir/link"
		read file
		if [ !-f $file ];then
                        echo "$file doesn't exist"
			exit 1
		fi
                echo "Enter softlink name of a file $file"
		read link
                if [ -L $link ];then
                        echo "$link already exists"
                fi
		ln -s $file $link
                ;;
	4) echo "Find the location of a file/dir"
		read file
		find . -iname "$file" > log
		 #check whether file exist or not
                if [ $? -eq 0 ];then
                        echo "$file exists"
                        cat log
			rm log
                        else
                        echo "$file doesn't exists"
		fi
		;;
	5)echo "check the name is file/dir/link"
		 read file
                if [ -f $file ];then
                        echo "$file is file"
                elif [ -d $file ];then
                        echo "$file is dir"
                elif [ -L $file ];then
                        echo "$file is link"
                else
		       	echo W"$file doesn't exist"
                fi
                ;;
	6) exit 1
		;;
esac
