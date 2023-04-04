#!/bin/bash


awk '{print $2 $3 }' date.txt


#print last field in each line
awk '{print $NF }' date.txt


#custom delimiter

#awk '$1=$1' FS=' ' OFS='-' date.txt


# search for a string
#awk '/file1/' date.txt


#if else condition 

# $1 is a string that we are looking for inside the files
awk '{
	if($1 == 'file')
	{
		print "Yes it is", "\n"
	}
	else
	{
		print "No its not\n"
	}
}' date.txt


#ternary operator
awk '{ print($1 == "file") ? "Yes it is\n" : "No it is not\n" }' date.txt

