#!/bin/bash

### Usage ####
# misspell <file path> | ./replace.sh


while read LINE
do
 filepath=`echo $LINE | cut -d":" -f1`
 wrongword=`echo $LINE | cut -d'"' -f2`
 correctword=`echo $LINE | cut -d'"' -f4`
 sed -i "" "s/$wrongword/$correctword/g" $filepath
done
