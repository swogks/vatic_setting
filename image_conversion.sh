#!/bin/bash

i=1
PATH_NAME=$(pwd)
for f in *.MP4
do
    echo $f
    ffmpeg -i $f -qscale:v 31 -vf scale=960:540 $PATH_NAME/cam3_image/$i/%07d.jpg
    echo $PATH_NAME/cam3_image/$i
    let i=i+1
done
