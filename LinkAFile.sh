#!/bin/bash

ln -s file.txt link1
ls

echo "Now I am writing inside the link1" >> link1
cat link1
