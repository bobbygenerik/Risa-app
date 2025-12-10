#include <jni.h>
#include <string>
#include <vector>
#include <android/log.h>
#include "whisper.h"



#define LOG_TAG "WhisperJNI"
#define LOGI(...) __android_log_print(ANDROID_LOG_INFO, LOG_TAG, __VA_ARGS__)
#define LOGE(...) __android_log_print(ANDROID_LOG_ERROR, LOG_TAG, __VA_ARGS__)

// Helper function to read WAV files
bool read_wav(const std::string &fname, std::vector<float> &pcmf32, std::vector<std::vector<float>> *pcmf32s = nullptr, bool stereo = false) {
    // Simplified WAV reader - in production, use a proper audio library
    FILE *f = fopen(fname.c_str(), "rb");
    if (f == nullptr) {
        LOGE("Failed to open audio file: %s", fname.c_str());
        return false;
    }
    
    // Skip WAV header (44 bytes)
    fseek(f, 44, SEEK_SET);
    
    // Read audio data
    std::vector<int16_t> pcm16;
    int16_t sample;
    while (fread(&sample, sizeof(sample), 1, f) == 1) {
        pcm16.push_back(sample);
    }
    fclose(f);
    
    // Convert to float
    pcmf32.resize(pcm16.size());
    for (size_t i = 0; i < pcm16.size(); i++) {
        pcmf32[i] = float(pcm16[i]) / 32768.0f;
    }
    
    return true;
}

extern "C" {

JNIEXPORT jstring JNICALL
Java_com_risa_iptv_WhisperLib_nativeTranscribe(JNIEnv *env, jobject thiz, jstring audioPath, jstring modelPath) {
    const char *audio_path = env->GetStringUTFChars(audioPath, nullptr);
    const char *model_path = env->GetStringUTFChars(modelPath, nullptr);
    
    LOGI("Starting transcription: audio=%s, model=%s", audio_path, model_path);
    
    // Initialize whisper context
    struct whisper_context_params cparams = whisper_context_default_params();
    struct whisper_context *ctx = whisper_init_from_file_with_params(model_path, cparams);
    
    if (ctx == nullptr) {
        LOGE("Failed to initialize whisper context");
        env->ReleaseStringUTFChars(audioPath, audio_path);
        env->ReleaseStringUTFChars(modelPath, model_path);
        return env->NewStringUTF("");
    }
    
    // Read audio file
    std::vector<float> pcmf32;
    if (!read_wav(audio_path, pcmf32)) {
        LOGE("Failed to read audio file: %s", audio_path);
        whisper_free(ctx);
        env->ReleaseStringUTFChars(audioPath, audio_path);
        env->ReleaseStringUTFChars(modelPath, model_path);
        return env->NewStringUTF("");
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
    wparams.offset_ms = 0;
    wparams.duration_ms = 0;
    
    // Run inference
    if (whisper_full(ctx, wparams, pcmf32.data(), pcmf32.size()) != 0) {
        LOGE("Failed to run whisper inference");
        whisper_free(ctx);
        env->ReleaseStringUTFChars(audioPath, audio_path);
        env->ReleaseStringUTFChars(modelPath, model_path);
        return env->NewStringUTF("");
    }
    
    // Get results
    std::string result;
    const int n_segments = whisper_full_n_segments(ctx);
    for (int i = 0; i < n_segments; ++i) {
        const char *text = whisper_full_get_segment_text(ctx, i);
        result += text;
    }
    
    // Cleanup
    whisper_free(ctx);
    env->ReleaseStringUTFChars(audioPath, audio_path);
    env->ReleaseStringUTFChars(modelPath, model_path);
    
    LOGI("Transcription completed: %s", result.c_str());
    return env->NewStringUTF(result.c_str());
}