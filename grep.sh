# Write a shell program to find all the lines in a file containing a word. After dropping those line, store the remaining text in an output file.

#Submitted By Roll No:-302

#Source Code

#!/bin/bash
echo "enter file name"
read file
echo "enter word"
read word
echo "file before removing" $word:
cat $file
grep -v -i $word $file > test.txt
mv test.txt $file
echo "file after removing" $word:
cat $file

####################OUTPUT#################


# krishnendu@krishnendu-OptiPlex-3046:~/Desktop/Shell$ bash grep.sh
# enter file name
# AVG.sh
# enter word
# echo
# file before removing echo:
# read N
# i=1
# sum=0
# while [ $i -le $N ]
# do
#   read num               
#   sum=$((sum + num))     
#   i=$((i + 1))
# done
# file after removing echo:
# read N
# i=1
# sum=0
# while [ $i -le $N ]
# do
#   read num               
#   sum=$((sum + num))     
#   i=$((i + 1))
# done
# krishnendu@krishnendu-OptiPlex-3046:~/Desktop/Shell$ 