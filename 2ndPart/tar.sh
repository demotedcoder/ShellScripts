#!/bin/bash

echo "enter filename"
read filename

if [[ -f $filename ]]
	then
<<comm
		#tar -cvzf $filename.tar $filename --remove-files
		tar -cvzf $filename.tar.gz $filename --remove-files

else
	echo "file does not exist"
fi
comm
		tar -xzf $filename
else
	echo "file not found"
fi
