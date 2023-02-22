#!/bin/bash

echo "Welcome to Charle's Steak Restaurant"
echo "Please what type of steak you want to eat"

meals="Tomahawk T-Bone Exit"

select option in $meals
do
	if [ $REPLY = 3 ]
		then 
			exit 1
	else
	echo "The type of steak you chose is $option"
	fi
done
