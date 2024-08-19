#!/bin/bash
: '
This script is also doing match operations with
floating point numbers but it reads the 
user input and calculate..
'

echo "enter the first floating number.."
read v1
echo "value of v1 is:" $v1
echo

echo "enter the second floating number.."
read v2
echo "value of v2 is:" $v2
echo

echo "enter the third floating number.."
read v3
echo "value of v3 is:" $v3
echo

echo "enter the fourth integer number.."
read v4
echo "value of v4 is:" $v4
echo

echo "sum of $v1,$v2,$v3 is:"
echo " scale=4; $v1 + $v2 + $v3 " | bc
echo

echo "Substraction of $v3 and $v2 is:"
echo " scale=4; $v3 - $v1 " | bc
echo

#echo " scale=2; $v1 * $v2 * $v4 " | bc
result=$(echo "scale=10; x= $v1 * $v2 * $v3 * $v4; scale=2; x" | bc)
echo "Multiplication of $v1,$v2,$v3,$v4 is" : $result

div=$(echo "scale=2; $v1 / $v2" | bc)
echo "Result of $v1 divided by $v2 is :" $div 
