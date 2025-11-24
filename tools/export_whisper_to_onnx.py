import torch
import whisper
import os

# Directory to save ONNX models
onnx_dir = os.path.join(os.path.dirname(__file__), "onnx_models")
os.makedirs(onnx_dir, exist_ok=True)

# Model sizes to export
model_sizes = ["tiny", "base", "small"]

for size in model_sizes:
    print(f"Loading Whisper model: {size}")
    model = whisper.load_model(size)
    model.eval()

    # Example input: 30 seconds of 16kHz mono audio (480000 samples)
    dummy_input = torch.randn(1, 80, 3000)  # (batch, mel, frames)

    onnx_path = os.path.join(onnx_dir, f"whisper_{size}.onnx")
    print(f"Exporting to ONNX: {onnx_path}")
    torch.onnx.export(
        model.encoder,
        dummy_input,
        onnx_path,
        input_names=["mel"],
        output_names=["output"],
        dynamic_axes={"mel": {0: "batch", 2: "frames"}},
        opset_version=14,
    )
    print(f"Exported {size} encoder to ONNX.")

print("All models exported to ONNX.")
