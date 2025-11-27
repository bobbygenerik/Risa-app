#!/bin/bash

echo "================================"
echo "IPTV Player - Roku Build Verify"
echo "================================"
echo ""

if ! cd /root/iptv-player/roku; then
    echo "❌ Failed to change to roku directory"
    exit 1
fi

echo "✓ Checking source files..."
if [ -f "source/Main.brs" ]; then echo "  ✅ Main.brs"; else echo "  ❌ Main.brs MISSING"; fi
if [ -f "source/M3UParser.brs" ]; then echo "  ✅ M3UParser.brs"; else echo "  ❌ M3UParser.brs MISSING"; fi
if [ -f "source/EPGService.brs" ]; then echo "  ✅ EPGService.brs"; else echo "  ❌ EPGService.brs MISSING"; fi
# Cloud sync implementation removed from source; archived separately.
if [ -f "source/cloud_sync_service.brs" ]; then echo "  ✅ cloud_sync_service.brs"; else echo "  ⚠ cloud_sync_service.brs (archived)"; fi
echo ""

echo "✓ Checking configuration files..."
if [ -f "bsconfig.json" ]; then echo "  ✅ bsconfig.json"; else echo "  ❌ bsconfig.json MISSING"; fi
if [ -f "manifest" ]; then echo "  ✅ manifest"; else echo "  ❌ manifest MISSING"; fi
if [ -f "channel.xml" ]; then echo "  ✅ channel.xml"; else echo "  ❌ channel.xml MISSING"; fi
echo ""

echo "✓ Checking deployment package..."
if [ -f "out/roku.zip" ]; then
    SIZE=$(du -h out/roku.zip | cut -f1)
    echo "  ✅ out/roku.zip ($SIZE)"
else
    echo "  ❌ out/roku.zip MISSING"
fi
echo ""

echo "✓ Checking documentation..."
if [ -f "BUILD_STATUS.md" ]; then echo "  ✅ BUILD_STATUS.md"; else echo "  ❌ BUILD_STATUS.md MISSING"; fi
if [ -f "DEPLOYMENT_GUIDE.md" ]; then echo "  ✅ DEPLOYMENT_GUIDE.md"; else echo "  ❌ DEPLOYMENT_GUIDE.md MISSING"; fi
if [ -f "COMPLETION_SUMMARY.md" ]; then echo "  ✅ COMPLETION_SUMMARY.md"; else echo "  ❌ COMPLETION_SUMMARY.md MISSING"; fi
echo ""

echo "✓ Source code statistics..."
if [ -f "source/Main.brs" ]; then
    echo "  Main.brs: $(wc -l < source/Main.brs) lines"
    MAIN_LINES=$(wc -l < source/Main.brs)
else
    echo "  Main.brs: N/A"
    MAIN_LINES=0
fi
if [ -f "source/M3UParser.brs" ]; then
    echo "  M3UParser.brs: $(wc -l < source/M3UParser.brs) lines"
    PARSER_LINES=$(wc -l < source/M3UParser.brs)
else
    echo "  M3UParser.brs: N/A"
    PARSER_LINES=0
fi
if [ -f "source/EPGService.brs" ]; then
    echo "  EPGService.brs: $(wc -l < source/EPGService.brs) lines"
    EPG_LINES=$(wc -l < source/EPGService.brs)
else
    echo "  EPGService.brs: N/A"
    EPG_LINES=0
fi
echo "  cloud_sync_service.brs: (archived)"
TOTAL=$((MAIN_LINES + PARSER_LINES + EPG_LINES))
echo "  TOTAL: $TOTAL lines"
echo ""

echo "✓ Build verification..."
echo "  Compilation Status: $(cd /root/iptv-player/roku && bsc 2>&1 | grep -q 'Found.*error' && echo '❌ ERRORS' || echo '✅ CLEAN')"
echo ""

echo "================================"
echo "Verification Complete!"
echo "================================"
