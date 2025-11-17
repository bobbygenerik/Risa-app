# Cloud & On-Device AI Upscaling

## ✅ **New Features Implemented**

### 1. **Cloud Sync (Removed)** ☁️

The cloud sync feature has been removed from the app and replaced by a local export/import backup workflow. Use the Local Backup tools in `Settings > Account` to export your data as a JSON file and import it on another device.

- **Where to find it**: `Settings > Account > Local Backup` (Export / Import)
- **Notes**: Local backups are stored as files the user selects; they are not uploaded to any cloud by the app.

---

### 2. **On-Device AI Upscaling** 🎮

**Location**: Will be added to Settings > Playback > Video Enhancement

**Features**:
- ✅ **100% FREE** - No cloud API costs
- ✅ Real-time video upscaling (2x resolution)
- ✅ GPU acceleration support (when available)
- ✅ Three quality presets:
  - **Fast** (32x32 tiles) - Best performance
  - **Balanced** (64x64 tiles) - Good quality & performance
  - **Quality** (128x128 tiles) - Best quality
- ✅ Tile-based processing for large frames
- ✅ Automatic CPU fallback if no GPU
- ✅ Performance metrics display

**How It Works**:
1. Uses TensorFlow Lite for on-device inference
2. Processes video frames in real-time
3. Divides frames into tiles for efficient processing
4. Uses ESRGAN-style upscaling model
5. Outputs 2x resolution (e.g., 720p → 1440p)

**Performance Estimates**:
- **With GPU**:
  - 480p: ~120 FPS (real-time)
  - 720p: ~60 FPS (real-time)
  - 1080p: ~30 FPS (real-time)
- **CPU Only**:
  - 480p: ~40 FPS (usable)
  - 720p: ~20 FPS (usable)
  - 1080p: ~10 FPS (may stutter)

**Requirements**:
- Model file: `assets/models/esrgan_x2.tflite` (needs to be added)
- GPU recommended for smooth 1080p upscaling
- Works on CPU with reduced performance

---

## 📋 Implementation Status

### Cloud Sync — Removed
- The previous cloud sync service has been removed and is no longer supported in the application.
- Use the `Local Backup` export/import workflow instead (`Settings > Account`).

### AI Upscaling Service ✅
- [x] Service file created: `lib/services/ai_upscaling_service.dart`
- [x] TensorFlow Lite integration
- [x] GPU delegate support
- [x] Tile-based processing
- [x] Quality presets
- [x] Performance metrics
- [ ] **TODO**: Add UI to settings screen
- [ ] **TODO**: Add to providers in main.dart
- [ ] **TODO**: Download/add AI model file
- [ ] **TODO**: Integrate with video player

### Dependencies Added ✅
```yaml
# AI Upscaling (FREE - on-device)
tflite_flutter: ^0.11.0
image: ^4.3.0
```

---

## 🚀 Next Steps to Complete

### 1. Add UI to Settings Screen

Add the AI upscaling controls to `_buildPlaybackSettings()` and provide a local Backup/Restore entry under `Settings > Account`.

Example AI settings card to add to `_buildPlaybackSettings()`:

```dart
_buildSectionCard(
  title: 'AI Video Enhancement',
  subtitle: 'On-device upscaling for better quality (FREE)',
  children: [
    SwitchListTile(
      title: Text('Enable AI Upscaling'),
      subtitle: Text('Upscale video to 2x resolution using on-device AI'),
      value: _aiUpscalingEnabled,
      onChanged: (value) {
        setState(() {
          _aiUpscalingEnabled = value;
        });
      },
    ),
    _buildDropdown(
      'Quality Preset',
      _aiQuality,
      ['Fast', 'Balanced', 'Quality'],
      (value) {
        setState(() {
          _aiQuality = value!;
        });
      },
    ),
  ],
),
```

And add a simple local backup section under `Settings > Account` (Export / Import JSON backup).

### 2. Update Main.dart

Add AI provider to `main.dart` providers list if not already present:

```dart
ChangeNotifierProvider(create: (_) => AIUpscalingService()..initialize()),
```

### 3. Add AI Model File

Download a pre-trained ESRGAN model or lightweight alternative and add to `assets/models/`:

```yaml
flutter:
  assets:
    - assets/models/esrgan_x2.tflite
```

---

## 💡 Usage Examples

### Local Backup (Usage Example)

Export and import JSON backups from `Settings > Account`.

```dart
// Example: read a local backup file and parse JSON
final file = await FilePicker.platform.pickFiles();
if (file != null) {
  final contents = await File(file.files.single.path!).readAsString();
  final data = jsonDecode(contents) as Map<String, dynamic>;
  // Restore preferences/playlists from `data`
}
```

### AI Upscaling

```dart
final aiUpscaling = Provider.of<AIUpscalingService>(context);

// Initialize
await aiUpscaling.initialize();

// Enable upscaling
aiUpscaling.setEnabled(true);
aiUpscaling.setQuality('Balanced');

// Upscale a frame
final upscaledFrame = await aiUpscaling.upscaleFrame(
  frameData,
  width,
  height,
);
```

---

## 🎯 Benefits

### Local Backup
- ✅ No backend server needed
- ✅ No database costs
- ✅ No storage costs (uses user-chosen location)
- ✅ Manual export/import workflow
- ✅ User controls their data

### On-Device AI Upscaling
- ✅ No API costs
- ✅ No internet required
- ✅ Privacy (all processing local)
- ✅ Low latency
- ✅ Works offline
- ✅ GPU accelerated

---

## ⚠️ Limitations & Considerations

### Local Backup
- Requires user action to export/import
- Limited by user's device storage

### AI Upscaling
- Requires decent GPU for smooth 1080p
- Model file adds ~2-5MB to app size
- May increase power consumption
- Performance varies by device
- 2x upscaling only (could add more models for 4x)

---

## 📊 Comparison with Alternatives

### Cloud Sync Alternatives
| Solution | Cost | Storage | Control |
|----------|------|---------|---------|
| Firebase | $0.026/GB | Pay as you go | Google owns |
| AWS S3 | $0.023/GB | Pay as you go | AWS owns |
| Custom Server | $5-50/mo | Variable | You manage |

**Winner**: Evaluate based on your needs (no built-in cloud sync in this build)

### AI Upscaling Alternatives
| Solution | Cost | Speed | Quality |
|----------|------|-------|---------|
| **On-Device TFLite** | FREE | Fast with GPU | Good |
| Topaz Video AI | $299 | Slow | Excellent |
| Cloud AI APIs | $0.01-0.10/min | Variable | Good |
| Native Upscaling | FREE | Very fast | Poor |

**Winner**: On-Device (FREE + Fast + Private)

---

**Status**: Services implemented, UI integration pending
**Next**: Add UI sections to settings screen and configure OAuth

