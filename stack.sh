# Write a shell program to implement stack using array.

#Submitted By :- 302

#Source Code

#!bin/bash
declare -a stack
top=-1
max=$1
push(){
	if [ $top -eq $max ]
	then
		echo "Stack Overflow"
		exit 1
	elif [ $top -lt $max ]
	then
		((top=top+1))
		stack[$top]=$1
	else
		echo "Stack Overflow"
		exit 1
	fi
}
pop(){
	if [ $top -gt -1 ]
	then
		echo "${stack[$top]} Popped"
		unset stack[$top]
		((top=top-1))
	else
		echo "Stack Underflow"
		exit 1
	fi
}
echo -e "Stack Size : $max"
while [ 1 -eq 1 ]
do
	echo -e "\n1.Push\n2.Pop\n3.Exit"
	read -p "Enter Your Choice : " choice
	case $choice in
		1)
			read -p "Enter the element : " element
			push $element
			echo "Stack : ${stack[*]}"
		;;
		2)
			pop
			echo "Stack : ${stack[*]}"
		;;
		3)	
			echo "Exiting"
			exit 1
		;;
		*) echo "Invalid input..!"
		;;
	esac
done

########################OUTPUT#####################

# krishnendu@krishnendu-OptiPlex-3046:~/Desktop/Shell$ bash stack.sh 5
# Stack Size : 5

# 1.Push
# 2.Pop
# 3.Exit
# Enter Your Choice : 1
# Enter the element : 2
# Stack : 2

# 1.Push
# 2.Pop
# 3.Exit
# Enter Your Choice : 1
# Enter the element : 3
# Stack : 2 3

# 1.Push
# 2.Pop
# 3.Exit
# Enter Your Choice : 1
# Enter the element : 4
# Stack : 2 3 4

# 1.Push
# 2.Pop
# 3.Exit
# Enter Your Choice : 1
# Enter the element : 5
# Stack : 2 3 4 5

# 1.Push
# 2.Pop
# 3.Exit
# Enter Your Choice : 1
# Enter the element : 6
# Stack : 2 3 4 5 6

# 1.Push
# 2.Pop
# 3.Exit
# Enter Your Choice : 2
# 6 Popped
# Stack : 2 3 4 5

# 1.Push
# 2.Pop
# 3.Exit
# Enter Your Choice : 2
# 5 Popped
# Stack : 2 3 4

# 1.Push
# 2.Pop
# 3.Exit
# Enter Your Choice : 2
# 4 Popped
# Stack : 2 3

# 1.Push
# 2.Pop
# 3.Exit
# Enter Your Choice : 2
# 3 Popped
# Stack : 2

# 1.Push
# 2.Pop
# 3.Exit
# Enter Your Choice : 2
# 2 Popped
# Stack : 

# 1.Push
# 2.Pop
# 3.Exit
# Enter Your Choice : 2
# Stack Underflow
# krishnendu@krishnendu-OptiPlex-3046:~/Desktop/Shell$ 