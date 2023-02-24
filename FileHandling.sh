#!/bin/bash

echo "My fav movie is \"Wondering\"" > ./Prefence.txt
if [ -e ./Prefence.txt ]
then
	echo "File created succesfully"
	#overwrite a line of text inside a file
	echo "Append this line of text" >> ./Prefence.txt
else
	echo "Error occurred"
	rm ./Prefence.txt
fi

