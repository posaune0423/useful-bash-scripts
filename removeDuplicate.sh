#!/bin/bash


#####  Usage  #####
# sh removeJps.sh {extension you want to leave} {extension you want to remove}

path=$1
ext=$2
ext2=$3
images=`find $path -name "*.$ext"`;

for fname in $images; do
  # remove extension
  name=`basename ${fname%.*}`
  array=(`find $path -name "*$name*"`)
  if [ ${#array[*]} -gt 1 ] ; then
    rm "$name.$ext2"
  fi
done
