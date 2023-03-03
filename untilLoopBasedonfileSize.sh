#!/bin/bash

#basename remove the .sh exstension

#FILENAME=`basename $0 .sh`
FILENAME="$0"
echo FILENAME
TMP_FILE="./file.txt"
TARGET_FILE="./target.txt"
cat $FILENAME > $TARGET_FILE
FILESIZE=0

until [ $FILESIZE -gt 2048 ]
do
cp $TARGET_FILE $TMP_FILE
cat $TMP_FILE >> $TARGET_FILE

FILESIZE=`du $TARGET_FILE | awk '{print $1}'`
echo "size of file: $FILESIZE bytes"
sleep 1
done

echo "new size of file exceeded target of 2KB+"
