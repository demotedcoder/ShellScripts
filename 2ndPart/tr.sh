#!/bin/bash

read filename

if [[ -f $filename ]]
then
	tr '[a-z]' '[A-Z]' < $filename
else
	echo "file does not exist"
fi

