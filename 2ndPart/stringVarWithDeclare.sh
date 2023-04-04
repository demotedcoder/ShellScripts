#!/bin/bash


declare var="String var with declare"
echo $var

if [ -z ${var+a} ]
then
	echo "var is not declared"
else
	echo "var is declared" $var
fi

# -n nameref aliases
bar=a
declare -n foo=bar
echo ${foo} ${bar}
foo=b
echo ${foo} ${bar}
true

#force var to int with declare
str=2
declare -i str=$((${str#0}+1))
echo $str

#force case with declare

number=array
case $number in
	array)
	declare -i n[0]=4
	declare -i n[1]=6
esac
echo ${n[0]}

#read only var
declare -r author="andri"
author="someone else"
echo $author

#indexed arrays with declare

declare -a my_arr
my_arr=(linux ubuntu redhat)
echo ${my_arr[0]}


#associative var with declare

declare -A assoc_arr
assoc_arr=([website]=Bobi [channel]=Bossi)
echo ${assoc_arr[website]}

#automatically answer yes
# -i interactive prompt before overwrite
yes | cp -i car.txt newCar.txt
