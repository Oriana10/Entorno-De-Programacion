#!/bin/bash

mkdir -p ../cropped_images


for image in "../images/"*
do
    FILENAME=$(basename "$image")

    if [[ $FILENAME =~ ^[A-Z][a-z]+([[:space:]][A-Z][a-z]+)$ ]]; then
        convert "$image" -resize 512x512^ -gravity center -extent 512x512 "../cropped_images/$FILENAME"
    fi
done
