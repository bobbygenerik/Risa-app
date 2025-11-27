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
if ! find build/app/outputs/flutter-apk -name "*.apk" -type f; then
    echo "⚠️  No APK files found"
fi

echo ""
echo "📏 APK Size:"
if ls build/app/outputs/flutter-apk/*.apk 1> /dev/null 2>&1; then
    du -h build/app/outputs/flutter-apk/*.apk
else
    echo "⚠️  No APK files found"
fi

echo ""
echo "🐛 Debug APK ready for testing."
