#!/bin/bash
if [ ! -z "$1" ]
then
  for file in $MEDIA/pointcloud/datasets/$1/*
  do
    scene=$(echo ${file} | rev | cut -d/ -f1 | rev)
    mv $MEDIA/pointcloud/datasets/$1/$scene/Lidar/* $MEDIA/pointcloud/datasets/$1/$scene
    # echo ${scene}/
  done
else
  echo "./.mv_pointcloud.sh [dataset]"
fi
