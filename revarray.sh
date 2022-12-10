# Write a shell program to reverse an array.

#Submitted By Roll No:-302

#Source Code

#!/bin/bash
declare -a array 
read -p "Enter the length of array list: " n
echo "Enter $n elements: "
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

echo "Reverce Array is :${array[@]}"

##############OUTPUT###############

# krishnendu@krishnendu-OptiPlex-3046:~/Desktop/Shell$ bash revarray.sh
# Enter the length of array list: 5
# Enter 5 elements: 
# 4
# 1
# 3
# 7
# 8
# Reverce Array is :8 7 3 1 4
# krishnendu@krishnendu-OptiPlex-3046:~/Desktop/Shell$ 
