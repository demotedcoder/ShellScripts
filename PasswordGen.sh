#!/bin/bash

echo "This is a (complex) password Generator"
echo -e "\nEnter the length of password"
read LEN

#Gen 5 passwords
for p in $(seq 1 5); do
#base64 has in total 48 chars
	openssl rand -base64 48 | cut -c1-$LEN
	#from 1 to the len that's specified
	#the count starts from 1 not 0
done
