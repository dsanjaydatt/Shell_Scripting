#!/bin/bash
: '
This is an example of "for loop"
in bash scripting..
'


for (( v1 =1 ; v1<=10 ; v1++ ))
do
	echo "this loop is running for $v1 times.."
	mkdir dir_$v1
	echo "The name of the directory is dir_$v1.."
done
