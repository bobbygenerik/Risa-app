#!/bin/bash
# RISA IPTV Web Deployment Script

echo "🚀 Deploying RISA IPTV Web Version..."

# Build for production
echo "📦 Building web version..."
if ! flutter build web --release --web-renderer html; then
    echo "❌ Flutter build failed"
    exit 1
fi

# Copy to deployment directory
echo "📁 Preparing deployment files..."
cp -r build/web/* /var/www/html/ 2>/dev/null || echo "Note: /var/www/html not available"

# Create deployment package
echo "📦 Creating deployment package..."
if ! cd build; then
    echo "❌ Failed to access build directory"
    exit 1
fi
tar -czf risa-iptv-web.tar.gz web/
echo "✅ Package created: build/risa-iptv-web.tar.gz"

echo "🎉 Web deployment ready!"
echo ""
echo "📋 Deployment Options:"
echo "1. Upload build/web/ folder to any web hosting"
echo "2. Use risa-iptv-web.tar.gz for easy deployment"
echo "3. Serve locally: cd build/web && python3 -m http.server 8080"
echo ""
echo "🌐 Features included:"
echo "✅ PWA installable app"
echo "✅ Responsive design"
echo "✅ All navigation routes"
echo "✅ Video streaming"
echo "✅ Search functionality"