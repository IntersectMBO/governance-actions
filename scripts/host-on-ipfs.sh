#!/bin/bash

######################################################

# Can change if you please

# Gateways to check if file is already hosted on IPFS
DEFAULT_GATEWAY_1="https://ipfs.io/ipfs/"
DEFAULT_GATEWAY_2="https://gateway.pinata.cloud/ipfs/"

# Gateways to host the file on IPFS
HOST_ON_LOCAL_NODE="true"
HOST_ON_PINATA="true"
HOST_ON_BLOCKFROST="true"
HOST_ON_WEB3_STORAGE="true"
######################################################

# check if user has ipfs cli installed
if ! command -v ipfs >/dev/null 2>&1; then
  echo "Error: ipfs cli is not installed or not in your PATH." >&2
  exit 1
fi

# Usage message
usage() {
    echo "Usage: $0 <jsonld-file> [--pin-local] [--pin-pinata] [--pin-blockfrost] [--pin-web3-storage]"
    echo "Options:"
    echo "  --pin-local             Try to pin file on local ipfs node? (default: $HOST_ON_LOCAL_NODE)"
    echo "  --pin-pinata            Try to pin file on pinata service? (default: $HOST_ON_PINATA)"
    echo "  --pin-blockfrost        Try to pin file on blockfrost service? (default: $HOST_ON_BLOCKFROST)"
    echo "  --pin-web3-storage      Try to pin file on web3.storage service? (default: $HOST_ON_WEB3_STORAGE)"
    exit 1
}

# Check correct number of arguments
if [ "$#" -lt 1 ]; then
    usage
fi

# Generate CID from the given file
echo "Generating CID for the file..."

# check two gateways if file can be accessed


# if file is not accessible then host on IPFS
