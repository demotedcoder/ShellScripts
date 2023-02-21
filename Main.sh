#!/bin/bash
name="Floyd"
sport="ball"
echo "$name Warshall"
echo "foot${sport}"

echo -e "Please enter your Full Name:"
read FNAME LNAME


echo "Hello $FNAME $LNAME"
read -p "Enter your age: " AGE

echo "Your age is $AGE"

if [ $AGE -lt 18 ];
	then
		echo "HEEEY you're not allowed to do that"
else
	echo "Welcome buddy!"
fi



FILENAME="exists.txt"
if [ -e $FILENAME ]
	then
		echo "The file $FILENAME exists"
else
	echo "No it doesnt"
fi
