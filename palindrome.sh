flag=0
echo "Enter the word"
read a
d=1
c=${#a}
for((i=1;i<$c;i++))
do
  temp1=`expr $a | cut -b $i`
  temp2=`expr $a | cut -b $c`
  ((c--))
  if [ "$temp1" == "$temp2" ] 
  then
      echo " $c+$d th STRING IS PALINDROME"
  else
      echo " $c+$d th STRING IS NOT PALINDROME"
  fi
done
 
