#!/bin/bash


#for i in 1 2 3 4 5
#for i in {10..20}
#for i in $(cat file.txt)
#for i in ./files/*
for i in {1..10}
do
	if (( $i < 5 ))
	then
		echo $i
	elif (( $i == 5 ))
	then
		continue
	else
		break
	fi
	#echo $i
	#echo "This is the value $i"

done
