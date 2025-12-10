cmake_minimum_required(VERSION 3.10.2)

project("whisper_jni")

# Create our JNI library
add_library(whisper_jni SHARED whisper_integrated.c)

# Link libraries
target_link_libraries(whisper_jni
    android
    log
)