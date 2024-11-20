#!/bin/bash

# Environment variable for image width
WIDTH=${IMG_WIDTH:-450}

# Check if an image file is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <image>"
  exit 1
fi

IMAGE=$1
IMAGE_BCK="${IMAGE%.*}_bck.${IMAGE##*.}"
OUTPUT=$IMAGE

# Resize the image using ImageMagick
if command -v convert >/dev/null 2>&1; then
  cp $IMAGE $IMAGE_BCK
  convert "$IMAGE_BCK" -resize "${WIDTH}" "$OUTPUT"
  echo "Image resized and saved to: $OUTPUT. Backup in: $IMAGE_BCK."
else
  echo "Error: ImageMagick is not installed. Install it using 'brew install imagemagick'."
  exit 2
fi
