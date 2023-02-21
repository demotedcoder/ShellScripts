#!/bin/bash

function find(){
if [ -e ./exists.txt ];
	then
		echo "Yes, it's here"
else
	echo "Nope :((("
fi
echoout
}

function echoout(){
	echo ".....Not yet"
}

find
