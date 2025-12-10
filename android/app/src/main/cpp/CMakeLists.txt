cmake_minimum_required(VERSION 3.10.2)

project("whisper_jni")

# Add include directory for whisper headers
include_directories(whisper-src)

# Add compiler flags for whisper
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DGGML_USE_PTHREAD=0 -DWHISPER_USE_PTHREAD=0")

# Create our JNI library
add_library(whisper_jni SHARED
    whisper_jni.cpp
    whisper-src/whisper.cpp
    whisper-src/ggml.c
)

# Link libraries
target_link_libraries(whisper_jni
    android
    log
)