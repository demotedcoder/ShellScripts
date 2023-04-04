#!/bin/bash

#using it to print string

tput bold
echo "this is the tput command to print string in bold"


#columns of terminal
tput cols

#to move cursor in arbitrary location
# 10 from top and 10 from the left
#tput cup 10 10
#clear the terminal

#tput clear

#print attributes of terminal
tput longname
tput -V

#more complex attr
tput lines
tput cols
tput colors
