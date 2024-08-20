#!/bin/bash

#read with -p

read -p "Enter your name:  " name
echo
echo "Your name is $name"
echo

read -s -p "Enter your password:  " password
echo
echo "your entered password is : $password"
echo 

read -n1 -p "Are you male or female [m/f]: " gender
echo
echo "Your gender is $gender"
echo
