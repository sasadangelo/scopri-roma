#!/bin/bash

# Directory delle immagini, di default la cartella corrente
SCRIPT_DIR=$(dirname "$(realpath "$0")")
ASSETS_IMG_DIR="${SCRIPT_DIR}/../assets/img"

# Cerca tutte le immagini che non sono in formato .webp
find "$ASSETS_IMG_DIR" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.gif" \) | while read -r IMAGE_PATH; do
    # Ottieni il nome del file senza estensione
    FILENAME=$(basename "$IMAGE_PATH")
    BASENAME="${FILENAME%.*}"

    # Path di destinazione per il file .webp
    WEBP_PATH="${ASSETS_IMG_DIR}/${BASENAME}.webp"

    # Converte l'immagine in WebP e ottimizza
    echo "Converting $IMAGE_PATH to WebP..."
    cwebp -q 80 "$IMAGE_PATH" -o "$WEBP_PATH"
done

echo "Conversion completed."
