#!/bin/bash



 echo "Edit a given file"
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

