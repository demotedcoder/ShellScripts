#!/bin/bash

if [ -z $1 ]
then
	echo "You forgot to enter the ip address"
	echo "Syntax ./ipsweep.sh IPaddr"
else
for ip in `seq 1 254`
do
# & used for threading
# -n is for windows ;; you can use -c on linux
	ping -n 1 $1.$ip | grep "bytes=32" | cut -d " " -f 3 | tr -d ":" &
done
fi
