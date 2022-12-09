#Write a shell program to find the maximum number in an array.
#Submitted by Roll No : 302
#Source Code

#!/bin/bash
clear
read -p "Enter size of array: " n
echo "Enter numbers: "
i=0
max=0
while [ $i -lt $n ]
do
	read arr[$i]
    if [ $i -eq 0 ]  
    then
    	max=${arr[$i]}
    else             
    	if [ ${arr[$i]} -gt $max ]
        then
        	max=${arr[$i]}
        fi
    fi
    ((i++))
done
echo "The maximum number in the array is" $max


#######################OUTPUT################
#Enter size of array: 5
#Enter numbers: 
#3
#6
#9
#8
#7
#The maximum number in the array is 9

