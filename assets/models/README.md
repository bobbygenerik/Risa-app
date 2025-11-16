# AI Upscaling Model

## Placeholder

This directory should contain the TensorFlow Lite model file for AI upscaling.

## To Add the Model:

1. Download a pre-trained ESRGAN or SRCNN model
2. Convert to TensorFlow Lite format (.tflite)
3. Name it `esrgan_x2.tflite`
4. Place it in this directory

## Recommended Models:

- **ESRGAN** (Enhanced Super-Resolution GAN) - Best quality
- **SRCNN** (Super-Resolution CNN) - Faster, smaller file
- **FSRCNN** (Fast SRCNN) - Fastest option

## Model Sources:

- TensorFlow Hub: https://tfhub.dev/
- GitHub repositories with pre-trained models
- Convert PyTorch models using `tf.lite.TFLiteConverter`

## For Testing:

The app will work without the model - it just won't enable AI upscaling.
A placeholder/dummy model can be created for testing UI only.
