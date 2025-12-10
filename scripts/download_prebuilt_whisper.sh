#!/bin/bash

# Download pre-built whisper libraries for Android
WHISPER_VERSION="v1.5.4"
BASE_URL="https://github.com/ggerganov/whisper.cpp/releases/download/${WHISPER_VERSION}"

# Create directories
mkdir -p android/app/src/main/jniLibs/arm64-v8a
mkdir -p android/app/src/main/jniLibs/armeabi-v7a

# Download ARM64
echo "Downloading ARM64 library..."
curl -L "${BASE_URL}/whisper-android-arm64-v8a.tar.gz" -o /tmp/whisper-arm64.tar.gz
tar -xzf /tmp/whisper-arm64.tar.gz -C /tmp/
cp /tmp/whisper-android-arm64-v8a/libwhisper.so android/app/src/main/jniLibs/arm64-v8a/

# Download ARMv7
echo "Downloading ARMv7 library..."
curl -L "${BASE_URL}/whisper-android-armeabi-v7a.tar.gz" -o /tmp/whisper-armv7.tar.gz
tar -xzf /tmp/whisper-armv7.tar.gz -C /tmp/
cp /tmp/whisper-android-armeabi-v7a/libwhisper.so android/app/src/main/jniLibs/armeabi-v7a/

# Cleanup
rm -rf /tmp/whisper-*.tar.gz /tmp/whisper-android-*

echo "Pre-built whisper libraries downloaded successfully!"
