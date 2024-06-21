#! /usr/bin/bash

filestr=$1
searchstr=$2

if [ -z $filestr ] || [ -z $searchstr ]; 
then
  echo "Please enter a directory and search string"
  exit 1
fi

if [ ! -d $filestr ];
then
  echo "Directory does not exist"
  exit 1
fi

files=$(find $filestr -type f)
x=$(find $filestr -type f | wc -l)
y=0

for file in $files 
do
  n_matching_lines=$(cat $file | grep -I $searchstr | wc -l)
  y=$((n_matching_lines + y))
done

echo The number of files are $x and the number of matching lines are $y
