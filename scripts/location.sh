#!/bin/bash

echo "Find the location of a file/dir"
                read file
                find . -iname "$file" > log
                if [ $? -eq 0 ];then
                        echo "$file exists"
                        cat log
                        else
                        echo "$file doesn't exists"
                fi
                
