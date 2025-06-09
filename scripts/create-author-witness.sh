#!/bin/bash

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

# Check if the correct number of arguments is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <jsonld-file>"
    exit 1
fi

# Input file
input_file="$1"

# Check if the input file exists
if [ ! -f "$input_file" ]; then
    echo "Error: Metadata anchor file '$input_file' not found!"
    exit 1
fi

# Input key file
input_key="$2"

# Check if the key input file exists
if [ ! -f "$input_key" ]; then
    echo "Error: Signing key file '$input_key' not found!"
    exit 1
fi

# Sign the JSON-LD file using cardano-signer
cardano-signer sign --cip100 \
    --data-file $input_file \
    --secret-key $input_key \
    --author-name "Intersect" \
    --out-file "${input_file%.jsonld}.authored.jsonld" \