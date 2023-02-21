#!/bin/bash

echo -e "Please enter your subnet"
read SUBNET

# from 1 to 254 (the sequence)
for IP  in $(seq 1 254); do
	# ping -c 1 "${SUBNET}.${IP}" 
	ping -n 1 ${SUBNET}.${IP}
done

