#!/bin/bash

<<comm
line="welcome!to!the!real!world"
oldIFS=$IFS
IFS='!'
for word in $line
do
	echo $word
done
IFS=$oldIFS
comm

<<comm
line="welcome!to!the!real!world"
delimiter=!
s=$line$delimiter
array=()
while [[ $s ]] 
do
	echo ${s%%$delimiter*}
	s=${s#*$delimiter}
done
comm

<<comm
line="welcome!to!the!real!world"
oldIFS=$IFS
IFS='!'
read -ra ADDR <<< $line
for i in ${ADDR[@]}
do
	echo $i
done

IFS=$oldIFS
comm


#split by multi byte delimiter

line="WEkXYZkEWeikXYZweiwEIwkjewXYZEjestring"
delimiter="XYZ"
lineLen=${#line}
d=${#delimiter}
i=0
Len=0
P=0
mArr=()
while [ $i -lt $lineLen ]
do
	if [ $delimiter == ${line:$i:$d} ]
	then
		mArr+=(${line:P:$Len})
		P=$(( i + d  ))
		Len=0
		i=$(( i + d ))
	fi
	i=$(( i + 1))
	Len=$(( Len + 1 ))
done
mArr+=${line:P:$Len}
declare -p mArr
