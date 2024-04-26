#!/bin/bash

SOURCE_DIRECTORY=/tmp/app-logs

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ -d $SOURCE_DIRECTORY ]  # -d it wil check if folder is exists or not
then
    echo -e "$G Source directory exists $N"  # -e new line
else
    echo -e "$R Please make sure $SOURCE_DIRECTORY exists $N"
    exit 1
fi

FILES=$(find $SOURCE_DIRECTORY -name "*.log" -mtime +14) # what files need to be deleted in this folder

while IFS= read -r line    #internal field seperator, read 1by1 from input file
do
    echo "Deleting file: $line"
    rm -rf $line
done <<< $FILES   # we can pass input var here