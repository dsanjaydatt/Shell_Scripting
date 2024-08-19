#!/bin/bash
: '
this is while loop example..
'
a=3
while [ $a -gt 0 ]
do
	echo "Outer while loop is running for $a times.."
	a=$[ $a - 1 ]
	b=0
	while [ $b -lt 4 ]
	do
		echo "   This is inner while loop, running for $b times."
		b=$[ $b +1 ]
		c=$[ $a * $b ]
	        echo
		echo "      the result of multiplication is $a*$b=$c"	
	done

done

