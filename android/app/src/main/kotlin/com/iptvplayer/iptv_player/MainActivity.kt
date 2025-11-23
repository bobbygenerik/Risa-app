package com.risa.app

import android.app.PictureInPictureParams
import android.content.Context
import android.content.Intent
import android.content.res.Configuration
import android.media.AudioAttributes
import android.media.AudioFormat
import android.media.AudioPlaybackCaptureConfiguration
import android.media.AudioRecord
import android.media.projection.MediaProjection
import android.media.projection.MediaProjectionManager
import android.os.Build
import android.os.Handler
import android.os.Looper
import android.util.Log
import android.util.Rational
import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodChannel
import java.util.concurrent.atomic.AtomicBoolean
import kotlin.concurrent.thread

class MainActivity : FlutterActivity() {
    private val PIP_CHANNEL = "com.streamhub.iptv/pip"
    private val AUDIO_CHANNEL = "com.streamhub.iptv/audio"
    private val TRANSCRIPTION_CHANNEL = "com.streamhub.iptv/transcription"
    private val TRANSCRIPTION_AUDIO_STREAM = "com.streamhub.iptv/transcription_audio"
    private val AUDIO_CAPTURE_REQUEST = 9001

    private var isInPipMode = false
    private var transcriptionSink: EventChannel.EventSink? = null
    private var audioCapturer: AudioPlaybackCapturer? = null
    private var mediaProjectionManager: MediaProjectionManager? = null
    private var mediaProjection: MediaProjection? = null
    private var mediaProjectionCallback: MediaProjection.Callback? = null
    private var pendingCaptureResult: MethodChannel.Result? = null
    private var pendingSampleRate = 16000
    private var pendingChannels = 1

    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        mediaProjectionManager =
            getSystemService(Context.MEDIA_PROJECTION_SERVICE) as? MediaProjectionManager

