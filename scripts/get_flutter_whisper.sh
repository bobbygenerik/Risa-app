#!/bin/bash

# Download from flutter_whisper plugin
echo "Downloading from flutter_whisper plugin..."

# Create directories
mkdir -p android/app/src/main/jniLibs/arm64-v8a
mkdir -p android/app/src/main/jniLibs/armeabi-v7a

# Download from flutter_whisper releases
curl -L "https://github.com/MahanRahmati/flutter_whisper/raw/main/android/src/main/jniLibs/arm64-v8a/libwhisper.so" -o android/app/src/main/jniLibs/arm64-v8a/libwhisper.so
curl -L "https://github.com/MahanRahmati/flutter_whisper/raw/main/android/src/main/jniLibs/armeabi-v7a/libwhisper.so" -o android/app/src/main/jniLibs/armeabi-v7a/libwhisper.so

echo "Flutter whisper libraries downloaded!"