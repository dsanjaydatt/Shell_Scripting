#!/bin/bash
#this is simple test for find even number...

echo "Enter any number to check whether it is even or not.."
read num

remainder=$[ $num % 2 ]

if [[ $remainder -eq 0 ]]; then
	echo "$num is EVEN number.."
else
	echo "$num is not even number.."
fi


