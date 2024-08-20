#!/bin/bash
#function test in bash

echo "this line is before function.."
function fun1 {
echo "this is a simple function fun1.."
echo
}

for (( i=1 ; i<=10 ; i++ ))
do
	fun1
done

echo "This is end of the loop"


function fun2 {
	echo
	echo "This is function two..."
}

fun2
