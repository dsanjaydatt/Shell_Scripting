#!/bin/bash

: '
this script being used to search
from a particular directory..
'
# Directory to search
base_dir="/home/labuser/Shell_Scripting/Day6/Test_Assign6/ggg"
file_dir="/home/labuser/Shell_Scripting/Day6/Test_Assign6/new-file-dir"
local_dir="/home/labuser/Shell_Scripting/Day6/Test_Assign6/new-dir"

if [ -e  $file_dir ]; then
	rm -rf $file_dir
elif [ -e $local_dir ]; then
	rm -rf $local_dir
fi 

find "$base_dir" -print | while read file; do
    if [ -f "$file" ]; then
        echo "$file is a file.."
        if [ -w "$file" ]; then
            echo "$file is writable.."
            echo
            mv $file new-file-dir
        else
            echo "$file is not writable.."
            echo
        fi
    elif [ -d "$file" ]; then
        echo "$file is a directory.."
        mv $file $local_dir
    fi
done
