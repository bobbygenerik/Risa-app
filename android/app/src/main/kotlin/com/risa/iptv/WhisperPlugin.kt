package com.risa.iptv

import android.app.Activity
import android.content.Context
import android.content.Intent
import android.media.AudioAttributes
import android.media.AudioFormat
import android.media.AudioPlaybackCaptureConfiguration
import android.media.AudioRecord
import android.media.projection.MediaProjection
import android.media.projection.MediaProjectionManager
import android.os.Build
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.PluginRegistry.ActivityResultListener
import kotlinx.coroutines.*
import java.io.File
import java.io.FileOutputStream
import java.net.URL
import java.io.ByteArrayOutputStream

class WhisperPlugin : FlutterPlugin, MethodCallHandler, ActivityAware,
    ActivityResultListener, EventChannel.StreamHandler {
    private lateinit var channel: MethodChannel
    private lateinit var eventChannel: EventChannel
    private lateinit var context: Context
    private var activity: Activity? = null
    private var whisperLib: WhisperLib? = null
    private var projectionManager: MediaProjectionManager? = null
    private var mediaProjection: MediaProjection? = null
    private var pendingPermissionResult: Result? = null
    private var eventSink: EventChannel.EventSink? = null
    private var captureJob: Job? = null
    private var audioRecord: AudioRecord? = null
    private val captureScope = CoroutineScope(SupervisorJob() + Dispatchers.IO)

    companion object {
        private const val CHANNEL = "com.risa.iptv/whisper"
        private const val EVENT_CHANNEL = "com.risa.iptv/whisper_stream"
        private const val CAPTURE_REQUEST_CODE = 8091
        private const val SAMPLE_RATE = 16000
        private const val CHANNEL_COUNT = 1
        private const val CHUNK_SECONDS = 5
        
        // Model download URLs
        private val MODEL_URLS = mapOf(
            "ggml-tiny.en.bin" to "https://huggingface.co/ggerganov/whisper.cpp/resolve/main/ggml-tiny.en.bin",
            "ggml-base.en.bin" to "https://huggingface.co/ggerganov/whisper.cpp/resolve/main/ggml-base.en.bin",
            "ggml-small.en.bin" to "https://huggingface.co/ggerganov/whisper.cpp/resolve/main/ggml-small.en.bin"
        )
    }

    override fun onAttachedToEngine(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        channel = MethodChannel(flutterPluginBinding.binaryMessenger, CHANNEL)
        channel.setMethodCallHandler(this)
        eventChannel = EventChannel(flutterPluginBinding.binaryMessenger, EVENT_CHANNEL)
        eventChannel.setStreamHandler(this)
        context = flutterPluginBinding.applicationContext
    }

    override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        channel.setMethodCallHandler(null)
        eventChannel.setStreamHandler(null)
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

            "requestCapturePermission" -> {
                if (Build.VERSION.SDK_INT < Build.VERSION_CODES.Q) {
                    result.success(false)
                    return
                }
                if (mediaProjection != null) {
                    result.success(true)
                    return
                }
                val activity = activity
                val manager = projectionManager
                if (activity == null || manager == null) {
                    result.success(false)
                    return
                }
                if (pendingPermissionResult != null) {
                    result.error("PERMISSION_PENDING", "Permission request already in progress", null)
                    return
                }
                pendingPermissionResult = result
                val intent = manager.createScreenCaptureIntent()
                activity.startActivityForResult(intent, CAPTURE_REQUEST_CODE)
            }

            "startAudioCapture" -> {
                if (Build.VERSION.SDK_INT < Build.VERSION_CODES.Q) {
                    result.success(false)
                    return
                }
                val modelName = call.argument<String>("modelName") ?: "tiny.en"
                val started = startAudioCapture(modelName)
                result.success(started)
            }

            "stopAudioCapture" -> {
                stopAudioCapture()
                result.success(true)
            }

            else -> result.notImplemented()
        }
    }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        eventSink = events
    }

    override fun onCancel(arguments: Any?) {
        eventSink = null
    }

    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?): Boolean {
        if (requestCode != CAPTURE_REQUEST_CODE) return false
        val pending = pendingPermissionResult ?: return false
        pendingPermissionResult = null
        if (resultCode == Activity.RESULT_OK && data != null && projectionManager != null) {
            mediaProjection = projectionManager!!.getMediaProjection(resultCode, data)
            pending.success(true)
        } else {
            pending.success(false)
        }
        return true
    }

    override fun onAttachedToActivity(binding: ActivityPluginBinding) {
        activity = binding.activity
        projectionManager =
            activity?.getSystemService(Context.MEDIA_PROJECTION_SERVICE) as? MediaProjectionManager
        binding.addActivityResultListener(this)
    }

    override fun onDetachedFromActivity() {
        activity = null
        projectionManager = null
        mediaProjection = null
    }

    override fun onDetachedFromActivityForConfigChanges() {
        onDetachedFromActivity()
    }

    override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {
        onAttachedToActivity(binding)
    }

    private fun startAudioCapture(modelName: String): Boolean {
        if (captureJob != null) return true
        val projection = mediaProjection ?: return false
        val modelPath = resolveModelPath(modelName) ?: return false

        val audioFormat = AudioFormat.Builder()
            .setEncoding(AudioFormat.ENCODING_PCM_16BIT)
            .setSampleRate(SAMPLE_RATE)
            .setChannelMask(AudioFormat.CHANNEL_IN_MONO)
            .build()

        val captureConfig = AudioPlaybackCaptureConfiguration.Builder(projection)
            .addMatchingUsage(AudioAttributes.USAGE_MEDIA)
            .addMatchingUsage(AudioAttributes.USAGE_GAME)
            .build()

        val minBuffer = AudioRecord.getMinBufferSize(
            SAMPLE_RATE,
            AudioFormat.CHANNEL_IN_MONO,
            AudioFormat.ENCODING_PCM_16BIT
        )
        if (minBuffer <= 0) return false

        audioRecord = AudioRecord.Builder()
            .setAudioFormat(audioFormat)
            .setBufferSizeInBytes(minBuffer * 2)
            .setAudioPlaybackCaptureConfig(captureConfig)
            .build()

        audioRecord?.startRecording()

        captureJob = captureScope.launch {
            val bytesPerSample = 2
            val chunkBytes = SAMPLE_RATE * CHUNK_SECONDS * bytesPerSample * CHANNEL_COUNT
            val buffer = ByteArray(minBuffer)
            val accumulator = ByteArrayOutputStream()

            while (isActive) {
                val record = audioRecord ?: break
                val read = record.read(buffer, 0, buffer.size)
                if (read <= 0) continue
                accumulator.write(buffer, 0, read)
                if (accumulator.size() >= chunkBytes) {
                    val pcmData = accumulator.toByteArray()
                    accumulator.reset()
                    val wavFile = writeWavFile(pcmData, SAMPLE_RATE, CHANNEL_COUNT)
                    val text = whisperLib?.transcribe(wavFile.absolutePath, modelPath)
                    wavFile.delete()
                    if (!text.isNullOrBlank() &&
                        text != "[Whisper native library not available - transcription disabled]") {
                        eventSink?.success(text.trim())
                    }
                }
            }
        }

        return true
    }

    private fun stopAudioCapture() {
        captureJob?.cancel()
        captureJob = null
        try {
            audioRecord?.stop()
        } catch (_: Exception) {}
        audioRecord?.release()
        audioRecord = null
        try {
            mediaProjection?.stop()
        } catch (_: Exception) {}
        mediaProjection = null
    }

    private fun resolveModelPath(modelName: String): String? {
        val filename = when (modelName) {
            "tiny.en" -> "ggml-tiny.en.bin"
            "base.en" -> "ggml-base.en.bin"
            "small.en" -> "ggml-small.en.bin"
            else -> modelName
        }

        val flutterDir = context.getDir("app_flutter", Context.MODE_PRIVATE)
        val modelsDir = File(flutterDir, "models")
        val downloaded = File(modelsDir, filename)
        if (downloaded.exists()) return downloaded.absolutePath

        return try {
            copyAssetToCache("models/$filename")
        } catch (_: Exception) {
            null
        }
    }

    private fun writeWavFile(pcmData: ByteArray, sampleRate: Int, channels: Int): File {
        val file = File.createTempFile("whisper_chunk_", ".wav", context.cacheDir)
        val byteRate = sampleRate * channels * 16 / 8
        val totalDataLen = pcmData.size + 36
        val totalAudioLen = pcmData.size

        val header = ByteArray(44)
        header[0] = 'R'.code.toByte()
        header[1] = 'I'.code.toByte()
        header[2] = 'F'.code.toByte()
        header[3] = 'F'.code.toByte()
        writeInt(header, 4, totalDataLen)
        header[8] = 'W'.code.toByte()
        header[9] = 'A'.code.toByte()
        header[10] = 'V'.code.toByte()
        header[11] = 'E'.code.toByte()
        header[12] = 'f'.code.toByte()
        header[13] = 'm'.code.toByte()
        header[14] = 't'.code.toByte()
        header[15] = ' '.code.toByte()
        writeInt(header, 16, 16)
        writeShort(header, 20, 1)
        writeShort(header, 22, channels.toShort())
        writeInt(header, 24, sampleRate)
        writeInt(header, 28, byteRate)
        writeShort(header, 32, (channels * 16 / 8).toShort())
        writeShort(header, 34, 16)
        header[36] = 'd'.code.toByte()
        header[37] = 'a'.code.toByte()
        header[38] = 't'.code.toByte()
        header[39] = 'a'.code.toByte()
        writeInt(header, 40, totalAudioLen)

        FileOutputStream(file).use { output ->
            output.write(header, 0, 44)
            output.write(pcmData)
        }
        return file
    }

    private fun writeInt(header: ByteArray, offset: Int, value: Int) {
        header[offset] = (value and 0xff).toByte()
        header[offset + 1] = ((value shr 8) and 0xff).toByte()
        header[offset + 2] = ((value shr 16) and 0xff).toByte()
        header[offset + 3] = ((value shr 24) and 0xff).toByte()
    }

    private fun writeShort(header: ByteArray, offset: Int, value: Short) {
        header[offset] = (value.toInt() and 0xff).toByte()
        header[offset + 1] = ((value.toInt() shr 8) and 0xff).toByte()
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
                val flutterDir = context.getDir("app_flutter", Context.MODE_PRIVATE)
                val modelsDir = File(flutterDir, "models")
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
