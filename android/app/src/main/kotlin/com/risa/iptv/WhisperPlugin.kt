package com.risa.iptv

import android.content.Context
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import kotlinx.coroutines.*
import java.io.File
import java.io.FileOutputStream
import java.net.URL

class WhisperPlugin : FlutterPlugin, MethodCallHandler {
    private lateinit var channel: MethodChannel
    private lateinit var context: Context
    private var whisperLib: WhisperLib? = null

    companion object {
        private const val CHANNEL = "com.risa.iptv/whisper"
        
        // Model download URLs
        private val MODEL_URLS = mapOf(
            "ggml-base.en.bin" to "https://huggingface.co/ggerganov/whisper.cpp/resolve/main/ggml-base.en.bin",
            "ggml-small.en.bin" to "https://huggingface.co/ggerganov/whisper.cpp/resolve/main/ggml-small.en.bin"
        )
    }

    override fun onAttachedToEngine(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        channel = MethodChannel(flutterPluginBinding.binaryMessenger, CHANNEL)
        channel.setMethodCallHandler(this)
        context = flutterPluginBinding.applicationContext
    }

    override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        channel.setMethodCallHandler(null)
    }

    override fun onMethodCall(call: MethodCall, result: Result) {
        when (call.method) {
            "initialize" -> {
                try {
                    whisperLib = WhisperLib()
                    result.success(true)
                } catch (e: Exception) {
                    result.success(false)
                }
            }
            
            "transcribe" -> {
                val audioPath = call.argument<String>("audioPath")
                val modelPath = call.argument<String>("modelPath")
                
                if (audioPath == null || modelPath == null) {
                    result.error("INVALID_ARGS", "Missing audioPath or modelPath", null)
                    return
                }
                
                CoroutineScope(Dispatchers.IO).launch {
                    try {
                        val transcription = transcribeAudio(audioPath, modelPath)
                        withContext(Dispatchers.Main) {
                            result.success(transcription)
                        }
                    } catch (e: Exception) {
                        withContext(Dispatchers.Main) {
                            result.error("TRANSCRIPTION_ERROR", e.message, null)
                        }
                    }
                }
            }
            
            "downloadModel" -> {
                val modelName = call.argument<String>("modelName")
                val filename = call.argument<String>("filename")
                
                if (modelName == null || filename == null) {
                    result.error("INVALID_ARGS", "Missing modelName or filename", null)
                    return
                }
                
                CoroutineScope(Dispatchers.IO).launch {
                    try {
                        val success = downloadModel(filename)
                        withContext(Dispatchers.Main) {
                            result.success(success)
                        }
                    } catch (e: Exception) {
                        withContext(Dispatchers.Main) {
                            result.error("DOWNLOAD_ERROR", e.message, null)
                        }
                    }
                }
            }
            
            else -> result.notImplemented()
        }
    }

    private suspend fun transcribeAudio(audioPath: String, modelPath: String): String? {
        return withContext(Dispatchers.IO) {
            try {
                val actualModelPath = if (modelPath.startsWith("assets/")) {
                    copyAssetToCache(modelPath.removePrefix("assets/"))
                } else {
                    modelPath
                }
                
                whisperLib?.transcribe(audioPath, actualModelPath)
            } catch (e: Exception) {
                null
            }
        }
    }

    private suspend fun downloadModel(filename: String): Boolean {
        return withContext(Dispatchers.IO) {
            try {
                val url = MODEL_URLS[filename] ?: return@withContext false
                val modelsDir = File(context.filesDir, "models")
                if (!modelsDir.exists()) {
                    modelsDir.mkdirs()
                }
                
                val modelFile = File(modelsDir, filename)
                if (modelFile.exists()) {
                    return@withContext true
                }
                
                val connection = URL(url).openConnection()
                connection.connect()
                
                val input = connection.getInputStream()
                val output = FileOutputStream(modelFile)
                
                val buffer = ByteArray(8192)
                var bytesRead: Int
                while (input.read(buffer).also { bytesRead = it } != -1) {
                    output.write(buffer, 0, bytesRead)
                }
                
                output.close()
                input.close()
                
                true
            } catch (e: Exception) {
                false
            }
        }
    }

    private fun copyAssetToCache(assetPath: String): String {
        val cacheFile = File(context.cacheDir, assetPath)
        if (cacheFile.exists()) {
            return cacheFile.absolutePath
        }
        
        cacheFile.parentFile?.mkdirs()
        
        context.assets.open(assetPath).use { input ->
            FileOutputStream(cacheFile).use { output ->
                input.copyTo(output)
            }
        }
        
        return cacheFile.absolutePath
    }
}

class WhisperLib {
    companion object {
        init {
            try {
                System.loadLibrary("whisper_jni")
            } catch (e: UnsatisfiedLinkError) {
                // Whisper native library not available
            }
        }
    }
    
    // Native method declarations
    private external fun nativeTranscribe(audioPath: String, modelPath: String): String?
    
    fun transcribe(audioPath: String, modelPath: String): String? {
        return try {
            nativeTranscribe(audioPath, modelPath)
        } catch (e: UnsatisfiedLinkError) {
            // Fallback when native library not available
            "[Whisper native library not available - transcription disabled]"
        }
    }
}