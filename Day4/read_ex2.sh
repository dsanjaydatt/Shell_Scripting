#!/bin/bash
#All math operations

: '
This is another script, being used for Arithmatic operations.. 
this uses read function to read the values from user.

'
echo "enter the first value"
read v1
echo "the first variable is:" $v1
echo ""

echo "enter the second value"
read v2
echo "the second variable is:" $v2
echo ""

echo "enter the third value"
read v3
echo "value of third variable is:" $v3

v4=$[ $v1 + $v2 + $v3 ]
echo""
echo "sum of $v1, $v2, $v3 is: $v4"
echo ""

v5=$[ $v3 - $v1 ]
echo "Substraction of $v3 and $v1 is : $v5"
echo""

v6=$[ $v1 * $v2 * $v3 ]
echo "Multiplication of $v1,$v2,$v3" is: $v6
echo""
if [ $v2 -eq 0 ]; then
	echo "Division by zero is not allowed"
else
	v7=$[ $v1 / $v2 ]
fi
echo "Division of $v2 by $v1 is:" $v7
echo""

v8=$[ $v3 % $v2 ]
echo "The remainder of division from $v3 by $v2 is: $v8"

: '
This is nothing but multi-line comment
this is still a comment
this is also a comment
'

