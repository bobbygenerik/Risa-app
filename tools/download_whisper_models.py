import whisper

# List of model sizes to download
model_sizes = ["tiny", "base", "small"]

for size in model_sizes:
    try:
        print(f"Downloading Whisper model: {size}")
        whisper.load_model(size)
        print(f"Downloaded: {size}")
    except Exception as e:
        print(f"Error downloading {size} model: {e}")
        continue

print("All requested Whisper models downloaded.")