        EventChannel(flutterEngine.dartExecutor.binaryMessenger, TRANSCRIPTION_AUDIO_STREAM)
            .setStreamHandler(object : EventChannel.StreamHandler {
                override fun onListen(arguments: Any?, events: EventChannel.EventSink) {
                    transcriptionSink = events
                    audioCapturer?.setEventSink(events)
                }

                override fun onCancel(arguments: Any?) {
                    transcriptionSink = null
                    audioCapturer?.setEventSink(null)
                }
            })

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, PIP_CHANNEL)
            .setMethodCallHandler { call, result ->
                when (call.method) {
                    "enterPipMode" -> {
                        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                            try {
                                val aspectRatio = Rational(16, 9)
                                val params = PictureInPictureParams.Builder()
                                    .setAspectRatio(aspectRatio)
                                    .build()

                                val success = enterPictureInPictureMode(params)
                                isInPipMode = success
                                result.success(success)
                            } catch (e: Exception) {
                                result.error("PIP_ERROR", "Failed to enter PiP mode: ${e.message}", null)
                            }
                        } else {
                            result.error("PIP_NOT_SUPPORTED", "PiP requires Android 8.0 or higher", null)
                        }
                    }

                    "isPipAvailable", "isPipSupported" -> {
                        val supported = Build.VERSION.SDK_INT >= Build.VERSION_CODES.O &&
                            packageManager.hasSystemFeature("android.software.picture_in_picture")
                        result.success(supported)
                    }

                    "exitPipMode" -> {
                        isInPipMode = false
                        result.success(true)
                    }

                    else -> result.notImplemented()
                }
            }

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, AUDIO_CHANNEL)
            .setMethodCallHandler { call, result ->
                when (call.method) {
                    "switchAudioTrack" -> {
                        val trackIndex = (call.argument<Any>("trackIndex") as? Number)?.toInt() ?: -1

                        try {
                            val prefs = getSharedPreferences("com.streamhub.iptv.prefs", MODE_PRIVATE)
                            prefs.edit().putInt("lastSelectedAudioTrack", trackIndex).apply()

                            val intent = Intent("com.streamhub.iptv.ACTION_SWITCH_AUDIO")
                            intent.putExtra("trackIndex", trackIndex)
                            sendBroadcast(intent)

                            result.success(mapOf("switched" to true, "trackIndex" to trackIndex))
                        } catch (e: Exception) {
                            result.error("AUDIO_SWITCH_FAILED", "Failed to request audio switch: ${e.message}", null)
                        }
                    }

                    else -> result.notImplemented()
                }
            }

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, TRANSCRIPTION_CHANNEL)
            .setMethodCallHandler { call, result ->
                when (call.method) {
                    "startAudioCapture" -> {
                        val sampleRate = (call.argument<Any>("sampleRate") as? Number)?.toInt() ?: 16000
                        val channels = (call.argument<Any>("channels") as? Number)?.toInt() ?: 1
                        startPlaybackCapture(sampleRate, channels, result)
                    }

                    "stopAudioCapture" -> {
                        stopPlaybackCapture()
                        result.success(true)
                    }

                    else -> result.notImplemented()
                }
            }
    }

    private fun startPlaybackCapture(sampleRate: Int, channels: Int, result: MethodChannel.Result) {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.Q) {
            result.error("UNSUPPORTED", "Audio capture requires Android 10 or higher", null)
            return
        }

        val manager = mediaProjectionManager
        if (manager == null) {
            result.error("UNAVAILABLE", "MediaProjection service unavailable", null)
            return
        }

        val capturer = ensureAudioCapturer()
        if (capturer.isCapturing()) {
            result.success(true)
            return
        }

        val projection = mediaProjection
        if (projection == null) {
            pendingSampleRate = sampleRate
            pendingChannels = channels
            pendingCaptureResult = result
            try {
                startActivityForResult(manager.createScreenCaptureIntent(), AUDIO_CAPTURE_REQUEST)
            } catch (e: Exception) {
                pendingCaptureResult = null
                result.error("PERMISSION", "Unable to request capture permission: ${e.message}", null)
            }
            return
        }

        val started = capturer.start(projection, sampleRate, channels)
        if (started) {
            result.success(true)
        } else {
            result.error("CAPTURE_ERROR", "Failed to start audio capture", null)
        }
    }

    private fun stopPlaybackCapture() {
        audioCapturer?.stop()
    }

    private fun ensureAudioCapturer(): AudioPlaybackCapturer {
        if (audioCapturer == null) {
            audioCapturer = AudioPlaybackCapturer()
            transcriptionSink?.let { audioCapturer?.setEventSink(it) }
        }
        return audioCapturer!!
    }

    override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
        super.onActivityResult(requestCode, resultCode, data)
        if (requestCode != AUDIO_CAPTURE_REQUEST) return

        val pending = pendingCaptureResult
        pendingCaptureResult = null

        if (resultCode == RESULT_OK && data != null) {
            val manager = mediaProjectionManager
            if (manager == null) {
                pending?.error("UNAVAILABLE", "MediaProjection service unavailable", null)
                return
            }
            mediaProjection = manager.getMediaProjection(resultCode, data)
            mediaProjectionCallback = object : MediaProjection.Callback() {
                override fun onStop() {
                    audioCapturer?.stop()
                    mediaProjection = null
                }
            }
            mediaProjectionCallback?.let { callback ->
                mediaProjection?.registerCallback(
                    callback,
                    Handler(Looper.getMainLooper()),
                )
            }

            if (pending != null) {
                startPlaybackCapture(pendingSampleRate, pendingChannels, pending)
            }
        } else {
            pending?.error("PERMISSION_DENIED", "Audio capture permission denied", null)
        }
    }

    override fun onDestroy() {
        stopPlaybackCapture()
        transcriptionSink = null
        audioCapturer = null
        try {
            mediaProjectionCallback?.let { mediaProjection?.unregisterCallback(it) }
        } catch (_: Exception) {
        }
        mediaProjection?.stop()
        mediaProjection = null
        mediaProjectionCallback = null
        pendingCaptureResult = null
        super.onDestroy()
    }

    override fun onPictureInPictureModeChanged(
        isInPictureInPictureMode: Boolean,
        newConfig: Configuration,
    ) {
        super.onPictureInPictureModeChanged(isInPictureInPictureMode, newConfig)
        isInPipMode = isInPictureInPictureMode

        flutterEngine?.dartExecutor?.binaryMessenger?.let { messenger ->
            MethodChannel(messenger, PIP_CHANNEL).invokeMethod(
                "onPipModeChanged",
                mapOf("isInPipMode" to isInPictureInPictureMode),
            )
        }
    }

    override fun onUserLeaveHint() {
        super.onUserLeaveHint()

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O && !isInPipMode) {
            val aspectRatio = Rational(16, 9)
            val params = PictureInPictureParams.Builder()
                .setAspectRatio(aspectRatio)
                .build()

            try {
                enterPictureInPictureMode(params)
            } catch (_: Exception) {
                // Ignore failures
            }
        }
    }
}

