#!/bin/bash


#create multi line string var
var=$(cat<<'END_HEREDOC'
HERE 
we could write
multi line string
using heredoc
END_HEREDOC
)

echo  $var

#cat multiline HEREDOC text

cat<<DEMOTED
The current working dir is: $PWD
home folder: $HOME
You are logged in as: $(whoami)
DEMOTED
