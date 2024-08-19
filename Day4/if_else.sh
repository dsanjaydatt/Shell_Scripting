#!/bin/bash
: '
This is an example of If-Else in bash for numeric compare
'

echo "Enter the first number"
read a

echo "Enter the second number"
read b

if [ $a -eq $b ]; then
	echo "$a is equal to $b"

elif [ $a -gt $b ]; then
	echo "$a is greater than $b"
elif [ $a -lt $b ]; then
	echo "$a is less than $b"
else
	echo "$a and $b are not equal"
fi
	
