# Quick Diagnostic Reference

## Run Diagnostic Script
```bash
./diagnose_shield.sh 192.168.1.100
# Replace with your Shield's IP address
```

## Manual Log Capture
```bash
# Connect
adb connect <shield-ip>:5555

# Clear and monitor
adb logcat -c
adb logcat | grep -E "RisaTap|RisaPlayer|RisaVLC"
```

## Expected Log Flow (Success)
```
RisaTap: === CHANNEL TAP START ===
RisaTap: Channel: <name>
RisaTap: Stream URL: <url>
RisaTap: Navigating to player screen...
RisaPlayer: === VIDEO PLAYER INIT START ===
RisaVLC: === VLC WIDGET INIT START ===
RisaVLC: === VLC CONTROLLER CONSTRUCTOR ===
RisaVLC: VLC listener attached successfully
RisaVLC: === VLC WIDGET INIT COMPLETE ===
RisaPlayer: === VIDEO PLAYER INIT COMPLETE ===
RisaTap: === CHANNEL TAP END ===
```

## Common Failure Points

### 1. Tap Not Registered
**Symptom**: No "=== CHANNEL TAP START ===" log
**Cause**: UI frozen, focus issue, or tap handler not called
**Fix**: Check for frame jank, ensure channel card is focusable

### 2. Navigation Fails
**Symptom**: "TAP START" but no "PLAYER INIT START"
**Cause**: GoRouter issue, context invalid
**Fix**: Check router configuration, ensure context is valid

### 3. VLC Controller Creation Fails
**Symptom**: "VLC WIDGET INIT" but "VLC CONTROLLER CREATE ERROR"
**Cause**: VLC plugin not registered, method channel issue
**Fix**: Check MainActivity.kt, ensure no duplicate registration

### 4. VLC Listener Fails
**Symptom**: "VLC CONTROLLER CONSTRUCTOR" but "VLC LISTENER ATTACH ERROR"
**Cause**: VLC controller in invalid state
**Fix**: Check VLC plugin version, ensure controller is valid

## Performance Checks

### Frame Jank
```bash
adb logcat | grep "Skipped.*frames"
```
**Threshold**: >60 frames = severe jank
**Fix**: Reduce main thread work, defer heavy operations

### DB Locks
```bash
adb logcat | grep "database has been locked"
```
**Threshold**: >5 seconds = problem
**Fix**: Increase busy_timeout, batch writes, defer reads

### Memory Pressure
```bash
adb logcat | grep "Failed to decode image"
```
**Threshold**: >10 failures = memory issue
**Fix**: Reduce image cache, disable artwork on Shield

## Build and Deploy
```bash
# Build APK
flutter build apk --profile

# Install on Shield
adb install -r build/app/outputs/flutter-apk/app-profile.apk

# Launch app
adb shell am start -n com.risa.app/.MainActivity
```

## Useful ADB Commands
```bash
# Check if Shield is connected
adb devices

# Get Shield IP (if connected via USB)
adb shell ip addr show wlan0 | grep inet

# Force stop app
adb shell am force-stop com.risa.app

# Clear app data
adb shell pm clear com.risa.app

# Monitor memory
adb shell dumpsys meminfo com.risa.app

# Monitor CPU
adb shell top -n 1 | grep com.risa.app
```
