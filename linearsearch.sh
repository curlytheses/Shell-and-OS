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
echo "Element Found !!"
break
done
done

