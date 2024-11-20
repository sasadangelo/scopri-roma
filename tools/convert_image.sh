#!/bin/bash

# Check if cwebp is installed
if ! command -v cwebp >/dev/null 2>&1; then
  echo "Error: cwebp is not installed. Install it using 'brew install webp'."
  exit 1
fi

# Check if an image file is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <image_file>"
  exit 1
fi

IMAGE_PATH=$1
FILENAME=$(basename "$IMAGE_PATH")
BASENAME="${FILENAME%.*}"
DIRNAME=$(dirname "$IMAGE_PATH")

# Destination path for the .webp file
WEBP_PATH="${DIRNAME}/${BASENAME}.webp"

# Convert to WebP
echo "Converting $IMAGE_PATH to WebP..."
cwebp -q 80 "$IMAGE_PATH" -o "$WEBP_PATH"

echo "Conversion completed: $WEBP_PATH"
