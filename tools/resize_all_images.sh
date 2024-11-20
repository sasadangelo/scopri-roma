#!/bin/bash

# Directory delle immagini, di default la cartella corrente
SCRIPT_DIR=$(dirname "$(realpath "$0")")
ASSETS_IMG_DIR="${SCRIPT_DIR}/../assets/img"

# Check if the directory exists
if [ ! -d "$ASSETS_IMG_DIR" ]; then
  echo "Error: Directory $ASSETS_IMG_DIR does not exist."
  exit 1
fi

# Loop through all images (excluding .webp files)
for IMAGE in "$ASSETS_IMG_DIR"/*; do
  if [[ ! $IMAGE == *.webp ]]; then
    $SCRIPT_DIR/resize_image.sh "$IMAGE"
  fi
done

echo "Resizing completed for all images in $ASSETS_IMG_DIR."
