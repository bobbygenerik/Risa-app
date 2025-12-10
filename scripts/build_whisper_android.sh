#!/bin/bash

# Quick build using Docker
echo "Building whisper for Android using Docker..."

# Create directories
mkdir -p android/app/src/main/jniLibs/arm64-v8a
mkdir -p android/app/src/main/jniLibs/armeabi-v7a

# Use pre-built Docker image to compile
docker run --rm -v $(pwd):/workspace -w /workspace \
  ghcr.io/cross-rs/cross:aarch64-linux-android \
  bash -c "
    git clone --depth 1 https://github.com/ggerganov/whisper.cpp.git /tmp/whisper
    cd /tmp/whisper
    make libwhisper.so
    cp libwhisper.so /workspace/android/app/src/main/jniLibs/arm64-v8a/
  "

echo "Whisper library built for Android!"