# Roku Device Deployment Guide

## Quick Start: Deploy to Your Roku Device

### Prerequisites
1. ✅ Build completed successfully (roku.zip in `./out/`)
2. Roku device on same network as your dev machine
3. Roku device in developer mode enabled

---

## Step 1: Prepare Your Roku Device

### Enable Developer Mode
1. On your Roku device, press **Home** button
2. Go to **Settings**
3. Go to **Developer Options** (may require navigation)
4. Enable **Developer Mode**
5. Note the **IP Address** (Settings → Network → About)
6. Note the **HTTP Port** (usually 8060)

Example IP: `192.168.1.100`

---

## Step 2: Deploy Using roku-deploy

### Quick Deployment
```bash
cd /root/iptv-player/roku
roku-deploy --host 192.168.1.100 --user rokudev --password YourPassword --out roku.pkg ./out/
```

Replace:
- `192.168.1.100` with your Roku IP address
- `YourPassword` with the password shown in developer mode

### Verbose Output (For Troubleshooting)
```bash
roku-deploy --host 192.168.1.100 --user rokudev --password YourPassword --out roku.pkg ./out/ --verbose
```

---

## Step 3: Launch on Roku

1. After deployment succeeds, check Roku home screen
2. Look for "IPTV Player" in the apps list
3. Select and press **OK** to launch
4. Channel should initialize

---

## Alternative: Manual Deployment with curl

If roku-deploy has issues:

```bash
# Create deployment package
cd /root/iptv-player/roku
zip -r roku.pkg out/

# Deploy via curl
curl -F "mysubmit=Install" -F "archive=@roku.pkg" http://192.168.1.100:8060/plugin_install
```

---

## Step 4: Initial Configuration

### First Launch
1. App will attempt to load default M3U playlist
2. If no playlist URL configured, you'll see empty channel grid

### Configure Playlist URL
The app needs:
- **M3U Playlist URL**: Your IPTV playlist (M3U format)
- **EPG XML URL**: Electronic Program Guide (XMLTV format)
- **Google Drive** (optional): For cloud sync

---

## Verification

### Successful Deployment Indicators
- ✅ App appears in Roku home screen
- ✅ App launches without crashing
- ✅ Main screen shows
- ✅ Channel grid displays (once playlist URL set)

### Debug Connection
```bash
telnet 192.168.1.100 8085
```
This opens debug console to see app logs

---

## Troubleshooting

### "Connection Refused"
```bash
# Check if device is reachable
ping 192.168.1.100

# Verify developer mode is enabled
# Try enabling it again
```

### "Install Failed"
```bash
# Clean previous installation
curl http://192.168.1.100:8060/plugin_ecp_launch -d "plugin_monitor=http://192.168.1.100:8060"

# Retry deployment
roku-deploy --host 192.168.1.100 --user rokudev --password YourPassword --out roku.pkg ./out/
```

### App Crashes on Launch
1. Check device debug logs: `telnet <ROKU_IP> 8085`
2. Look for error messages
3. Rebuild BrightScript files: `bsc`
4. Redeploy: `roku-deploy ...`

---

## Finding Your Roku Device IP

### Method 1: Device Settings
1. Press **Home** on Roku remote
2. Go to **Settings**
3. Go to **Network**
4. Select **About**
5. IP address shown at top

### Method 2: Router Admin
1. Log in to your router
2. Check connected devices
3. Look for device named "Roku"

### Method 3: Network Scan
```bash
nmap -p 8060 192.168.1.0/24
```
(Install nmap if needed: `sudo apt-get install nmap`)

---

## Network Debugging

### Verify Connectivity
```bash
# Ping device
ping 192.168.1.100

# Check SSH port
nc -zv 192.168.1.100 8085

# Get device info
curl http://192.168.1.100:8060/query/device-info
```

### View Device XML Info
```bash
curl http://192.168.1.100:8060/query/device-info | xmllint --format -
```

---

## Build & Deploy Workflow

### Quick Rebuild and Redeploy
```bash
#!/bin/bash
cd /root/iptv-player/roku

# Rebuild
bsc && echo "✅ Build successful" || echo "❌ Build failed"

# Redeploy
if [ $? -eq 0 ]; then
    roku-deploy --host 192.168.1.100 --user rokudev --password Password --out roku.pkg ./out/
    echo "✅ Deployment complete"
fi
```

Save as `deploy.sh` and run: `bash deploy.sh`

---

## Next Steps After Deployment

### 1. Configure Playlist URL
The app needs an M3U playlist URL. Example format:
```
http://example.com/playlist.m3u
```

### 2. Set EPG URL (Optional)
For program guide data (XMLTV format):
```
http://example.com/guide.xml
```

### 3. Enable Google Drive (Optional)
For cloud sync of playlists and settings:
- Configure OAuth credentials
- Authenticate app with Google Drive

### 4. Test Playback
- Select a channel
- Should start playing video
- Remote controls: Play/Pause, Fast Forward, Rewind

---

## Important Notes

⚠️ **Before First Launch**: Make sure you have:
- Valid M3U playlist URL
- Stable internet connection
- Roku device on same network as content sources

📌 **Developer Mode Password**:
- Default is usually shown in developer options
- Different devices may have different defaults
- Check Roku documentation for your model

🔄 **Auto-Reload During Development**:
```bash
# Watch for file changes and rebuild
bsc --watch
```

---

## Support & Documentation

- **Roku Developer**: https://developer.roku.com
- **BrightScript Docs**: https://developer.roku.com/docs/references/brightscript/
- **roku-deploy GitHub**: https://github.com/rokudev/roku-deploy
- **Project Docs**: `/root/iptv-player/roku/BUILD_STATUS.md`

---

**Ready to deploy!** Follow the Quick Start steps above.
