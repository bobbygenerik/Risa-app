# Google OAuth Setup Guide

## Overview

To enable Google Drive sync, you need to configure OAuth 2.0 credentials through Google Cloud Console.

---

## Step 1: Create Google Cloud Project

1. Go to [Google Cloud Console](https://console.cloud.google.com/)
2. Click "Select a project" → "New Project"
3. Enter project name: **StreamHub**
4. Click "Create"

---

## Step 2: Enable Google Drive API

1. In your project, go to "APIs & Services" → "Library"
2. Search for "Google Drive API"
3. Click on it and press "Enable"

---

## Step 3: Configure OAuth Consent Screen

1. Go to "APIs & Services" → "OAuth consent screen"
2. Select "External" user type
3. Click "Create"
4. Fill in required fields:
   - **App name**: Stream Hub
   - **User support email**: your email
   - **Developer contact**: your email
5. Click "Save and Continue"
6. **Scopes**: Click "Add or Remove Scopes"
   - Add: `https://www.googleapis.com/auth/drive.file`
   - Add: `https://www.googleapis.com/auth/drive.appdata`
7. Click "Save and Continue"
8. **Test users**: Add your Gmail address for testing
9. Click "Save and Continue"

---

## Step 4: Create OAuth 2.0 Credentials

### For Android:

1. Go to "APIs & Services" → "Credentials"
2. Click "Create Credentials" → "OAuth 2.0 Client ID"
3. Select "Android"
4. **Package name**: `com.example.iptv_player` (or your package name)
5. **SHA-1**: Get from your debug/release keystore:

```bash
# For debug keystore:
keytool -list -v -keystore ~/.android/debug.keystore -alias androiddebugkey -storepass android -keypass android

# For release keystore:
keytool -list -v -keystore /path/to/your/keystore.jks -alias your_alias
```

6. Copy the SHA-1 fingerprint and paste it
7. Click "Create"

### For iOS:

1. Click "Create Credentials" → "OAuth 2.0 Client ID"
2. Select "iOS"
3. **Bundle ID**: `com.example.iptvPlayer` (from ios/Runner.xcodeproj)
4. Click "Create"
5. Download the configuration file

### For Web/Desktop:

1. Click "Create Credentials" → "OAuth 2.0 Client ID"
2. Select "Web application"
3. Add authorized redirect URIs:
   - `http://localhost`
   - `http://localhost:8080`
4. Click "Create"
5. **Save the Client ID** - you'll need it later

---

## Step 5: Configure Android App

Edit `android/app/src/main/AndroidManifest.xml`:

```xml
<manifest ...>
    <application ...>
        <!-- Add inside <application> tag -->
        <meta-data
            android:name="com.google.android.gms.version"
            android:value="@integer/google_play_services_version" />
    </application>
</manifest>
```

No additional configuration needed - google_sign_in handles it automatically!

---

## Step 6: Configure iOS App

Edit `ios/Runner/Info.plist`:

```xml
<key>CFBundleURLTypes</key>
<array>
    <dict>
        <key>CFBundleTypeRole</key>
        <string>Editor</string>
        <key>CFBundleURLSchemes</key>
        <array>
            <!-- Replace with your OAuth Client ID (reversed) -->
            <string>com.googleusercontent.apps.YOUR_CLIENT_ID_HERE</string>
        </array>
    </dict>
</array>

<!-- Also add GoogleService-Info.plist if using Firebase -->
```

---

## Step 7: Test the Integration

1. Run `flutter pub get` to ensure all dependencies are downloaded
2. Run the app:
```bash
flutter run -d linux  # or android, ios, etc.
```

3. Go to Settings → Account
4. Click "Sign In with Google"
5. Select your Google account
6. Grant permissions
7. You should see "Successfully signed in!"

---

## Troubleshooting

### "Sign in failed" Error

**Possible causes:**
1. OAuth consent screen not configured properly
2. Your email not added to test users
3. Wrong SHA-1 fingerprint (Android)
4. Wrong bundle ID (iOS)

**Solution:**
- Double-check all configuration steps
- Ensure you're using the debug SHA-1 for debug builds
- Add your email to test users in OAuth consent screen

### "API not enabled" Error

**Solution:**
1. Go to Google Cloud Console
2. APIs & Services → Library
3. Search "Google Drive API"
4. Click "Enable"

### "DEVELOPER_ERROR" on Android

**Solution:**
1. Verify package name matches in AndroidManifest.xml
2. Regenerate SHA-1:
```bash
cd android
./gradlew signingReport
```
3. Update SHA-1 in OAuth credentials

---

## Environment-Specific Configuration

### Development

Use debug keystore SHA-1:
```bash
keytool -list -v -keystore ~/.android/debug.keystore -alias androiddebugkey -storepass android -keypass android
```

### Production

1. Generate release keystore:
```bash
keytool -genkey -v -keystore ~/key.jks -keyalg RSA -keysize 2048 -validity 10000 -alias key
```

2. Get SHA-1 from release keystore
3. Create separate OAuth credentials for release
4. Update app before publishing

---

## Security Best Practices

1. **Never commit** OAuth credentials to version control
2. **Use environment variables** for sensitive data
3. **Rotate credentials** if exposed
4. **Use different credentials** for dev/prod
5. **Limit scopes** to only what's needed

---

## What Gets Synced?

The app syncs these files to `appDataFolder` in Google Drive:

- `favorites.json` - User's favorite channels
- `playlists.json` - M3U playlist URLs and Xtream credentials
- `watch_history.json` - Recently watched content
- `settings.json` - App preferences

All data is stored as JSON in the hidden `appDataFolder` - users won't see it in their regular Drive files.

---

## Storage Limits

- **Free tier**: 15 GB shared across Gmail, Drive, Photos
- **App data**: Each JSON file is typically < 100 KB
- **Total app usage**: Usually < 1 MB even with extensive data

---

## Alternative: Skip OAuth for Development

If you just want to test the UI without full OAuth:

1. The UI will show "Sign In with Google" button
2. Clicking it will show an error message
3. All other features work normally
4. Just the sync won't function until OAuth is configured

This is fine for development and testing!

---

## Next Steps

After setup:
1. Test sign-in flow
2. Try syncing data (click "Sync Now")
3. Test on multiple devices
4. Try restoring data on a fresh install

---

**Status**: OAuth setup required for Google Drive sync to work
**Time to setup**: ~15 minutes
**Cost**: FREE (Google Cloud free tier)

