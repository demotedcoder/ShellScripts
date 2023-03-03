#!/bin/bash

#car=('BMW' 'TOYOTA' 'Honda')
#echo "${car[2]}"
<<comm
#associative
declare -A car

car[BMW]=i8
car[Toyota]=corolla
car[Mercedes]=Benz
echo ${car[BMW]}
comm


car=('BMW' 'TOYOTA' 'Honda')

for i in ${car[@]} 
do
	echo $i
done
