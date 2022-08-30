clear
read -p " Enter the number of elements:" n
echo " Enter $n numbers:"
i=0
while [ $i -lt $n ]
do
read arr[$i]
((i++))
done
i=0
temp=${arr[i]}
for((i=1; i<$n; i++))
do
if [ ${arr[$i]} -gt $temp ]
then
temp=${arr[i]}
fi
done
echo "Biggest Element is:" $temp
