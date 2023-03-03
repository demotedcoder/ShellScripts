#!/bin/bash

FILE='tmp'
n=1
while read line
do
	echo "LINE-$n : $line"
	n=$((n+1))
	if [ $n -gt 2 ]
	then
		break
	fi
done < $FILE
