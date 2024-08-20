#!/bin/bash

: '
this script being used to search
from a particular directory..
'
# Directory to search
base_dir="/home/labuser/Shell_Scripting/Day6/Test_Assign6/ggg"

find "$base_dir" -print | while read file; do
    if [ -f "$file" ]; then
        echo "$file is a file.."
        if [ -w "$file" ]; then
            echo "$file is writable.."
            echo
            cp $file new-file-dir 
        else
            echo "$file is not writable.."
            echo
        fi
    elif [ -d "$file" ]; then
        echo "$file is a directory.."
        cp -r $file new-dir
    fi
done
