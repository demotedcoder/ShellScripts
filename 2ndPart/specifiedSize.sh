#!/bin/bash

#a file of 1 kilobytes will be created ---- 1 block
dd if=/dev/zero of=myfile.txt count=1 bs=1024
