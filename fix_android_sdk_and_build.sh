#!/bin/bash


set -e

# Ensure Flutter and Android SDK tools are in PATH
export PATH="$PATH:$HOME/flutter/bin"
export PATH="$PATH:$HOME/Android/Sdk/cmdline-tools/latest/bin"

# 1. Check for required tools and print debug info
echo "Checking for flutter and sdkmanager..."
FLUTTER_PATH=$(command -v flutter || true)
SDKMANAGER_PATH=$(command -v sdkmanager || true)
PROJECT_PATH="$HOME/repos/Risa-app"

echo "flutter: $FLUTTER_PATH"
echo "sdkmanager: $SDKMANAGER_PATH"
echo "project dir: $PROJECT_PATH"

if [ -z "$FLUTTER_PATH" ]; then
	echo "Error: flutter not found in PATH."
	exit 1
fi
if [ -z "$SDKMANAGER_PATH" ]; then
	echo "Error: sdkmanager not found in PATH."
	exit 1
fi
if [ ! -d "$PROJECT_PATH" ]; then
	echo "Error: project directory $PROJECT_PATH does not exist."
	exit 1
fi

# 2. Accept licenses (if needed)
yes | sdkmanager --licenses

# 3. Build the debug APK
cd "$PROJECT_PATH"
flutter build apk --debug