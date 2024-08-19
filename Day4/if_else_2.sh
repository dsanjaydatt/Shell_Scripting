#!/bin/bash
: '
This is an example of If-Else in bash for numeric compare
'

echo "Enter the first string"
read a

echo "Enter the second string"
read b

if [ $a = $b ]; then
	echo "$a is equal to $b"

elif [ $a \> $b ]; then
	echo "$a is greater than $b"
elif [ $a \< $b ]; then
	echo "$a is less than $b"
else
	echo "$a and $b are not equal"
fi
	
