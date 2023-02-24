#!/bin/bash

#$HOME var
VAR_PATH=$HOME
echo "the home dir path: "  $VAR_PATH
#escape (expansion) - literal
echo "You can find home var with this \$HOME"
#ls $VAR_PATH
VAR=$USER
echo $VAR

#HOSTNAME var
host=$HOSTNAME
echo $host

<<comm
name="Floyd"
sport="ball"
echo "$name Warshall"
echo "foot${sport}"

echo -e "Please enter your\tFull Name:"
read FNAME LNAME


echo "Hello $FNAME $LNAME"
read -p "Enter your age: " AGE

echo "Your age is $AGE"

if [ $AGE -lt 18 ]
	then
		echo "HEEEY you're not allowed to do that"
elif [ $AGE = 20 ]
	then
		echo "In my twenties..."
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
comm
