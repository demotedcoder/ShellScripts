#!/bin/bash

#download webpage and save to a file
curl https://www.google.com --output file.txt

#post to http with curl
curl -X POST -d @file.txt https://google.com

