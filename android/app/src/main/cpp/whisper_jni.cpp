#include <jni.h>
#include <android/log.h>
#include <string>
#include <vector>
#include "whisper.h"

#define TAG "WhisperJNI"
#define LOGI(...) __android_log_print(ANDROID_LOG_INFO, TAG, __VA_ARGS__)
#define LOGE(...) __android_log_print(ANDROID_LOG_ERROR, TAG, __VA_ARGS__)

extern "C" {

    JNIEXPORT jlong JNICALL
    Java_com_risa_iptv_WhisperPlugin_init(JNIEnv *env, jobject thiz, jstring modelPathStr) {
        const char *modelPath = env->GetStringUTFChars(modelPathStr, nullptr);
        
        struct whisper_context *ctx = whisper_init_from_file(modelPath);
        env->ReleaseStringUTFChars(modelPathStr, modelPath);

        if (ctx == nullptr) {
            LOGE("Failed to initialize whisper context");
            return 0;
        }

        LOGI("Whisper initialized successfully");
        return (jlong) ctx;
    }

    JNIEXPORT void JNICALL
    Java_com_risa_iptv_WhisperPlugin_free(JNIEnv *env, jobject thiz, jlong contextPtr) {
        struct whisper_context *ctx = (struct whisper_context *) contextPtr;
        if (ctx) {
            whisper_free(ctx);
            LOGI("Whisper context freed");
        }
    }

    JNIEXPORT jint JNICALL
    Java_com_risa_iptv_WhisperPlugin_full(JNIEnv *env, jobject thiz, jlong contextPtr, jfloatArray audioData, jint nThreads) {
        struct whisper_context *ctx = (struct whisper_context *) contextPtr;
        if (!ctx) return -1;

        jfloat *audioPtr = (jfloat*)env->GetPrimitiveArrayCritical(audioData, nullptr);
        jsize audioLen = env->GetArrayLength(audioData);
        std::vector<float> pcmf32(audioPtr, audioPtr + audioLen);
        env->ReleasePrimitiveArrayCritical(audioData, audioPtr, 0);

        struct whisper_full_params wparams = whisper_full_default_params(WHISPER_SAMPLING_GREEDY);
        wparams.n_threads = nThreads;
        
        if (whisper_full(ctx, wparams, pcmf32.data(), pcmf32.size()) != 0) {
            LOGE("Failed to run whisper_full");
            return -1;
        }

        return 0;
    }

    JNIEXPORT jstring JNICALL
    Java_com_risa_iptv_WhisperPlugin_getText(JNIEnv *env, jobject thiz, jlong contextPtr) {
        struct whisper_context *ctx = (struct whisper_context *) contextPtr;
        if (!ctx) return env->NewStringUTF("");

        int n_segments = whisper_full_n_segments(ctx);
        std::string result;

        for (int i = 0; i < n_segments; ++i) {
            const char *text = whisper_full_get_segment_text(ctx, i);
            result += text;
        }

        return env->NewStringUTF(result.c_str());
    }

}