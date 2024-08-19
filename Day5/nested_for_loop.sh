#/bin/bash

: '
This is an example of nested for loop..
there will be two loops, inner and outer..
'


for (( a=0 ; a<3 ; a++ ))
do
	echo "this is outer loop, it is running for $a times.."
	echo
	for (( b=0 ; b<5 ; b++ ))
	do
		echo "    this is inner for loop, it is running for $b times.."
		echo
	done
done
