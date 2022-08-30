echo "Enter The Value of N :"
read N
echo "The Fibonacci series is :"
a=0
b=1
for (( i=0; i<N; i++ ))
do
    echo "$a "
    fn=$((a + b))
    a=$b
    b=$fn
done