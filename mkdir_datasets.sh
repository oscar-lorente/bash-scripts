#!/bin/bash
if [ ! -z "$1" ]
then
  for file in $MEDIA/datasets/img/$1/*
  do
    scene=$(echo ${file} | rev | cut -d/ -f1 | rev)
    mkdir --parents $MEDIA/datasets/gt_map/$1/$scene
  done
else
  echo "./.mkdir_datasets.sh [dataset]"
fi
