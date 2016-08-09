#!/bin/bash

i=1
PATH_NAME=$(pwd) # return current directory path.
for f in *.MP4 # extension can be changed.
do
    echo $f # show current working video
    echo $PATH_NAME/cam3_image/$i # show path to save image
    ffmpeg -i $f -qscale:v 31 -vf scale=960:540 $PATH_NAME/cam3_image/$i/%07d.jpg # path can be changed.
    let i=i+1
done
