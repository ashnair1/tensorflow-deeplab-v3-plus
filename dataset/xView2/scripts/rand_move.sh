#!/bin/bash

source_folder="/home/ashwin/Downloads/VOCdevkit/tensorflow-deeplab-v3-plus/dataset/xView2/PNGImages"
target_folder="/home/ashwin/Downloads/VOCdevkit/tensorflow-deeplab-v3-plus/dataset/xView2/PNGImagesVal"
num=800

echo "Moving $num random files"

cd "$source_folder"
ls |sort -R |tail -$num |while read file; do
    # Something involving $file, or you can leave
    # off the while to just get the filenames
    mv "$file" "$target_folder"
done
