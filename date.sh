#Write a shell program to check whether a given date is valid or not.
#Year should be between 0 to 2022, month should be between 1 to 12, date should be between 1 to 31 with leap year check.
#Use switch case for checking the range.
 
#Submitted by Roll No : 302
#Source Code

#!/bin/bash

dd=0
mm=0
yy=0
days=0

read -p "Enter day (dd): " dd
read -p "Enter month (mm): " mm
read -p "Enter year (yyyy): " yy
 
if [ $mm -le 0 -o $mm -gt 12 ] 
then
    echo "$mm is invalid month."
    exit 1
fi
case $mm in 
    1) days=31;;
    2) days=28 ;;
    3) days=31 ;;
    4) days=30 ;;
    5) days=31 ;;
    6) days=30 ;;
    7) days=31 ;;
    8) days=31 ;;
    9) days=30 ;;
    10) days=31 ;;
    11) days=30 ;;
    12) days=31 ;;
    *) days=-1;;
esac

if [ $mm -eq 2 ]; 
then
	if [ $((yy % 4)) -ne 0 ] 
		then :
	elif [ $((yy % 400)) -eq 0 ] 
		then 
	   		days=29
	elif [ $((yy % 100)) -eq 0 ] 
		then :
	else
	   days=29
	fi
fi

if [ $dd -le 0 -o $dd -gt $days ];
then
    echo "$dd day is invalid"
    exit 3
fi

if [ $yy -le 0 -o $yy -gt 2022 ];
then
    echo "$yy year is invalid"
    exit 4
fi

echo "$dd/$mm/$yy is a vaild date"


################OUTPUT################

# krishnendu@krishnendu-OptiPlex-3046:~/Desktop/Shell$ bash date.sh
# Enter day (dd): 29
# Enter month (mm): 2
# Enter year (yyyy): 2004
# 29/2/2004 is a vaild date
# krishnendu@krishnendu-OptiPlex-3046:~/Desktop/Shell$ bash date.sh
# Enter day (dd): 29
# Enter month (mm): 2
# Enter year (yyyy): 2000
# 29/2/2000 is a vaild date
# krishnendu@krishnendu-OptiPlex-3046:~/Desktop/Shell$ bash date.sh
# Enter day (dd): 29
# Enter month (mm): 2
# Enter year (yyyy): 2013
# 29 day is invalid
# krishnendu@krishnendu-OptiPlex-3046:~/Desktop/Shell$ 
