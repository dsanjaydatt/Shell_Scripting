#!/bin/bash
#until loop

counter=5

# Until loop to count down from 5 to 1

until [ $counter -lt 1 ]; do

    echo $counter

    ((counter--))  # Decrement the counter

done

