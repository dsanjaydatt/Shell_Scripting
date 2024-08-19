#!/bin/bash

: '
this script is to print factorial of a number..
this uses for looop
'

echo "Enter the number, you want to generate the factorial.."
read num
factorial=1

for (( a=1 ; a<=$num ; a++ ))
do
	factorial=$[$a*$factorial]
done
echo $factorial

