#!/bin/bash
# Shield Performance Diagnostic Script
# Usage: ./diagnose_shield.sh [shield-ip]

SHIELD_IP="${1:-192.168.1.100}"
LOG_FILE="shield_diagnostic_$(date +%Y%m%d_%H%M%S).log"

echo "==================================="
echo "Shield Performance Diagnostic Tool"
echo "==================================="
echo ""
echo "Shield IP: $SHIELD_IP"
echo "Log file: $LOG_FILE"
echo ""

# Connect to Shield
echo "[1/5] Connecting to Shield..."
adb connect "$SHIELD_IP:5555"
if [ $? -ne 0 ]; then
    echo "ERROR: Failed to connect to Shield at $SHIELD_IP"
    exit 1
fi
echo "✓ Connected"
echo ""

# Clear logcat
echo "[2/5] Clearing logcat buffer..."
adb logcat -c
echo "✓ Cleared"
echo ""

# Start monitoring
echo "[3/5] Starting log capture..."
echo "Monitoring for: RisaTap, RisaPlayer, RisaVLC, flutter errors"
echo ""
echo "==================================="
echo "NOW TAP A CHANNEL IN THE APP"
echo "==================================="
echo ""
echo "Press Ctrl+C when done to save logs"
echo ""

# Capture logs
adb logcat | tee "$LOG_FILE" | grep --line-buffered -E "RisaTap|RisaPlayer|RisaVLC|flutter.*Error|Skipped.*frames|database has been locked|channel-error"

echo ""
echo "[4/5] Log capture stopped"
echo ""

# Analyze logs
echo "[5/5] Analyzing logs..."
echo ""

if grep -q "=== CHANNEL TAP START ===" "$LOG_FILE"; then
    echo "✓ Channel tap detected"
    
    if grep -q "=== VIDEO PLAYER INIT START ===" "$LOG_FILE"; then
        echo "✓ Player initialization started"
        
        if grep -q "=== VLC WIDGET INIT START ===" "$LOG_FILE"; then
            echo "✓ VLC widget initialization started"
            
            if grep -q "=== VLC CONTROLLER CONSTRUCTOR ===" "$LOG_FILE"; then
                echo "✓ VLC controller created"
                
                if grep -q "VLC listener attached successfully" "$LOG_FILE"; then
                    echo "✓ VLC listener attached"
                    echo ""
                    echo "SUCCESS: Full playback flow completed!"
                else
                    echo "✗ VLC listener attachment failed"
                    echo ""
                    echo "ISSUE: VLC controller created but listener failed"
                    echo "Check for VLC controller state errors in full log"
                fi
            else
                echo "✗ VLC controller creation failed"
                echo ""
                echo "ISSUE: VLC controller not created"
                grep "VLC.*ERROR" "$LOG_FILE" | head -5
            fi
        else
            echo "✗ VLC widget initialization not started"
            echo ""
            echo "ISSUE: Player screen loaded but VLC widget not created"
        fi
    else
        echo "✗ Player initialization not started"
        echo ""
        echo "ISSUE: Navigation to player screen failed"
    fi
else
    echo "✗ No channel tap detected"
    echo ""
    echo "ISSUE: Tap event not registered or logged"
fi

echo ""
echo "==================================="
echo "Additional Issues Found:"
echo "==================================="

# Check for frame jank
JANK_COUNT=$(grep -c "Skipped.*frames" "$LOG_FILE")
if [ "$JANK_COUNT" -gt 0 ]; then
    echo "⚠ Frame jank detected: $JANK_COUNT occurrences"
fi

# Check for DB locks
LOCK_COUNT=$(grep -c "database has been locked" "$LOG_FILE")
if [ "$LOCK_COUNT" -gt 0 ]; then
    echo "⚠ Database locks detected: $LOCK_COUNT occurrences"
fi

# Check for channel errors
CHANNEL_ERROR_COUNT=$(grep -c "channel-error" "$LOG_FILE")
if [ "$CHANNEL_ERROR_COUNT" -gt 0 ]; then
    echo "⚠ Channel errors detected: $CHANNEL_ERROR_COUNT occurrences"
fi

echo ""
echo "Full log saved to: $LOG_FILE"
echo ""
echo "To view full log: cat $LOG_FILE"
echo "To search log: grep 'pattern' $LOG_FILE"
