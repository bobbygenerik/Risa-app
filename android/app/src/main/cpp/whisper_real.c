#include <jni.h>
#include <android/log.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "whisper.h"

#define LOG_TAG "WhisperJNI"
#define LOGI(...) __android_log_print(ANDROID_LOG_INFO, LOG_TAG, __VA_ARGS__)
#define LOGE(...) __android_log_print(ANDROID_LOG_ERROR, LOG_TAG, __VA_ARGS__)

// Simple WAV reader for 16kHz mono
int read_wav_simple(const char* fname, float** pcmf32, int* n_samples) {
    FILE* f = fopen(fname, "rb");
    if (!f) {
        LOGE("Failed to open WAV file: %s", fname);
        return 0;
    }
    
    // Skip WAV header (44 bytes)
    fseek(f, 44, SEEK_SET);
    
    // Read samples
    fseek(f, 0, SEEK_END);
    long file_size = ftell(f);
    fseek(f, 44, SEEK_SET);
    
    int sample_count = (file_size - 44) / 2; // 16-bit samples
    short* pcm16 = malloc(sample_count * sizeof(short));
    
    if (fread(pcm16, sizeof(short), sample_count, f) != sample_count) {
        LOGE("Failed to read WAV data");
        free(pcm16);
        fclose(f);
        return 0;
    }
    fclose(f);
    
    // Convert to float
    *pcmf32 = malloc(sample_count * sizeof(float));
    *n_samples = sample_count;
    
    for (int i = 0; i < sample_count; i++) {
        (*pcmf32)[i] = (float)pcm16[i] / 32768.0f;
    }
    
    free(pcm16);
    return 1;
}

JNIEXPORT jstring JNICALL
Java_com_risa_iptv_WhisperLib_nativeTranscribe(JNIEnv *env, jobject thiz, jstring audioPath, jstring modelPath) {
    const char *audio_path = (*env)->GetStringUTFChars(env, audioPath, NULL);
    const char *model_path = (*env)->GetStringUTFChars(env, modelPath, NULL);
    
    LOGI("Starting Whisper transcription: audio=%s, model=%s", audio_path, model_path);
    
    // Initialize Whisper
    struct whisper_context* ctx = whisper_init_from_file(model_path);
    
    if (!ctx) {
        LOGE("Failed to initialize Whisper context");
        (*env)->ReleaseStringUTFChars(env, audioPath, audio_path);
        (*env)->ReleaseStringUTFChars(env, modelPath, model_path);
        return (*env)->NewStringUTF(env, "");
    }
    
    // Read audio
    float* pcmf32;
    int n_samples;
    if (!read_wav_simple(audio_path, &pcmf32, &n_samples)) {
        LOGE("Failed to read audio file");
        whisper_free(ctx);
        (*env)->ReleaseStringUTFChars(env, audioPath, audio_path);
        (*env)->ReleaseStringUTFChars(env, modelPath, model_path);
        return (*env)->NewStringUTF(env, "");
    }
    
    // Set up parameters
    struct whisper_full_params wparams = whisper_full_default_params(WHISPER_SAMPLING_GREEDY);
    wparams.print_realtime = false;
    wparams.print_progress = false;
    wparams.print_timestamps = false;
    wparams.print_special = false;
    wparams.translate = false;
    wparams.language = "en";
    wparams.n_threads = 4;
    
    // Run inference
    if (whisper_full(ctx, wparams, pcmf32, n_samples) != 0) {
        LOGE("Failed to run Whisper inference");
        free(pcmf32);
        whisper_free(ctx);
        (*env)->ReleaseStringUTFChars(env, audioPath, audio_path);
        (*env)->ReleaseStringUTFChars(env, modelPath, model_path);
        return (*env)->NewStringUTF(env, "");
    }
    
    // Get results
    char result[4096] = {0};
    const int n_segments = whisper_full_n_segments(ctx);
    
    for (int i = 0; i < n_segments; i++) {
        const char* text = whisper_full_get_segment_text(ctx, i);
        strncat(result, text, sizeof(result) - strlen(result) - 1);
    }
    
    // Cleanup
    free(pcmf32);
    whisper_free(ctx);
    (*env)->ReleaseStringUTFChars(env, audioPath, audio_path);
    (*env)->ReleaseStringUTFChars(env, modelPath, model_path);
    
    LOGI("Transcription completed: %s", result);
    return (*env)->NewStringUTF(env, result);
}