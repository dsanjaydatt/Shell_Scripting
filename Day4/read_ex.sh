#!/bin/bash
: '
This is example of
read command in bash
'
echo "Tell me your name:"
read name title
echo
echo "your first name is" $name
echo
echo "your surname is" $title
echo
echo "Tell me your age:"
read age
days=$[365*age]
echo "you are total $days days old"

