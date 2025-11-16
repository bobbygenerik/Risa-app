# AI Upscaling Model Setup Guide

## Overview

The AI upscaling feature uses TensorFlow Lite models to enhance video quality in real-time. This guide helps you download and configure the models.

---

## Quick Start

The app works **without** any model files - the AI upscaling feature will simply be disabled until you add a model. No errors or crashes!

---

## Model Options

### Option 1: ESRGAN (Recommended for Quality)

**Best for**: High-quality upscaling, good GPU support
**Speed**: Medium (~30-60 FPS on GPU)
**Quality**: Excellent
**Model size**: ~16 MB

### Option 2: FSRCNN (Recommended for Speed)

**Best for**: Real-time upscaling, works well on CPU
**Speed**: Fast (~60-120 FPS on GPU, 20-40 FPS on CPU)
**Quality**: Good
**Model size**: ~40 KB

### Option 3: SRCNN (Lightweight)

**Best for**: Low-end devices, minimal size
**Speed**: Very fast (~120+ FPS on GPU)
**Quality**: Decent
**Model size**: ~20 KB

---

## Method 1: Pre-Converted Models (Easiest)

### Step 1: Download Pre-Converted TFLite Model

Visit these repositories for ready-to-use models:

1. **FSRCNN** (Recommended):
   - [TFLite FSRCNN Models](https://github.com/fannymonori/TF-ESPCN)
   - Download `fsrcnn_x2.tflite`

2. **ESRGAN**:
   - [TFLite Super Resolution](https://tfhub.dev/captain-pool/esrgan-tf2/1)
   - Look for converted .tflite versions

### Step 2: Place in Assets Folder

```bash
# Copy your downloaded model
cp ~/Downloads/fsrcnn_x2.tflite ~/iptv-player/assets/models/esrgan_x2.tflite

# Or for ESRGAN specifically
cp ~/Downloads/esrgan_x2.tflite ~/iptv-player/assets/models/esrgan_x2.tflite
```

### Step 3: Rebuild App

```bash
cd ~/iptv-player
flutter clean
flutter pub get
flutter build apk  # or: flutter run
```

---

## Method 2: Convert Your Own Model

### Prerequisites

```bash
pip install tensorflow tensorflowjs
```

### Step 1: Get Pre-Trained Model

From TensorFlow Hub or train your own:

```python
import tensorflow as tf
import tensorflow_hub as hub

# Download ESRGAN
model = hub.load('https://tfhub.dev/captain-pool/esrgan-tf2/1')
```

### Step 2: Convert to TFLite

```python
import tensorflow as tf

# Load your model
model = tf.keras.models.load_model('path/to/your/model.h5')

# Convert to TFLite
converter = tf.lite.TFLiteConverter.from_keras_model(model)

# Optional optimizations for mobile
converter.optimizations = [tf.lite.Optimize.DEFAULT]
converter.target_spec.supported_types = [tf.float16]  # Use FP16 for smaller size

# Convert
tflite_model = converter.convert()

# Save
with open('esrgan_x2.tflite', 'wb') as f:
    f.write(tflite_model)
```

### Step 3: Test Model Format

```python
import tensorflow as tf

# Load model
interpreter = tf.lite.Interpreter(model_path='esrgan_x2.tflite')
interpreter.allocate_tensors()

# Check input/output shapes
input_details = interpreter.get_input_details()
output_details = interpreter.get_output_details()

print("Input shape:", input_details[0]['shape'])  # Should be [1, ?, ?, 3]
print("Output shape:", output_details[0]['shape'])  # Should be [1, ?*2, ?*2, 3]
```

---

## Method 3: Use Publicly Available Models

### FSRCNN from GitHub

```bash
cd ~/iptv-player/assets/models/

# Clone repo with pre-trained models
git clone https://github.com/Saafke/FSRCNN_Tensorflow.git temp
cp temp/models/FSRCNN_x2.pb .

# Convert to TFLite (requires TensorFlow installed)
python3 << 'PYTHON'
import tensorflow as tf
converter = tf.compat.v1.lite.TFLiteConverter.from_frozen_graph(
    'FSRCNN_x2.pb',
    input_arrays=['input'],
    output_arrays=['output']
)
tflite_model = converter.convert()
with open('esrgan_x2.tflite', 'wb') as f:
    f.write(tflite_model)
PYTHON

# Clean up
rm -rf temp FSRCNN_x2.pb
```

---

## Expected Model Format

The app expects:

- **File path**: `assets/models/esrgan_x2.tflite`
- **Input tensor**: `[1, height, width, 3]` (RGB image, float32, normalized 0-1)
- **Output tensor**: `[1, height*2, width*2, 3]` (2x upscaled image)
- **Data type**: FLOAT32 or FLOAT16

---

## Testing the Model

### In-App Test

1. Launch the app
2. Go to Settings → Playback
3. Find "AI Enhancement" section
4. Toggle "Enable AI Upscaling"
5. Check "GPU Acceleration" status:
   - ✓ Available = Model loaded successfully with GPU
   - CPU Only = Model loaded but GPU not available
   - ✗ Not Available = Model failed to load

### Performance Check

The app shows estimated FPS:
- **GPU Fast**: 80-120 FPS
- **GPU Balanced**: 50-80 FPS
- **GPU Quality**: 30-60 FPS
- **CPU Fast**: 20-40 FPS
- **CPU Balanced**: 10-25 FPS
- **CPU Quality**: 5-15 FPS

---

## Troubleshooting

### "Model failed to load" Error

**Possible causes:**
1. Model file not in correct location
2. Invalid TFLite format
3. Incompatible input/output shapes

**Solution:**
```bash
# Verify file exists
ls -lh ~/iptv-player/assets/models/esrgan_x2.tflite

# Check Flutter asset configuration
cat ~/iptv-player/pubspec.yaml | grep -A 5 "assets:"

# Should see:
#   assets:
#     - assets/models/
```

### "GPU not available" Warning

**This is normal on:**
- Desktop Linux (no GPU delegate)
- Emulators
- Some older Android devices

**Solution:**
- The app will automatically fall back to CPU
- Performance will be slower but still functional
- Consider using "Fast" quality preset for CPU

### Poor Performance (Low FPS)

**Solutions:**
1. Use "Fast" quality preset (32px tiles)
2. Disable AI upscaling for low-end devices
3. Try FSRCNN instead of ESRGAN
4. Ensure GPU acceleration is working

---

## Model Comparison

| Model   | Size  | Speed (GPU) | Speed (CPU) | Quality | Best For            |
|---------|-------|-------------|-------------|---------|---------------------|
| SRCNN   | 20KB  | 120+ FPS    | 40+ FPS     | Decent  | Low-end devices     |
| FSRCNN  | 40KB  | 80-120 FPS  | 20-40 FPS   | Good    | Real-time playback  |
| ESRGAN  | 16MB  | 30-60 FPS   | 5-15 FPS    | Best    | High-quality upscale|

---

## Custom Training (Advanced)

If you want to train your own model for specific content:

```python
import tensorflow as tf
from tensorflow import keras

# Define SRCNN model
def create_srcnn(scale=2):
    model = keras.Sequential([
        keras.layers.Conv2D(64, 9, padding='same', activation='relu', input_shape=(None, None, 3)),
        keras.layers.Conv2D(32, 1, padding='same', activation='relu'),
        keras.layers.Conv2D(3, 5, padding='same')
    ])
    return model

# Train on your dataset
model = create_srcnn()
model.compile(optimizer='adam', loss='mse')
model.fit(low_res_images, high_res_images, epochs=100)

# Convert and save
converter = tf.lite.TFLiteConverter.from_keras_model(model)
tflite_model = converter.convert()
with open('custom_model.tflite', 'wb') as f:
    f.write(tflite_model)
```

---

## Recommended Setup for Different Use Cases

### For Most Users: FSRCNN
```bash
# Fast, small, good quality
wget https://example.com/fsrcnn_x2.tflite -O assets/models/esrgan_x2.tflite
```

### For Quality Enthusiasts: ESRGAN
```bash
# Larger, slower, best quality
wget https://example.com/esrgan_x2.tflite -O assets/models/esrgan_x2.tflite
```

### For Development: Skip It
```bash
# Just don't add any model - feature will be gracefully disabled
# Perfect for testing other features without the extra complexity
```

---

## What Happens Without a Model?

The app handles missing models gracefully:

1. ✓ App launches normally
2. ✓ Video playback works fine
3. ✓ All other features functional
4. ✗ AI upscaling toggle is disabled
5. ℹ️ Shows message: "AI model not found. See AI_MODEL_SETUP_GUIDE.md"

**No crashes, no errors - just a disabled feature!**

---

## Legal Note

- Use only models with permissive licenses (Apache 2.0, MIT, etc.)
- Check license before using pre-trained models
- ESRGAN: Apache 2.0 license (commercial use OK)
- FSRCNN/SRCNN: Generally open source

---

## Performance Tips

1. **Start with "Fast" preset** - test if quality is acceptable
2. **Use GPU when available** - 3-5x faster than CPU
3. **Lower quality for CPU-only** - more responsive playback
4. **Test on target device** - performance varies greatly
5. **Monitor device temperature** - AI upscaling is intensive

---

## Next Steps

After setup:
1. Add model file to assets/models/
2. Rebuild app with `flutter clean && flutter run`
3. Enable AI upscaling in Settings
4. Test with different quality presets
5. Monitor FPS and adjust as needed

---

**Status**: Model file optional - app works without it
**Setup time**: ~10 minutes (if using pre-converted models)
**Cost**: FREE (all models are open source)

