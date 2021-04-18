#!/bin/bash

images=`find . -name "*.CR2"`;
echo $images
for fname in $images; do
  # remove extension
  name="${fname%.*}"
  array=(`find . -name "*${name:2}*"`)
  if [ ${#array[*]} -gt 1 ] ; then
    rm "$name.JPG"
  fi
done
