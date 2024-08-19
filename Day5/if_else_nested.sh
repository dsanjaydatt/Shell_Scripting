#!/bin/bash
: '
This is a script which is being used for
nested if else conditions.
'

file_name=dir1

if [ -e $file_name ]; then
	echo "file/dir exists.."
	if [ -f $file_name ]; then
		echo "$file_name is a file"
		echo
		if [ -w $filen_name ]; then
		echo "file is writable.."
		echo
		cal >> $file_name
		echo
		date >> $file_name
		echo
		cat $file_name
	else
	echo "$file_name is not writable.."
		fi
	else
		"echo it is a directory.."
	fi
else
	echo "file/directory does not exist.."

fi
