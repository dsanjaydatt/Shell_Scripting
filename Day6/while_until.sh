#!/bin/bash

# Initial counter for the while loop
counter=1
echo "Using while loop to count from 1 to 5:"

# While loop to count from 1 to 5

while [ $counter -le 5 ]; do

    echo $counter

    ((counter++))  # Increment the counter

done

# Reset the counter for the until loop

counter=1
echo "Using until loop to count down from $counter to 100:"

# Until loop to count down from $counter to 1

until [ $counter -gt 100 ]; do

    echo $counter

    ((counter++))  # Decrement the counter

done
