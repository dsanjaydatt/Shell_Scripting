#!/bin/bash
#String size check...

echo "Enter the first string"
read s1

echo "enter the second string"
read s2


if [ -n $1 ] && [ -n $2 ] ; then
	echo "$1 & $2 are not empty string"
else
	echo "$1 and $2 are empty"

fi
