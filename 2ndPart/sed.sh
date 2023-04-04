#!/bin/bash

#sed 's/file1.txt/Newfile1.txt/' date.txt

#replace second instance of matching text on line

sed 's/1/ewCODer/2' date.txt

#delete specific line

#sed '2d' date.txt

#add a line before a matched line

sed '/^1*./i Before' date.txt
#add a line after matched line
sed '/^1*./a AFter' date.txt


