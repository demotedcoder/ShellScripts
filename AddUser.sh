#!/bin/bash

# $1 is the first positional variable, the bash file itself is $0
# ./AddUser.sh 555 -> 555 is the $1 var

echo "Execution of script: $0"
echo "Please enter the name of the user: $1"

adduser --home /$1  $1

