import os
from onnx_tf.backend import prepare
import tensorflow as tf
import onnx

onnx_dir = os.path.join(os.path.dirname(__file__), "onnx_models")
tflite_dir = os.path.join(os.path.dirname(__file__), "tflite_models")
try:
    os.makedirs(tflite_dir, exist_ok=True)
except OSError as e:
    print(f"Error creating directory {tflite_dir}: {e}")
    exit(1)

model_names = ["tiny", "base", "small"]

for name in model_names:
    try:
        onnx_path = os.path.join(onnx_dir, f"whisper_{name}.onnx")
        tflite_path = os.path.join(tflite_dir, f"whisper_{name}.tflite")
        print(f"Converting {onnx_path} to TFLite...")

        # Load ONNX model
        onnx_model = onnx.load(onnx_path)
        tf_rep = prepare(onnx_model)
        tf_model_path = os.path.join(tflite_dir, f"whisper_{name}_saved_model")
        tf_rep.export_graph(tf_model_path)

        # Convert to TFLite
        converter = tf.lite.TFLiteConverter.from_saved_model(tf_model_path)
        # Enable optimizations for quantization (optional, can be commented out)
        converter.optimizations = [tf.lite.Optimize.DEFAULT]
        tflite_model = converter.convert()

        with open(tflite_path, "wb") as f:
            f.write(tflite_model)
        print(f"Saved TFLite model: {tflite_path}")
    except Exception as e:
        print(f"Error converting {name} model: {e}")
        continue

print("All models converted to TFLite.")
