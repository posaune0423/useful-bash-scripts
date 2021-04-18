#!/bin/bash

### Usage ####
# A simle bash script working with misspell 
# which corrects spell miss detected by misspell command

# misspell <file path> | ./replace.sh


while read line; do
  filepath=`echo $line | cut -d ":" -f1`
  wrongword=`echo $line | cut -d '"' -f2`
  correctword=`echo $line | cut -d '"' -f4`
  sed -i "" "s/$wrongword/$correctword/g" $filepath
done
