#!/bin/bash
: '
This script is an example of arrays in bash
'
v1=(11 2 3 4 5 6 7 8 9 10 12 23094 40989 409 439 439434 09439)
echo "first value of array is" ${v1[0]}
echo "second value of array is" ${v1[1]}
echo "third value of array is" ${v1[2]}
echo "fourth value of array is" ${v1[3]}
echo "fifth value of array is" ${v1[4]}
echo "sixth value of array is" ${v1[5]}
echo "first value of array is" ${v1[6]}
echo "all values of array are:" ${v1[@]}
echo "last value of array is:" ${v1[-1]}
echo "Another way to find last value of array is: ${v1[@]: -1}"
echo "Length of the array is : ${#v1[@]}"
