#!/bin/bash


cat car.txt | while read x ; 
do echo $x ; done | cat > newCopy.txt
