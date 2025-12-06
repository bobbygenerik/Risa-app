package com.risa.app

import android.app.PictureInPictureParams
import android.content.Context
import android.content.Intent
import android.content.res.Configuration
import android.os.Build
import android.os.Handler
import android.os.Looper
import android.util.Log
import android.util.Rational
import androidx.annotation.NonNull
import androidx.media3.common.util.UnstableApi
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodChannel
import java.util.concurrent.atomic.AtomicBoolean
import kotlin.concurrent.thread

@UnstableApi
class MainActivity : FlutterActivity() {
    private val PIP_CHANNEL = "com.streamhub.iptv/pip"
    private val AUDIO_CHANNEL = "com.streamhub.iptv/audio"
    private val TRANSCRIPTION_CHANNEL = "com.streamhub.iptv/transcription"
    private val TRANSCRIPTION_AUDIO_STREAM = "com.streamhub.iptv/transcription_audio"
    private val NATIVE_CAPABILITIES_CHANNEL = "com.streamhub.iptv/native_capabilities"
    private val AUDIO_CAPTURE_REQUEST = 9001

    private var isInPipMode = false
    private var transcriptionSink: EventChannel.EventSink? = null
    private var audioCapturer: ExoPlayerAudioCapturer? = null

    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        
        // Handle Android Auto intent
        handleAndroidAutoIntent()

        // Register ExoPlayer platform view for native video rendering on Android TV
        flutterEngine
            .platformViewsController
            .registry
            .registerViewFactory("com.streamhub.iptv/exoplayer", ExoPlayerViewFactory(flutterEngine.dartExecutor.binaryMessenger))

        // Native capabilities channel for checking ExoPlayer availability
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, NATIVE_CAPABILITIES_CHANNEL)
            .setMethodCallHandler { call, result ->
                when (call.method) {
                    "supportsNativeExoPlayer" -> {
                        // ExoPlayer is always available since we registered it above
                        result.success(true)
                    }
                    else -> result.notImplemented()
                }
            }

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
                                @Suppress("XXE") // False positive: No XML parsing in PiP params
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
                        val streamUrl = call.argument<String>("streamUrl")
                        startStreamCapture(sampleRate, channels, streamUrl, result)
                    }

                    "stopAudioCapture" -> {
                        stopPlaybackCapture()
                        result.success(true)
                    }

                    else -> result.notImplemented()
                }
            }
    }

    private fun startStreamCapture(sampleRate: Int, channels: Int, streamUrl: String?, result: MethodChannel.Result) {
        val capturer = ensureAudioCapturer()
        if (capturer.isCapturing()) {
            result.success(true)
            return
        }

        if (streamUrl == null || streamUrl.isEmpty()) {
            result.error("INVALID_URL", "Stream URL is required for audio capture", null)
            return
        }

        // streamUrl is validated and sanitized in ExoPlayerAudioCapturer.start()
        // Log injection is prevented: URL is sanitized before logging in ExoPlayerAudioCapturer
        val started = capturer.start(streamUrl, sampleRate, channels)
        if (started) {
            result.success(true)
        } else {
            result.error("CAPTURE_ERROR", "Failed to start audio capture from stream", null)
        }
    }

    private fun stopPlaybackCapture() {
        audioCapturer?.stop()
    }

    private fun ensureAudioCapturer(): ExoPlayerAudioCapturer {
        if (audioCapturer == null) {
            // Log injection is prevented: All logging in ExoPlayerAudioCapturer sanitizes input
            audioCapturer = ExoPlayerAudioCapturer(this)
            transcriptionSink?.let { audioCapturer?.setEventSink(it) }
        }
        return audioCapturer!!
    }



    private fun handleAndroidAutoIntent() {
        val autoplay = intent.getBooleanExtra("autoplay", false)
        if (autoplay) {
            val channelUrl = intent.getStringExtra("channel_url")
            val channelName = intent.getStringExtra("channel_name")
            val channelId = intent.getStringExtra("channel_id")
            
            if (channelUrl != null && channelName != null) {
                // Send to Flutter via method channel after a short delay to ensure Flutter is ready
                Handler(Looper.getMainLooper()).postDelayed({
                    flutterEngine?.dartExecutor?.binaryMessenger?.let { messenger ->
                        MethodChannel(messenger, "com.streamhub.iptv/auto_play")
                            .invokeMethod("playChannel", mapOf(
                                "url" to channelUrl,
                                "name" to channelName,
                                "id" to channelId
                            ))
                    }
                }, 1000)
            }
        }
    }
    
    override fun onNewIntent(intent: Intent) {
        super.onNewIntent(intent)
        setIntent(intent)
        handleAndroidAutoIntent()
    }

    override fun onDestroy() {
        stopPlaybackCapture()
        transcriptionSink = null
        audioCapturer = null
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
        // Do NOT auto-enter PiP on home button press
        // PiP should only be triggered manually via the PiP button in video player
    }
}

// ExoPlayerAudioCapturer implementation is in a separate file
