clear
read -p "Enter input:" n
fact () 
{
    n=$1
    if [[ $n -eq 0 ]]; 
    then
        echo 1
    else
        echo $((n*$(fact $n-1)))
    fi
}
fact $n




