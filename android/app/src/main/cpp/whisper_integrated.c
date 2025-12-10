#include <jni.h>
#include <android/log.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <dlfcn.h>

#define LOG_TAG "WhisperJNI"
#define LOGI(...) __android_log_print(ANDROID_LOG_INFO, LOG_TAG, __VA_ARGS__)
#define LOGE(...) __android_log_print(ANDROID_LOG_ERROR, LOG_TAG, __VA_ARGS__)

// Whisper function pointers
typedef struct whisper_context* (*whisper_init_from_file_fn)(const char*);
typedef void (*whisper_free_fn)(struct whisper_context*);
typedef int (*whisper_full_fn)(struct whisper_context*, struct whisper_full_params, const float*, int);
typedef int (*whisper_full_n_segments_fn)(struct whisper_context*);
typedef const char* (*whisper_full_get_segment_text_fn)(struct whisper_context*, int);
typedef struct whisper_full_params (*whisper_full_default_params_fn)(int);

// Function pointers
static whisper_init_from_file_fn whisper_init_from_file_ptr = NULL;
static whisper_free_fn whisper_free_ptr = NULL;
static whisper_full_fn whisper_full_ptr = NULL;
static whisper_full_n_segments_fn whisper_full_n_segments_ptr = NULL;
static whisper_full_get_segment_text_fn whisper_full_get_segment_text_ptr = NULL;
static whisper_full_default_params_fn whisper_full_default_params_ptr = NULL;

static void* whisper_lib = NULL;

// Whisper structures (minimal definitions)
struct whisper_context;

struct whisper_full_params {
    int strategy;
    int n_threads;
    int n_max_text_ctx;
    int offset_ms;
    int duration_ms;
    int translate;
    int no_context;
    int single_segment;
    int print_special;
    int print_progress;
    int print_realtime;
    int print_timestamps;
    int suppress_blank;
    int suppress_non_speech_tokens;
    float temperature;
    float max_initial_ts;
    float length_penalty;
    float temperature_inc;
    float entropy_thold;
    float logprob_thold;
    float no_speech_thold;
    const char* language;
    int detect_language;
    // ... other fields can be added as needed
};

// Load Whisper library dynamically
static int load_whisper_library() {
    if (whisper_lib != NULL) return 1; // Already loaded
    
    whisper_lib = dlopen("libwhisper.so", RTLD_LAZY);
    if (!whisper_lib) {
        LOGE("Failed to load libwhisper.so: %s", dlerror());
        return 0;
    }
    
    whisper_init_from_file_ptr = dlsym(whisper_lib, "whisper_init_from_file");
    whisper_free_ptr = dlsym(whisper_lib, "whisper_free");
    whisper_full_ptr = dlsym(whisper_lib, "whisper_full");
    whisper_full_n_segments_ptr = dlsym(whisper_lib, "whisper_full_n_segments");
    whisper_full_get_segment_text_ptr = dlsym(whisper_lib, "whisper_full_get_segment_text");
    whisper_full_default_params_ptr = dlsym(whisper_lib, "whisper_full_default_params");
    
    if (!whisper_init_from_file_ptr || !whisper_free_ptr || !whisper_full_ptr ||
        !whisper_full_n_segments_ptr || !whisper_full_get_segment_text_ptr ||
        !whisper_full_default_params_ptr) {
        LOGE("Failed to load Whisper functions");
        dlclose(whisper_lib);
        whisper_lib = NULL;
        return 0;
    }
    
    LOGI("Whisper library loaded successfully");
    return 1;
}

// Simple WAV reader
static int read_wav_simple(const char* fname, float** pcmf32, int* n_samples) {
    FILE* f = fopen(fname, "rb");
    if (!f) {
        LOGE("Failed to open WAV file: %s", fname);
        return 0;
    }
    
    // Skip WAV header (44 bytes)
    fseek(f, 44, SEEK_SET);
    
    // Get remaining file size
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
    
    LOGI("Whisper transcription: audio=%s, model=%s", audio_path, model_path);
    
    // Try to load Whisper library
    if (!load_whisper_library()) {
        LOGE("Whisper library not available, using fallback");
        (*env)->ReleaseStringUTFChars(env, audioPath, audio_path);
        (*env)->ReleaseStringUTFChars(env, modelPath, model_path);
        return (*env)->NewStringUTF(env, "[Whisper library not found - install native Whisper to enable transcription]");
    }
    
    // Initialize Whisper
    struct whisper_context* ctx = whisper_init_from_file_ptr(model_path);
    if (!ctx) {
        LOGE("Failed to initialize Whisper context");
        (*env)->ReleaseStringUTFChars(env, audioPath, audio_path);
        (*env)->ReleaseStringUTFChars(env, modelPath, model_path);
        return (*env)->NewStringUTF(env, "[Failed to load Whisper model]");
    }
    
    // Read audio
    float* pcmf32;
    int n_samples;
    if (!read_wav_simple(audio_path, &pcmf32, &n_samples)) {
        LOGE("Failed to read audio file");
        whisper_free_ptr(ctx);
        (*env)->ReleaseStringUTFChars(env, audioPath, audio_path);
        (*env)->ReleaseStringUTFChars(env, modelPath, model_path);
        return (*env)->NewStringUTF(env, "[Failed to read audio file]");
    }
    
    // Set up parameters
    struct whisper_full_params wparams = whisper_full_default_params_ptr(0); // GREEDY
    wparams.print_realtime = 0;
    wparams.print_progress = 0;
    wparams.print_timestamps = 0;
    wparams.print_special = 0;
    wparams.translate = 0;
    wparams.language = "en";
    wparams.n_threads = 4;
    
    // Run inference
    if (whisper_full_ptr(ctx, wparams, pcmf32, n_samples) != 0) {
        LOGE("Failed to run Whisper inference");
        free(pcmf32);
        whisper_free_ptr(ctx);
        (*env)->ReleaseStringUTFChars(env, audioPath, audio_path);
        (*env)->ReleaseStringUTFChars(env, modelPath, model_path);
        return (*env)->NewStringUTF(env, "[Whisper inference failed]");
    }
    
    // Get results
    char result[4096] = {0};
    const int n_segments = whisper_full_n_segments_ptr(ctx);
    
    for (int i = 0; i < n_segments; i++) {
        const char* text = whisper_full_get_segment_text_ptr(ctx, i);
        strncat(result, text, sizeof(result) - strlen(result) - 1);
    }
    
    // Cleanup
    free(pcmf32);
    whisper_free_ptr(ctx);
    (*env)->ReleaseStringUTFChars(env, audioPath, audio_path);
    (*env)->ReleaseStringUTFChars(env, modelPath, model_path);
    
    LOGI("Transcription completed: %s", result);
    return (*env)->NewStringUTF(env, result);
}