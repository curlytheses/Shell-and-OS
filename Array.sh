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
echo " ${arr[i]} is bigger1 then1 ${arr[i+1]}."
temp=${arr[i]}
if [ $temp -gt ${arr[$i+1]} ]
then
echo " $temp is bigger2 than2 ${arr[$i+1]}"
((i++))
else
echo " ${arr[$i+1]} is bigger3 than3 $temp"
fi
else
temp=${arr[i+1]}
echo " $temp is bigger4 than4 ${arr[i+1]}."
((i++))
fi
done
echo "Biggest Element is:" $temp
