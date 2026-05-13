#!/bin/bash

echo "Starting Build..."
echo "Hello from GitHub + Jenkins CI"

mkdir -p output

echo "Build completed at: $(date)" > output/build.txt

echo "Done."
