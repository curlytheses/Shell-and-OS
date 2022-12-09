# Write a shell program to perform linear search.

#Submitted By Roll No 302
#Source Code

clear
read -p "Enter the number of elements:" n
echo "Enter the elements:"
i=0
while [ $i -lt $n ]
do
read arr[$i]
((i++))
done
read -p "Enter the element to search:" s
temp=${arr[$i]}
for ((i=0 ; i<n ; i++))
do
while [ ${arr[$i]} -eq $s ]
do
echo "Element Found!!"
break
done
done

###############OUTPUT##############

# Enter the number of elements:6
# Enter the elements:
# 5
# 8
# 3
# 1
# 2
# 9
# Enter the element to search:5
# Element Found!!
# krishnendu@krishnendu-OptiPlex-3046:~/Desktop/Shell$ 