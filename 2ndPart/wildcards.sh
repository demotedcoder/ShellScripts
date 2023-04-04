#!/bin/bash

#selection

#ls -l file*
#ls -l file?.txt

#1 or 2
#ls -l file[12].txt


#using pipe

ls -l [f-g]* | wc -l
#brace expansion
# brace exp range
echo Linux{1..3}
echo Linux{1,2,3} | tr ' ' ,
echo Linux{A,B,C} | tr ' ' ,


# with preamble

echo {file1,file2}{A..C}

# operating on list of files with brace exp

#mkdir "dir"{1,3,4}
#ls

#reference home dir with tilda

echo ~

#parameter expansion for printing constant or var if unset

#checkVar=4
echo ${checkVar:-unset}
echo "lets assign a value"
echo ${checkVar:=bash}
