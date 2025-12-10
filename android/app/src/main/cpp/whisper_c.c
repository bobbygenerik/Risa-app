#include <jni.h>
#include <android/log.h>

#define LOG_TAG "WhisperJNI"
#define LOGI(...) __android_log_print(ANDROID_LOG_INFO, LOG_TAG, __VA_ARGS__)

JNIEXPORT jstring JNICALL
Java_com_risa_iptv_WhisperLib_nativeTranscribe(JNIEnv *env, jobject thiz, jstring audioPath, jstring modelPath) {
    const char *audio_path = (*env)->GetStringUTFChars(env, audioPath, NULL);
    const char *model_path = (*env)->GetStringUTFChars(env, modelPath, NULL);
    
    LOGI("Transcription request: audio=%s, model=%s", audio_path, model_path);
    
    // TODO: Integrate with actual Whisper library
    const char *result = "Test transcription from native Whisper library";
    
    (*env)->ReleaseStringUTFChars(env, audioPath, audio_path);
    (*env)->ReleaseStringUTFChars(env, modelPath, model_path);
    
    LOGI("Transcription completed: %s", result);
    return (*env)->NewStringUTF(env, result);
}