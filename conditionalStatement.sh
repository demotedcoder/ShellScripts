#!/bin/nash

var=0

if [[ $var -gt 2 ]] && [[ $var -lt 8  ]] # ||
then
	echo "Good"
elif [ $var = 0 ]
then
	echo "its 0"
else
	echo "bad"
fi
