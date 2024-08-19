#!/bin/bash
: '
Find the highest number using
boolean operation in if-else statement..
which also checks if two or more numbers are equals..
'
echo "enter the first number"
read v1
echo "first number:" $v1
echo

echo "enter the second number"
read v2
echo "second number:" $v2
echo

echo "enter the third number"
read v3
echo "third number:" $v3
echo

if [ $v1 -gt $v2 ] && [ $v1 -gt $v3 ]; then
	echo "$v1 is the highest number.."
elif [ $v1 -eq $v2 ] && [ $v1 -gt $v3 ]; then
	echo "$v1 and $v2 are equals and $v1 is greater than $v3"
elif [ $v2 -gt $v1 ] && [ $v2 -gt $v3 ]; then
	echo "$v2 is the highest number.."
elif [ $v2 -eq $v3 ] && [ $v2 -gt $v1 ]; then
	echo "$v2 and $V3 are equals and $v2 is greater than $v1"
elif [ $v3 -eq $v1 ] && [ $v3 -gt $v2 ]; then
	echo "$v3 and $v1 are equals and $v3 is greater than $v2"
elif [ $v1 -eq $v2 ] && [ $v1 -eq $v3 ]; then
	echo "all values are same.."
else
	echo "$v3 is the highest number.."
fi

