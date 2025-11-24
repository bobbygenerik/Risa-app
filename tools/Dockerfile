# Use official Python 3.10 image
FROM python:3.10-slim

WORKDIR /workspace

# Install system dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    cmake \
    git \
    && rm -rf /var/lib/apt/lists/*

# Install Python dependencies
RUN pip install --upgrade pip && \
    pip install torch==2.1.0 openai-whisper onnx==1.14.1 onnx-tf==1.10.0 tensorflow==2.15.0 tensorflow-probability[tf]

# Copy conversion scripts and models
COPY tools/ /workspace/tools/

CMD ["bash"]
