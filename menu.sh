#!/bin/bash

<<comm
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
comm
<<comm
PS3="Pleease choose a car company:"
cars=('bmw' 'volkswagen' 'toyota' 'quit')
select car in ${cars[@]}
do
	case $car in
		"bmw")
			echo "You chose bmw"
			;;
		"volkswagen")
			echo "you chose volk...."
			;;
		"toyota")
			echo "you chose toyota"
			;;
		"quit")
			break
			;;
		*)
			echo "wrong option"
			;;
	esac
done
comm

PS3="select any of the car company: "
menu_from_array ()
{

	select item
	do
	if [ 1 -le $REPLY ] && [ $REPLY -le $# ]
	then
		echo "The selected car company is $item"
		break
	else
		echo "Wrong selection, Select any number from 1-$#"
	fi
	done
}

cars=('bmw' 'volkswagen' 'toyota')
menu_from_array ${cars[@]}
