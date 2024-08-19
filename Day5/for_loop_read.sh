#!/bin/bash

#read parameter in for loop

echo "enter the loop count Int number"
read num

if [ $num -eq 0 ]; then
	echo "Loop count cannot be 0"
else
	for (( a=1 ; a<$num ; a++ ))
	do
		echo "this loop will run for $a times.."
	done
	echo "Enter another loop count Int number for /for loop/"
	read num2
	if [ $num2 -eq 0 ] ; then
		echo "Loop count 2 is zero cannot run further.."
	else
		for (( b=1 ; b<$num2 ; b++ ))
		do
			echo "   this inner loop will run for $b times.."
		done
	fi
fi
