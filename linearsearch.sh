clear
read -p "Enter the number of elements:" n
echo "Enter the elements:"
i=0
while [ $i -lt $n ]
do
read arr[$i]
((i++))
done
i=0
echo "Enter the element to search:"
read s
temp=${arr[$i]}
for ((i=1 ; i<n ; i++))
do
while [ ${arr[$i]} -eq $s ]
do
echo "Element Found !!"
break
done
done

