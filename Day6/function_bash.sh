#!/bin/bash
#function test in bash

echo "this line is before function.."
function fun1 {
 echo "this is a simple function fun1.."

}

for (( i=1 ; i<=10 ; i++ ))
do
	fun1
done

echo "This line is outside..and then using function.."
fun1

