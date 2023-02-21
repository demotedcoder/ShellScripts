#!/bin/bash


echo "###############################"
echo "Encrypt/Decrypt Files using gpg"
echo "###############################"

choice="Encrypt Decrypt Exit"
#option 1 or option 2 (in choice)
select option in $choice; do
if [ $REPLY = 1 ]
then
	echo "You have Selected Encryption"
	echo "Please enter the file name"
	read FILENAME
	gpg -c $FILENAME
	echo "The file has been encrypted successfully"
elif [ $REPLY = 3 ]
then
	echo "You pressed 0, Will exit out from the script"
	exit 1
else
	echo "You have selected Decryption"
	echo "Please enter the Filename that you want to decrypt"
	read FILEDEC
	gpg -d $FILEDEC
	echo "The file has been decrypted"
fi
done
