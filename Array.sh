clear
read -p " Enter the number of elements:" n
echo " Enter $n numbers:"
i=0
while [ $i -lt $n ]
do
read arr[$i]
((i++))
done
echo " The Elements are:"${arr[*]}
echo " The length of the array is:" ${#arr[*]}
i=0
while [ $i -lt $n ]
do
echo ${arr[$i]}
((i++))
done
i=0
for((i=0; i<$n-1; i++))
do
if [ ${arr[$i]} -gt ${arr[$i + 1]} ]
then
echo " ${arr[i]} is bigger then ${arr[i+1]}."
temp=${arr[i]}
if [ $temp -gt ${arr[$i]} ]
then
echo " $temp is bigger than ${arr[$i]}"
else
echo " ${arr[$i]} is bigger than $temp"
fi
else
temp=${arr[i+1]}
echo " $temp is bigger than ${arr[i]}."
fi
done
echo "Biggest Element is:" $temp
