#!/bin/bash
if [ ! -z "$1" ]
then
  for file in $MEDIA/datasets/$1/*/Image
  do
    scene=$(echo ${file} | rev | cut -d/ -f2 | rev)
    mkdir --parents $MEDIA/datasets/img/$1/$scene ; mv $MEDIA/datasets/$1/$scene/Image/* $_
  done
else
  echo "./.mv_datasets.sh [dataset]"
fi
