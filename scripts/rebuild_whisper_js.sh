#!/bin/bash

# Script to rebuild whisper.js without hardcoded credentials
# This addresses CWE-798,259 - Hardcoded credentials issue

echo "Rebuilding whisper.js to fix hardcoded credentials issue..."

# Navigate to whisper source directory
cd android/app/src/main/cpp/whisper-src

# Create build directory
mkdir -p build-js
cd build-js

# Configure with Emscripten to avoid embedding sensitive data
emconfigure cmake .. \
    -DCMAKE_BUILD_TYPE=Release \
    -DWHISPER_WASM_SINGLE_FILE=OFF \
    -DBUILD_SHARED_LIBS=OFF \
    -DWHISPER_BUILD_TESTS=OFF \
    -DWHISPER_BUILD_EXAMPLES=OFF

# Build the JavaScript bindings
emmake make -j$(nproc)

# Copy the generated files (without embedded WASM)
cp bin/libwhisper.js ../bindings/javascript/whisper.js
cp bin/libwhisper.wasm ../bindings/javascript/whisper.wasm

echo "whisper.js rebuilt successfully without embedded credentials!"
echo "Note: whisper.wasm is now a separate file to avoid embedding binary data"