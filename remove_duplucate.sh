#!/bin/bash


#####  Usage  #####
# A simple bash script for removing files which have same filename 
# but different extension in the given directory

# sh removeJps.sh {target path} {extension you want to leave} {extension you want to remove}


path=$1
ext=$2
ext2=$3
images=`find $path -name "*.$ext"`;

count=0
for fname in $images; do
  # remove extension
  name=`basename ${fname%.*}`

  # search file which has same name fetched above
  array=(`find $path -name "*$name*"`)
  if [ ${#array[*]} -gt 1 ] ; then
    # echo ${array[*]}
    rm "${fname%.*}.$ext2"
    echo "delete ${fname%.*}.$ext2"
    echo '--------------------'
    count=$((++count))
  fi
done

echo "Total: $count items have been deleted"
