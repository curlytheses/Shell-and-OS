# Write a shell program to reverse an array.

#Submitted By Roll No 302
#Source Code

#!/bin/bash
read "File name:" $1
if [ ! -e $1 ]
then
    echo "File does not exist"
else
    read "Enter the keyword you want to find:" $2
    if [ ! grep $2 $1 ]
	then
        echo "Keyword does not exist"
    else
        grep -v $2 $1 > new.txt
    fi
fi
