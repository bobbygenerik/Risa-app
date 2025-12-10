#!/bin/bash

# Download pre-built Whisper libraries for Android
WHISPER_VERSION="v1.4.2"
BASE_URL="https://github.com/ggerganov/whisper.cpp/releases/download/${WHISPER_VERSION}"

# Create directories
mkdir -p android/app/src/main/jniLibs/arm64-v8a
mkdir -p android/app/src/main/jniLibs/armeabi-v7a

echo "Downloading Whisper Android libraries..."

# Download ARM64 library
curl -L -o android/app/src/main/jniLibs/arm64-v8a/libwhisper.so \
  "${BASE_URL}/libwhisper-android-arm64-v8a.so" || {
  echo "Failed to download ARM64 library, creating placeholder..."
  echo "// Placeholder - replace with real libwhisper.so" > android/app/src/main/jniLibs/arm64-v8a/libwhisper.so
}

# Download ARMv7 library  
curl -L -o android/app/src/main/jniLibs/armeabi-v7a/libwhisper.so \
  "${BASE_URL}/libwhisper-android-armeabi-v7a.so" || {
  echo "Failed to download ARMv7 library, creating placeholder..."
  echo "// Placeholder - replace with real libwhisper.so" > android/app/src/main/jniLibs/armeabi-v7a/libwhisper.so
}

echo "Whisper libraries downloaded to android/app/src/main/jniLibs/"
echo ""
echo "To complete integration:"
echo "1. Replace placeholder .so files with real Whisper libraries"
echo "2. The JNI wrapper will dynamically load libwhisper.so at runtime"
echo "3. If libraries are missing, transcription shows fallback message"