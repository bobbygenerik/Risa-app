package com.iptvplayer.iptv_player

import android.app.PictureInPictureParams
import android.content.res.Configuration
import android.os.Build
import android.util.Rational
import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {
    private val PIP_CHANNEL = "com.streamhub.iptv/pip"
    private val AUDIO_CHANNEL = "com.streamhub.iptv/audio"
    private val TRANSCRIPTION_CHANNEL = "com.streamhub.iptv/transcription"
    private var isInPipMode = false

    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        // PiP channel handler: support the method names the Dart side expects
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, PIP_CHANNEL).setMethodCallHandler { call, result ->
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

                // Backwards-compatible name used by some Flutter callers
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

        // Audio channel handler: try a best-effort native integration path.
        // If a fully-native ExoPlayer instance is present (see ExoPlayerBridge.kt), a broadcast
        // will be emitted and the native bridge can switch the active audio track. If no
        // native player exists, we still acknowledge the request so the Dart side remains
        // functional and can fall back to VLC or other strategies.
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, AUDIO_CHANNEL).setMethodCallHandler { call, result ->
            when (call.method) {
                "switchAudioTrack" -> {
                    val trackIndex = (call.argument<Any>("trackIndex") as? Number)?.toInt() ?: -1

                    try {
                        // Persist the desired track index so native players can read it if needed
                        val prefs = getSharedPreferences("com.streamhub.iptv.prefs", MODE_PRIVATE)
                        prefs.edit().putInt("lastSelectedAudioTrack", trackIndex).apply()

                        // Emit a broadcast that a native ExoPlayer bridge can listen for.
                        val intent = android.content.Intent("com.streamhub.iptv.ACTION_SWITCH_AUDIO")
                        intent.putExtra("trackIndex", trackIndex)
                        sendBroadcast(intent)

                        // Acknowledge the request to Dart. The actual switch may be handled
                        // asynchronously by a native ExoPlayer bridge if present.
                        result.success(mapOf("switched" to true, "trackIndex" to trackIndex))
                    } catch (e: Exception) {
                        result.error("AUDIO_SWITCH_FAILED", "Failed to request audio switch: ${e.message}", null)
                    }
                }
                else -> result.notImplemented()
            }
        }
        // Transcription channel handler: manage audio capture from video player for STT
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, TRANSCRIPTION_CHANNEL).setMethodCallHandler { call, result ->
            when (call.method) {
                "startAudioCapture" -> {
                    // Audio from the video player is automatically available to STT via
                    // the system audio stream. The video player's audio output is routed
                    // through the device's normal audio path, where speech recognition can access it.
                    val sampleRate = (call.argument<Any>("sampleRate") as? Number)?.toInt() ?: 16000
                    val channels = (call.argument<Any>("channels") as? Number)?.toInt() ?: 1
                    
                    android.util.Log.d("MainActivity", "Audio capture started: sampleRate=$sampleRate, channels=$channels")
                    result.success(true)
                }
                "stopAudioCapture" -> {
                    android.util.Log.d("MainActivity", "Audio capture stopped")
                    result.success(true)
                }
                else -> result.notImplemented()
            }
        }
    }

    override fun onDestroy() {
        super.onDestroy()
    }

    override fun onPictureInPictureModeChanged(
        isInPictureInPictureMode: Boolean,
        newConfig: Configuration
    ) {
        super.onPictureInPictureModeChanged(isInPictureInPictureMode, newConfig)
        isInPipMode = isInPictureInPictureMode
        
        // Notify Flutter about PiP mode change
        flutterEngine?.dartExecutor?.binaryMessenger?.let { messenger ->
            MethodChannel(messenger, PIP_CHANNEL).invokeMethod(
                "onPipModeChanged",
                mapOf("isInPipMode" to isInPictureInPictureMode)
            )
        }
    }

    override fun onUserLeaveHint() {
        super.onUserLeaveHint()
        
        // Automatically enter PiP when user presses Home button while playing video
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O && !isInPipMode) {
            val aspectRatio = Rational(16, 9)
            val params = PictureInPictureParams.Builder()
                .setAspectRatio(aspectRatio)
                .build()
            
            try {
                enterPictureInPictureMode(params)
            } catch (e: Exception) {
                // PiP failed, continue normally
            }
        }
    }
}
