#!/bin/bash

: '
this script being used to search
from a particular directory..
'
# Directory to search
base_dir="/home/labuser/User08/Day5/Test_Assign/ggg/"

find "$base_dir" -print | while read file; do
    if [ -f "$file" ]; then
        echo "$file is a file.."
        if [ -w "$file" ]; then
            echo "$file is writable.."
            echo
            cal > "$file"
        else
            echo "$file is not writable.."
            echo
        fi
    elif [ -d "$file" ]; then
        echo "$file is a directory.."
        echo
    fi
done
