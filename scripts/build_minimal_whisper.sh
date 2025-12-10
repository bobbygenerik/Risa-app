#!/bin/bash

# Build minimal whisper library for Android
echo "Building minimal whisper library..."

# Create temp directory
mkdir -p /tmp/whisper_build
cd /tmp/whisper_build

# Clone whisper.cpp
git clone --depth 1 https://github.com/ggerganov/whisper.cpp.git
cd whisper.cpp

# Build for Android (requires NDK)
if [ -d "$ANDROID_NDK_ROOT" ] || [ -d "$ANDROID_HOME/ndk" ]; then
    echo "Building with Android NDK..."
    make clean
    make -j4 CC=aarch64-linux-android21-clang CXX=aarch64-linux-android21-clang++ libwhisper.so
    
    # Copy to project
    cp libwhisper.so /home/devuser/repos/Risa-app/android/app/src/main/jniLibs/arm64-v8a/
    
    echo "Whisper library built successfully!"
else
    echo "Android NDK not found. Please install Android NDK or use pre-built libraries."
    exit 1
fi