private class AudioPlaybackCapturer {
    private var audioRecord: AudioRecord? = null
    private var captureThread: Thread? = null
    private val isCapturing = AtomicBoolean(false)
    private val mainHandler = Handler(Looper.getMainLooper())
    private var eventSink: EventChannel.EventSink? = null

    fun setEventSink(sink: EventChannel.EventSink?) {
        mainHandler.post { eventSink = sink }
    }

    fun isCapturing(): Boolean = isCapturing.get()

    fun start(
        projection: MediaProjection,
        sampleRate: Int,
        channels: Int,
    ): Boolean {
        stop()

        val channelMask = if (channels > 1) {
            AudioFormat.CHANNEL_IN_STEREO
        } else {
            AudioFormat.CHANNEL_IN_MONO
        }

        val minBuffer = AudioRecord.getMinBufferSize(
            sampleRate,
            channelMask,
            AudioFormat.ENCODING_PCM_16BIT,
        )
        if (minBuffer <= 0) {
            Log.e("AudioCapturer", "Invalid buffer size (sampleRate=$sampleRate, channels=$channels)")
            return false
        }

        val config = AudioPlaybackCaptureConfiguration.Builder(projection)
            .addMatchingUsage(AudioAttributes.USAGE_MEDIA)
            .addMatchingUsage(AudioAttributes.USAGE_GAME)
            .build()

        val format = AudioFormat.Builder()
            .setEncoding(AudioFormat.ENCODING_PCM_16BIT)
            .setSampleRate(sampleRate)
            .setChannelMask(channelMask)
            .build()

        audioRecord = AudioRecord.Builder()
            .setAudioFormat(format)
            .setBufferSizeInBytes(minBuffer * 2)
            .setAudioPlaybackCaptureConfig(config)
            .build()

        return try {
            audioRecord?.startRecording()
            isCapturing.set(true)
            val bufferSize = minBuffer.coerceAtMost(4096)
            captureThread = thread(start = true, name = "TranscriptionAudioCapture") {
                val buffer = ByteArray(bufferSize)
                while (isCapturing.get()) {
                    val read = audioRecord?.read(buffer, 0, buffer.size) ?: break
                    if (read > 0) {
                        val chunk = buffer.copyOf(read)
                        mainHandler.post { eventSink?.success(chunk) }
                    }
                }
            }
            true
        } catch (e: Exception) {
            Log.e("AudioCapturer", "Failed to start capture: ${e.message}")
            isCapturing.set(false)
            audioRecord?.release()
            audioRecord = null
            false
        }
    }

    fun stop() {
        if (!isCapturing.getAndSet(false)) {
            audioRecord?.release()
            audioRecord = null
            return
        }

        try {
            audioRecord?.stop()
        } catch (_: Exception) {
        }
        audioRecord?.release()
        audioRecord = null
        try {
            captureThread?.join(200)
        } catch (_: Exception) {
        }
        captureThread = null
    }
}
