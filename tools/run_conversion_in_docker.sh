#!/bin/bash
set -e

cd /workspace/tools

python3 convert_onnx_to_tflite.py

echo "Conversion complete. TFLite models are in /workspace/tools/tflite_models/"
