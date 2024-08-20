#!/bin/bash

: ' 
This is example of for loop
with continue statement

'

for (( i=1 ; i<=100 ; i++ ))
do
	if [ $i -gt 30 ] && [ $i -lt 70 ]; then
		continue
	fi

	echo "Loop is running for $i times.."
done
