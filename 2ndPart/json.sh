#!/bin/bash

echo "enter filename"
read filename

if [[ -f $filename ]]
	then
		cat $filename | jq '.'
else
	echo "file does not exist"
fi

#specific field in json with jq
#...then
	jq '.glossary.title' $filename
