#!/bin/bash

<<comm
num1=10
num2=2

expr $num1 + $num2
expr $num1 - $num2
expr $num1 \* $num2
expr $num1 / $num2
echo "$(($num1 % $num2))
comm

I=1
echo $I
I=$((I+=1)) 
echo $I

num1=5
num2=2
echo $(($num1 % $num2))
echo -e "####################\nExponent number"
echo "$((2**3))"

