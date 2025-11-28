#!/bin/bash
# Roku IPTV App - Deploy Script

set -e

ROKU_IP=$1
ROKU_PASSWORD=$2

if [ -z "$ROKU_IP" ]; then
    echo "❌ Error: Roku IP address required"
    echo ""
    echo "Usage: ./deploy.sh <ROKU_IP> <PASSWORD>"
    echo "Example: ./deploy.sh 192.168.1.100 mypassword"
    echo ""
    echo "To find your Roku IP:"
    echo "  Settings → Network → About"
    exit 1
fi

if [ -z "$ROKU_PASSWORD" ]; then
    echo "❌ Error: Roku developer password required"
    echo ""
    echo "Usage: ./deploy.sh <ROKU_IP> <PASSWORD>"
    echo ""
    echo "To enable developer mode:"
    echo "  Press: Home 3x, Up 2x, Right, Left, Right, Left, Right"
    exit 1
fi

cd "$(dirname "$0")"

if [ ! -f "out/roku.zip" ]; then
    echo "📦 Package not found. Building..."
    ./build.sh
fi

echo "🚀 Deploying to Roku at $ROKU_IP..."
echo ""

# Deploy package
curl -s -u "rokudev:$ROKU_PASSWORD" \
    -F "mysubmit=Install" \
    -F "archive=@out/roku.zip" \
    "http://$ROKU_IP:80/plugin_install" > /tmp/roku_deploy.html

# Check result
if grep -q "Install Success" /tmp/roku_deploy.html; then
    echo "✅ Deployment successful!"
    echo ""
    echo "📺 App installed on Roku"
    echo "   Launch from home screen: RISA IPTV"
    echo ""
    echo "🔍 Debug console:"
    echo "   telnet $ROKU_IP 8085"
elif grep -q "Identical to previous version" /tmp/roku_deploy.html; then
    echo "⚠️  Package identical to previous version"
    echo "   App already up to date"
else
    echo "❌ Deployment failed"
    echo ""
    echo "Troubleshooting:"
    echo "  1. Verify Roku IP: $ROKU_IP"
    echo "  2. Check developer mode is enabled"
    echo "  3. Verify password is correct"
    echo "  4. Try: ping $ROKU_IP"
    exit 1
fi
