#!/bin/bash

echo "This is a vulnerable Docker container."
echo "Installed libraries:"
echo "1. OpenSSL (latest available version)"
echo "2. libcurl (latest available version)"
echo "3. libc-bin (latest available version)"

# Simulate the application usage
# Note: DO NOT actually exploit vulnerabilities in a production environment.
# This is for educational purposes only.

# Example usage of openssl
openssl version

# Example usage of curl
curl --version

# Example usage of libc-bin (using ldd)
ldd --version

# Keep the container running
tail -f /dev/null
