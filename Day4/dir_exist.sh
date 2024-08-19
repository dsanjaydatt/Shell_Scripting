#!/bin/bash

d1=/home/labuser/User08/Day4

if [ -d $d1 ]; then
	echo "$d1 exists.."
else
	echo "$d1 does not exists."
fi
