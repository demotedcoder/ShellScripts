#!/bin/bash -x
# -x display all commands that will execute
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
#string that contain double quote
	echo -e ".....Not yet..\n\"Again\"..."
}

find
