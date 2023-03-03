#!/bin/bash

eval echo "Hello World"

foo=10 x=foo
y='$'$x
echo $y
eval echo '$'$x

