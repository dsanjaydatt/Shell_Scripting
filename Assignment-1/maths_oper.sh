#!/bin/bash
#All math operations

: '
This script is being used for Arithmatic operations.. 
this uses read function to read the integer values from user.
'

echo "enter the first value"
read v1
if [[ $v1 =~ ^-?[0-9]+$ ]]; then
	echo "the first variable is:" $v1
	echo ""
else
	echo "please enter a integer number.."
	exit 1
fi

echo "enter the second value"
read v2
if [[ $v2 =~ ^-?[0-9]+$ ]]; then
        echo "the second variable is:" $v2
        echo ""
else
        echo "please enter a integer number.."
        exit 1
fi

echo "enter the third value"
read v3
if [[ $v3 =~ ^-?[0-9]+$ ]]; then
        echo "the third variable is:" $v3
        echo ""
else
        echo "please enter a integer number.."
        exit 1
fi


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


