#!/bin/bash
# Deploy Roku IPTV Player to Roku Device
# Usage: ./deploy.sh <roku-device-ip>

set -e

# Colors
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Check arguments
if [ $# -eq 0 ]; then
    echo -e "${YELLOW}Usage: ./deploy.sh <roku-device-ip>${NC}"
    echo ""
    echo "Example: ./deploy.sh 192.168.1.100"
    echo ""
    echo "To find your Roku IP:"
    echo "  1. On Roku: Settings → Network → IP Address"
    echo "  2. Or scan network: nmap -sn 192.168.1.0/24 | grep roku"
    exit 1
fi

ROKU_IP=$1
ROKU_USER="roku"
ROKU_PASS="roku"
PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo -e "${BLUE}╔════════════════════════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║         Roku IPTV Player - Deployment Script              ║${NC}"
echo -e "${BLUE}╚════════════════════════════════════════════════════════════╝${NC}"
echo ""
echo -e "${GREEN}📱 Roku Device IP:${NC} $ROKU_IP"
echo -e "${GREEN}📁 Project Dir:${NC}   $PROJECT_DIR"
echo ""

# Step 1: Verify device is reachable
echo -e "${YELLOW}[1/4]${NC} Checking device connectivity..."
if ! ping -c 1 -W 2 "$ROKU_IP" &> /dev/null; then
    echo -e "${RED}✗ Cannot reach device at $ROKU_IP${NC}"
    echo "Please verify:"
    echo "  1. Roku IP address is correct"
    echo "  2. Roku device is powered on"
    echo "  3. Device is on same network as this machine"
    exit 1
fi
echo -e "${GREEN}✓ Device reachable${NC}"
echo ""

# Step 2: Verify build artifacts exist
echo -e "${YELLOW}[2/4]${NC} Checking build artifacts..."
if [ ! -f "$PROJECT_DIR/out/roku.zip" ]; then
    echo -e "${RED}✗ Build artifacts not found at $PROJECT_DIR/out/roku.zip${NC}"
    echo "Please run: npm run build"
    exit 1
fi
echo -e "${GREEN}✓ Build artifacts ready${NC}"
PACKAGE_SIZE=$(ls -lh "$PROJECT_DIR/out/roku.zip" | awk '{print $5}')
echo "  Size: $PACKAGE_SIZE"
echo ""

# Step 3: Deploy to device
echo -e "${YELLOW}[3/4]${NC} Deploying to Roku device..."
echo "Target: $ROKU_IP:8060"
echo ""

if command -v rookudev &> /dev/null; then
    # Using rookudev
    rookudev build --device "$ROKU_IP" --username "$ROKU_USER" --password "$ROKU_PASS"
    DEPLOY_STATUS=$?
elif command -v roku-deploy &> /dev/null; then
    # Using roku-deploy
    roku-deploy --host "$ROKU_IP" --user "$ROKU_USER" --password "$ROKU_PASS" --out roku.pkg "$PROJECT_DIR/out/"
    DEPLOY_STATUS=$?
else
    echo -e "${RED}✗ Deployment tool not found${NC}"
    echo "Install one of:"
    echo "  • npm install -g roku-deploy"
    echo "  • npm install -g rookudev"
    exit 1
fi

if [ $DEPLOY_STATUS -eq 0 ]; then
    echo -e "${GREEN}✓ Deployment successful!${NC}"
else
    echo -e "${RED}✗ Deployment failed${NC}"
    echo ""
    echo "Troubleshooting:"
    echo "  1. Verify developer mode is enabled on Roku"
    echo "  2. Try telnet: telnet $ROKU_IP 8085"
    echo "  3. Check logs: curl http://$ROKU_IP:8085/logs/lines"
    exit 1
fi
echo ""

# Step 4: Verify deployment
echo -e "${YELLOW}[4/4]${NC} Verifying deployment..."
sleep 2

# Check if device responds
if curl -s "http://$ROKU_IP:8060/" &> /dev/null; then
    echo -e "${GREEN}✓ Device is responding${NC}"
    echo ""
    echo -e "${GREEN}╔════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${GREEN}║           ✅ DEPLOYMENT SUCCESSFUL!                        ║${NC}"
    echo -e "${GREEN}╚════════════════════════════════════════════════════════════╝${NC}"
    echo ""
    echo -e "${BLUE}Next steps:${NC}"
    echo "  1. Look for 'IPTV Player' on your Roku home screen"
    echo "  2. Launch the channel"
    echo "  3. Go to Settings and enter your M3U playlist URL"
    echo "  4. Browse channels and test playback"
    echo ""
    echo -e "${BLUE}Debugging:${NC}"
    echo "  • View logs: telnet $ROKU_IP 8085"
    echo "  • Get device info: rookudev info --device $ROKU_IP"
    echo "  • View HTTP logs: curl http://$ROKU_IP:8085/logs/lines"
else
    echo -e "${YELLOW}⚠ Device not responding yet (may still be initializing)${NC}"
    echo "Try launching the channel on your Roku device in a moment"
fi
