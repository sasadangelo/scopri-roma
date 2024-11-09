#!/bin/bash

# Ensure you have the following tools installed:
# - pdftk or pdfunite to merge PDFs

# Get the absolute path of the directory where the script is located
SCRIPT_DIR=$(dirname "$(realpath "$0")")
GUIDE_NAMES=("guida-centro-storico")
DOWNLOAD_DIR="${SCRIPT_DIR}/../download"

# Check if pdftk is installed
if ! command -v pdftk &> /dev/null; then
    echo "Error: pdftk is not installed. Please install pdftk to proceed."
    exit 1
fi

mkdir -p "${DOWNLOAD_DIR}"

for guide in "${GUIDE_NAMES[@]}"; do
    OUTPUT_PDF="${DOWNLOAD_DIR}/${guide}.pdf"
    GUIDE_DIR="${guide}"
    pdftk "${GUIDE_DIR}/cover-${guide}.pdf" "${GUIDE_DIR}/${guide}.pdf" cat output "${DOWNLOAD_DIR}/${guide}.pdf"
    echo "Final travel guides PDF generated successfully: ${OUTPUT_PDF}"
done

