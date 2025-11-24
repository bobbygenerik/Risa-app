import whisper

# List of model sizes to download
model_sizes = ["tiny", "base", "small"]

for size in model_sizes:
    print(f"Downloading Whisper model: {size}")
    whisper.load_model(size)
    print(f"Downloaded: {size}")

print("All requested Whisper models downloaded.")
