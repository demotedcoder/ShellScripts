#!/bin/bash
<<comm
var=40

case $var in
	10)
		echo "its 10"
		;;
	20)
		echo "its 20"
		;;
	*)
		echo "Its not 10 and 20, its smth else"
		;;
esac
comm


<<comm
car="BMW"

case $car in
Toyota)
		echo "its a toyota"
		;;
BMW) 
		echo "its a bmw"
		;;
*)
		echo "nothing"
esac
comm

case $1 in
	req*)
	echo "its requirement or request"
	;;
	meet*)
	echo "its a meeting"
	;;
	*)
	echo "is defualt"
esac
