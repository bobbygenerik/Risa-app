#!/bin/bash

# Download from whisper-android project
echo "Downloading from whisper-android project..."

# Create directories
mkdir -p android/app/src/main/jniLibs/arm64-v8a
mkdir -p android/app/src/main/jniLibs/armeabi-v7a

# Download pre-built libraries from whisper-android releases
curl -L "https://github.com/Const-me/whisper-android/releases/download/v1.0.0/libwhisper-arm64-v8a.so" -o android/app/src/main/jniLibs/arm64-v8a/libwhisper.so
curl -L "https://github.com/Const-me/whisper-android/releases/download/v1.0.0/libwhisper-armeabi-v7a.so" -o android/app/src/main/jniLibs/armeabi-v7a/libwhisper.so

echo "Whisper Android libraries downloaded!"