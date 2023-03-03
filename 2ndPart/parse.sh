#!/bin/bash
<<comm
shift 0
echo 0= $0
echo 1= $1
echo 2= $2
echo 3= $3
echo 4= $4
comm
<<comm
#skip the first positional var
shift 1
echo 0= $0
echo 1= $1
echo 2= $2
echo 3= $3
comm

while getopts 'xyz:' OPTION
do
	case $OPTION in
	x)
		echo "This is x"
		;;
	y)
		echo "This is y"
		;;
	z)
		z=$OPTARG
		echo "the value entered is $z"
		;;
	?)
		echo "script usage: $(basename $0) [-x] [-y] [-z]" >&2
		;;
	esac
done
shift $(($OPTIND -1))
