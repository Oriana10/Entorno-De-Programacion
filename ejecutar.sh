#!/bin/bash

ACTUAL_PATH=$(pwd)
sudo docker build -t tp-entorno .
sudo docker run -it -v "$ACTUAL_PATH/final_images":/app/final_images tp-entorno
