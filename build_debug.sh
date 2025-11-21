#!/bin/bash

# Debug build without optimizations
# Use this for testing/debugging

set -e

echo "🐛 Building debug APK..."
echo ""

# Clean previous builds
echo "🧹 Cleaning previous builds..."
flutter clean

# Get dependencies
echo "📦 Getting dependencies..."
flutter pub get

# Build debug APK (no obfuscation, no minification)
echo "🔨 Building debug APK..."
flutter build apk --debug

echo ""
echo "✅ Build complete!"
echo ""
echo "📊 APK Location:"
find build/app/outputs/flutter-apk -name "*.apk" -type f

echo ""
echo "📏 APK Size:"
du -h build/app/outputs/flutter-apk/*.apk

echo ""
echo "🐛 Debug APK ready for testing."
