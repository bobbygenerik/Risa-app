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
    private var isInPipMode = false

    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

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
                "exitPipMode" -> {
                    isInPipMode = false
                    result.success(true)
                }
                "isPipSupported" -> {
                    val supported = Build.VERSION.SDK_INT >= Build.VERSION_CODES.O &&
                                  packageManager.hasSystemFeature("android.software.picture_in_picture")
                    result.success(supported)
                }
                else -> {
                    result.notImplemented()
                }
            }
        }
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
