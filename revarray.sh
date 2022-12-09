# Write a shell program to reverse an array.
		
#Submitted By Roll No 302
#Source Code

#!/bin/bash
clear

declare -a array 
read -p "Enter the array list: " n
for (( i=0;i<$n;i++))
do
    read elements
    array[$i]="$elements"
done
min=0
max=$(( ${#array[@]} -1 ))

while [[ min -lt max ]]
do
    x="${array[$min]}"
    array[$min]="${array[$max]}"
    array[$max]="$x"
 
    (( min++, max-- ))
done

echo "${array[@]}"

############OUTPUT###########

# Enter the array list: 5
# 3
# 1
# 2
# 6
# 8
# 8 6 2 1 3
