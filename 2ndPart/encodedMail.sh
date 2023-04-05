#!/bin/bash

echo "This is the message body" | mutt -a "file.txt" -s "File attachment" -- user@gmail.com
echo "Email sent successfully"
