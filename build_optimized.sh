#!/bin/bash

# ============================================
# Optimized Flutter Build Script
# Builds release APK with maximum optimization
# ============================================

set -e

echo "🚀 Building optimized release APK..."
echo ""

# Clean previous builds
echo "🧹 Cleaning previous builds..."
flutter clean

# Get dependencies
echo "📦 Getting dependencies..."
flutter pub get

# Build release APK with optimization flags
echo "🔨 Building release APK with optimizations..."
flutter build apk \
  --release \
  --obfuscate \
  --split-debug-info=build/app/outputs/symbols \
  --tree-shake-icons \
  --target-platform android-arm,android-arm64,android-x64 \
  --dart-define=dart.vm.product=true

echo ""
echo "✅ Build complete!"
echo ""
echo "📊 APK Location:"
find build/app/outputs/flutter-apk -name "*.apk" -type f

echo ""
echo "📏 APK Size:"
du -h build/app/outputs/flutter-apk/*.apk

echo ""
echo "🎉 Done! Your optimized APK is ready for distribution."
