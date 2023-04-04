#!/bin/bash

<<comm
function hello()
{
	echo "hello ffff times"
}

hello
hello
hello
comm

<<comm
function func()
{
	retstr="Hello, this ,s a text"
}

retstr="changed it"
echo $retstr

func
echo $retstr
comm

function func()
{
	echo $(($1 + $2))
}

func 5 4
