#! /usr/bin/bash

writefile=$1
writestr=$2

echo $(basename $writefile) 
echo $(dirname $writefile)

if [ -z $writefile ] || [ -z $writestr ]; 
then
  echo "Please enter a directory and string to write"
  exit 1
fi

if [ ! -d $(dirname $writefile) ];
then
  mkdir -p $(dirname $writefile)
fi

touch $writefile
echo $writestr >> $writefile
