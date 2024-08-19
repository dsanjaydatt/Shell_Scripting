#!/bin/bash
: '
this is example of comparing the file creation time
this will check which file is latest and which is older

'

file1="home/labuser/User08/Day4/abc.txt"
file2="/home/labuser/User08/Day4/def.txt"

if [ -f $file1 ]; then
	echo "$file1 exist.."
elif [ -f $file2 ]; then
	echo "$file2 exist.."
else
	echo "$file1, $file2 doesn't exist."
fi


if [ $file1 -nt $file2 ]; then
	echo "$file1 is newer than $file2"
else
	echo "$file2 is newer than $file1"
fi


if [ $file1 -ot $file2 ]; then
	echo "$file1 is older than $file2"
else
	echo "$file2 is older than $file1"
fi
