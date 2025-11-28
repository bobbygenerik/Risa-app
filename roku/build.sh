#!/bin/bash
# Roku IPTV App - Build Script

set -e

echo "🔨 Building Roku IPTV App..."

cd "$(dirname "$0")"

# Clean old build
rm -f out/roku.zip
mkdir -p out

# Build package
python3 << 'EOF'
import os, zipfile

print("📦 Creating package...")

with zipfile.ZipFile('out/roku.zip', 'w', zipfile.ZIP_DEFLATED) as z:
    z.write('manifest', 'manifest')
    
    # Include all source files
    for root, dirs, files in os.walk('source'):
        for file in files:
            if file.endswith('.brs') and not file.endswith(('.bak', '.backup', '.disabled')):
                path = os.path.join(root, file)
                z.write(path, path)
                print(f"  ✓ {path}")
    
    # Include all components
    for root, dirs, files in os.walk('components'):
        for file in files:
            if not file.endswith(('.bak', '.backup')):
                path = os.path.join(root, file)
                z.write(path, path)
                print(f"  ✓ {path}")
    
    # Include all images
    for root, dirs, files in os.walk('images'):
        for file in files:
            if not file.endswith(('.bak', '.backup')):
                path = os.path.join(root, file)
                z.write(path, path)
                print(f"  ✓ {path}")

size = os.path.getsize('out/roku.zip')
print(f"\n✅ Build complete: out/roku.zip ({size/1024:.1f} KB)")
EOF

echo ""
echo "📋 Package ready for deployment"
echo "   File: out/roku.zip"
echo ""
echo "Next steps:"
echo "  1. Enable developer mode on Roku"
echo "  2. Run: ./deploy.sh <ROKU_IP> <PASSWORD>"
