#!/bin/bash

echo 'give input to enter into array'
read -a Array
echo 'the given input array member are as follow'
for i in ${Array[@]}
do
	echo $i
done
