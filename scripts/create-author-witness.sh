#!/bin/bash

##################################################
DEFAULT_AUTHOR_NAME="Intersect"
##################################################

# This is just a script for testing purposes.

# This script needs a signing key to be held locally
# most setups should and will not have this.

##################################################

# Check if cardano-signer is installed
if ! command -v cardano-signer >/dev/null 2>&1; then
  echo "Error: cardano-signer is not installed or not in your PATH." >&2
  exit 1
fi

# Usage message
usage() {
    echo "Usage: $0 <jsonld-file|directory> <signing-key> [optional-author-name]"
    exit 1
}

# Check correct number of arguments
if [ "$#" -lt 2 ] || [ "$#" -gt 3 ]; then
    usage
fi

input_path="$1"
input_key="$2"
author_name="${3:-$DEFAULT_AUTHOR_NAME}"

# Check if the key input file exists
if [ ! -f "$input_key" ]; then
    echo "Error: Signing key file '$input_key' not found!"
    exit 1
fi

sign_file() {
    local file="$1"
    cardano-signer sign --cip100 \
        --data-file "$file" \
        --secret-key "$input_key" \
        --author-name "$author_name" \
        --out-file "${file%.jsonld}.authored.jsonld"
}

# Use cardano-signer to sign author metadata

if [ -d "$input_path" ]; then
    # If input is a directory: sign all .jsonld files
    shopt -s nullglob
    jsonld_files=("$input_path"/*.jsonld)
    # check if any .jsonld files were found
    if [ ${#jsonld_files[@]} -eq 0 ]; then
        echo "Error: No .jsonld files found in directory '$input_path'."
        exit 1
    fi
    # for each .jsonld file in the directory, sign it
    for file in "${jsonld_files[@]}"; do
        sign_file "$file"
    done
elif [ -f "$input_path" ]; then
    # Input is a single file
    sign_file "$input_path"
else
    echo "Error: '$input_path' is not a valid file or directory."
    exit 1
fi