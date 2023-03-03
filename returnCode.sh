#!/bin/bash

var=$(cat file44.txt)
echo $var
echo $? > returncode.txt
