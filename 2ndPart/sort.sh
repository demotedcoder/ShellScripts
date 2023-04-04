#!/bin/bash

cat car.txt | sort

cat car.txt | wc -w

#ignore case
echo
cat car.txt | sort -f

#sort numerically
cat nums.txt | sort -n

#unique comm
# -c counter
uniq -c nums.txt
#print duplicated lines
uniq -dc nums.txt
