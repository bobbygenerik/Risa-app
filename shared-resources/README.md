# Shared Resources

This directory contains resources shared between the Android Auto app and the Flutter companion app.

## Contents

### Icons & Images
- App icon (launcher icon)
- Brand logos
- Shared imagery

### Colors & Themes
- Brand color palette
- Theme definitions
- Style guides

### Constants
- API endpoints
- Shared configuration values
- Feature flags

## Usage

### In Android Auto App
Reference these resources in your Kotlin code or copy to `res/` directory.

### In Flutter Companion App
Import and use in Flutter widgets, or copy assets to `assets/` directory.

## Adding Shared Resources

1. Place files in appropriate subdirectories
2. Update both apps to reference them
3. Maintain consistency across platforms

## Structure

```
shared/
├── icons/
├── images/
├── colors.md          # Color palette documentation
└── constants.md       # Shared constants
```
