#!/bin/bash

echo "Enter filename"

read filename

if [[ -f $filename ]]
	then
		sort $filename | uniq -c | sort -bgr
else
	echo "file doesnt exist"
fi
