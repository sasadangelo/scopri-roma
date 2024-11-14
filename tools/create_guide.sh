#!/bin/bash

# Ensure you have the following tools installed:
# - pdftk or pdfunite to merge PDFs

# Get the absolute path of the directory where the script is located
SCRIPT_DIR=$(dirname "$(realpath "$0")")
GUIDE_NAMES=("guida-centro-storico" "guida-colosseo-fori-imperiali" "guida-vaticano-basilica-san-pietro")
DOWNLOAD_DIR="${SCRIPT_DIR}/../download"
TRAVEL_GUIDES_DIR="${SCRIPT_DIR}/../travel-guides"

# Check if pdftk is installed
if ! command -v pdftk &> /dev/null; then
    echo "Error: pdftk is not installed. Please install pdftk to proceed."
    exit 1
fi

mkdir -p "${DOWNLOAD_DIR}"

for guide in "${GUIDE_NAMES[@]}"; do
    OUTPUT_PDF="${DOWNLOAD_DIR}/${guide}.pdf"
    GUIDE_DIR="${guide}"
    pdftk "${TRAVEL_GUIDES_DIR}/${GUIDE_DIR}/cover-${guide}.pdf" "${TRAVEL_GUIDES_DIR}/${GUIDE_DIR}/${guide}.pdf" cat output "${DOWNLOAD_DIR}/${guide}.pdf"
    echo "Final travel guides PDF generated successfully: ${OUTPUT_PDF}"
done

