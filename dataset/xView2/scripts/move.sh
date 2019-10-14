#!/bin/bash

name_folder="/home/ashwin/Desktop/Work/deeplabv3plus/data/xView2/images/val"
source_folder="/home/ashwin/Desktop/Work/deeplabv3plus/data/xView2/masks/train/"
target_folder="/home/ashwin/Desktop/Work/deeplabv3plus/data/xView2/masks/val"
filename='filename.txt'


ls $name_folder > $filename

#cd $source_folder


n=1
while read entry; do
# reading each line
mv "$source_folder$entry" "$target_folder"
n=$((n+1))
done < $filename

rm $filename
