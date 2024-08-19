#!/bin/bash
: '
This script is doing match operations with
floating point numbers
'

v1=10.10
echo "value of v1 is:" $v1
echo

v2=20.20
echo "value of v2 is:" $v2
echo

v3=30.30
echo "value of v3 is:" $v3
echo

v4=5
echo "value of v4 is:" $v4
echo

echo "sum of $v1,$v2,$v3 is:"
echo " scale=4; $v1 + $v2 + $v3 " | bc
echo

echo "Substraction of $v3 and $v2 is:"
echo " scale=4; $v3 - $v1 " | bc
echo

echo "Multiplication of $v1,$v2,$v3,$v4 is"
echo " scale=4; $v1 * $v2 * $v4 " | bc

