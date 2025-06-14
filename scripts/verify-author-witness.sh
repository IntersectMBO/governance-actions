#!/bin/bash

# Check if cardano-signer is installed
if ! command -v cardano-signer >/dev/null 2>&1; then
  echo "Error: cardano-signer is not installed or not in your PATH." >&2
  exit 1
fi

# Usage message
usage() {
    echo "Usage: $0 <jsonld-file|directory>"
    exit 1
}

# Check correct number of arguments
if [ "$#" -lt 1 ]; then
    usage
fi

input_path="$1"

# Check if the key input file exists
if [ ! -f "$input_path" ]; then
    echo "Error: JSON file '$input_path' not found!"
    exit 1
fi

# https://github.com/gitmachtl/cardano-signer?tab=readme-ov-file#verify-governance-metadata-and-the-authors-signatures

verify_file() {
    local file="$1"
    cardano-signer verify --cip100 \
        --data-file "$file" \
        --json-extended | jq '{workMode, result, errorMsg, authors, canonizedHash, fileHash}'
}

# Use cardano-signer to verify author metadata

if [ -d "$input_path" ]; then
    # If input is a directory: verify all .jsonld files
    shopt -s nullglob
    jsonld_files=("$input_path"/*.jsonld)
    # check if any .jsonld files were found
    if [ ${#jsonld_files[@]} -eq 0 ]; then
        echo "Error: No .jsonld files found in directory '$input_path'."
        exit 1
    fi
    # for each .jsonld file in the directory, go over it
    for file in "${jsonld_files[@]}"; do
        verify_file "$file"
    done
elif [ -f "$input_path" ]; then
    # Input is a single file
    verify_file "$input_path"
else
    echo "Error: '$input_path' is not a valid file or directory."
    exit 1
fi