#!/bin/bash
: '
This program is used for creating
multiple users in Linux.
This program only works when user has the root privilages.
'
echo "Enter the number of users you want to create:" 
read num

for (( i=1 ; i<=$num ; i++ ))
do
	sudo useradd user_$i
	echo "Adding $i) user..With username as user_$i"
done

sudo tail -n $num /etc/passwd

sleep 10;

echo "Would you like to delete the users?"
echo "Press Yy/Nn : Y:Yes , Nn: No"
read val

if [[ $val == 'Y' ]] || [[ $val =='y' ]]; then
	echo "deleting users..."
elif [[ $val =='N' ]] || [[ $val =='n' ]]; then
	echo "you have selected No.. exiting.."
	exit 0
else 
	echo "Invalid input..exiting.."
	exit 1;
fi
