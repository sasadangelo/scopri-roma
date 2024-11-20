#!/bin/bash

# Directory delle immagini, di default la cartella corrente
SCRIPT_DIR=$(dirname "$(realpath "$0")")
ASSETS_IMG_DIR="${SCRIPT_DIR}/../assets/img"

# Check if cwebp is installed
if ! command -v cwebp >/dev/null 2>&1; then
  echo "Error: cwebp is not installed. Install it using 'brew install webp'."
  exit 1
fi

# Check if the folder exists
if [ ! -d "$ASSETS_IMG_DIR" ]; then
  echo "Error: Directory $ASSETS_IMG_DIR does not exist."
  exit 1
fi

# Convert all images (excluding .webp files)
find "$ASSETS_IMG_DIR" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.gif" \) | while read -r IMAGE_PATH; do
  $SCRIPT_DIR/convert_image.sh "$IMAGE_PATH"
done

echo "All images in $ASSETS_IMG_DIR have been converted to WebP."
