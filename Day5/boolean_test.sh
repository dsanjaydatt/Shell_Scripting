#!/bin/bash
: '
Find the highest number using
boolean operation in if-else statement..

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
elif [ $v2 -gt $v1 ] && [ $v2 -gt $v3 ];then
	echo "$v2 is the highest number.."
else
	echo "$v3 is the highest number.."
fi

