# Write a shell program to find all the lines in a file containing a word. After dropping those line, store the remaining text in an output file.

#Submitted By Roll No:-302

#Source Code

#!/bin/bash
echo "Enter File Name"
read file
echo "Enter Output File Name"
read file1
echo "Enter Word"
read word
echo "File Before Removing" $word:
cat $file
grep -v -i $word $file > $file1
mv test.txt $file
echo "File After Removing" $word:
cat $file1

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