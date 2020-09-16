#!/bin/bash

	echo "Create a softlink"
                
                read file
		echo "Enter a file name"
                if [ ! -f $file ];then
                        echo "$file doesn't exist"
                        exit 1
                fi
                echo "Enter softlink name of a file $file"
                read link
                if [ -L $link ];then
                        echo "$link already exists"
			exit 1
		fi
                ln -s $file $link
                

