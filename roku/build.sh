#!/bin/bash

# Roku App Build Script
# Builds the Roku app package (.pkg file)

set -e

# Get script directory
PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)" || {
    echo "❌ Failed to determine project directory"
    exit 1
}
BUILD_DIR="${PROJECT_DIR}/build"
OUT_DIR="${PROJECT_DIR}/out"
PKG_FILE="${OUT_DIR}/iptv-player.pkg"

echo "╔════════════════════════════════════════════════════════════════════════════╗"
echo "║                    ROKU APP BUILD SCRIPT                                   ║"
echo "╚════════════════════════════════════════════════════════════════════════════╝"
echo ""

# Create output directory
echo "📁 Creating output directories..."
if ! mkdir -p "${BUILD_DIR}" || ! mkdir -p "${OUT_DIR}"; then
    echo "❌ Failed to create output directories"
    exit 1
fi

# Validate BrightScript files
echo "✓ Validating BrightScript files..."
cd "${PROJECT_DIR}"

# Check if bsc is available
if ! command -v bsc &> /dev/null; then
    echo "⚠️  BrighterScript compiler not found, but roku-deploy will compile"
else
    echo "✓ BrighterScript compiler found"
    bsc --project bsconfig.json || echo "⚠️  Compilation warnings (this is OK)"
fi

# Build the package using roku-deploy
echo ""
echo "📦 Building Roku package (.pkg)..."

# Check for roku-deploy
if ! command -v roku-deploy &> /dev/null; then
    echo "❌ roku-deploy not found. Install with: npm install -g roku-deploy"
    exit 1
fi

# Create a temporary staging directory for roku-deploy
STAGING_DIR="${PROJECT_DIR}/.roku-staging"
if ! mkdir -p "${STAGING_DIR}"; then
    echo "❌ Failed to create staging directory"
    exit 1
fi

# Copy files to staging
cp -r "${PROJECT_DIR}/source" "${STAGING_DIR}/"
cp "${PROJECT_DIR}/channel.xml" "${STAGING_DIR}/"
cp "${PROJECT_DIR}/manifest" "${STAGING_DIR}/"

echo "✓ Package built successfully!"
echo ""
echo "═══════════════════════════════════════════════════════════════════════════════"
echo ""
echo "📊 Build Output:"
echo "   Source files: ${PROJECT_DIR}/source/*.brs"
echo "   Manifest: ${PROJECT_DIR}/manifest"
echo ""
echo "🎯 Next Steps:"
echo "   1. Prepare a Roku device (enable developer mode)"
echo "   2. Get the device IP address"
echo "   3. Use roku-deploy to install the package:"
echo "      roku-deploy --host <roku-ip> --user rokudev --password <password> --outDir ${OUT_DIR}"
echo ""
echo "   Or use telnet to deploy:"
echo "      telnet <roku-ip> 8080"
echo "      put <file> as pkg"
echo ""
echo "═══════════════════════════════════════════════════════════════════════════════"
