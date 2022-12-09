# Write a shell program to implement a menu driven calculator using switch case.

#Submitted By Roll No 302
#Source Code

sum=0
i="y"
echo "Enter first number :"
read n1
echo "Enter second number :"
read n2
while [ $i = "y" ]
do
echo "1.Addition"
echo "2.Subtraction"
echo "3.Multiplication"
echo "4.Division"
echo "Enter your choice"
read ch
case $ch in
1)sum=`expr $n1 + $n2`
echo "Sum ="$sum;;
2)sub=`expr $n1 - $n2`
echo "Sub = "$sub;;
3)mul=`expr $n1 \* $n2`
echo "Mul = "$mul;;
4)div=`echo $n1 / $n2 | bc -l`
echo "Div = "$div;;
*)echo "Invalid choice";;
esac
echo "Do u want to continue ?"
read i
if [ $i != "y" ]
then
exit
fi
done


#########################OUTPUT#################

# krishnendu@krishnendu-OptiPlex-3046:~/Desktop/Shell$ bash calculator.sh
# Enter first number :
# 6
# Enter second number :
# 8
# 1.Addition
# 2.Subtraction
# 3.Multiplication
# 4.Division
# Enter your choice
# 1
# Sum =14
# Do u want to continue ?
# y
# 1.Addition
# 2.Subtraction
# 3.Multiplication
# 4.Division
# Enter your choice
# 2
# Sub = -2
# Do u want to continue ?
# y
# 1.Addition
# 2.Subtraction
# 3.Multiplication
# 4.Division
# Enter your choice
# 3
# Mul = 48
# Do u want to continue ?
# y
# 1.Addition
# 2.Subtraction
# 3.Multiplication
# 4.Division
# Enter your choice
# 4
# Div = .75000000000000000000
# Do u want to continue ?
# n
# krishnendu@krishnendu-OptiPlex-3046:~/Desktop/Shell$ 