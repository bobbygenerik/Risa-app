#include <jni.h>
#include <string>
#include <android/log.h>

#define LOG_TAG "WhisperJNI"
#define LOGI(...) __android_log_print(ANDROID_LOG_INFO, LOG_TAG, __VA_ARGS__)
#define LOGE(...) __android_log_print(ANDROID_LOG_ERROR, LOG_TAG, __VA_ARGS__)

extern "C" {

JNIEXPORT jstring JNICALL
Java_com_risa_iptv_WhisperLib_nativeTranscribe(JNIEnv *env, jobject thiz, jstring audioPath, jstring modelPath) {
    const char *audio_path = env->GetStringUTFChars(audioPath, nullptr);
    const char *model_path = env->GetStringUTFChars(modelPath, nullptr);
    
    LOGI("Transcription request: audio=%s, model=%s", audio_path, model_path);
    
    // TODO: Integrate with actual Whisper library
    // For now, return a test transcription
    std::string result = "Test transcription from native Whisper library";
    
    env->ReleaseStringUTFChars(audioPath, audio_path);
    env->ReleaseStringUTFChars(modelPath, model_path);
    
    LOGI("Transcription completed: %s", result.c_str());
    return env->NewStringUTF(result.c_str());
}

}