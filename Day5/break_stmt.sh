#!/bin/bash
#break statement for /for loop

for (( x=1 ; x<3 ; x++ ))
do
	echo "Outer loop is running for $x times.."

	for (( a=1 ; a<100 ; a++ ))
	do
		echo "    this loop is running for $a times.."
		if [ $a -eq 5 ]; then
			break
		fi
	done
done
