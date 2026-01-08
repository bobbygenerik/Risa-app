package com.risa.app

import android.app.PictureInPictureParams
import android.content.Context
import android.content.Intent
import android.content.res.Configuration
import android.os.Build
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.util.Log
import android.util.Rational
import android.app.NotificationChannel
import android.app.NotificationManager
import androidx.core.app.NotificationCompat
import android.content.ContentValues
import android.os.Environment
import android.provider.MediaStore
import android.widget.Toast
import java.io.File
import java.io.PrintWriter
import java.io.StringWriter
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale
import androidx.annotation.NonNull
import androidx.media3.common.util.UnstableApi
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodChannel
import java.util.concurrent.atomic.AtomicBoolean
import kotlin.concurrent.thread
import com.risa.iptv.WhisperPlugin
import com.iptvplayer.iptv_player.ExoPlayerAudioCapturer
import com.iptvplayer.iptv_player.ExoPlayerViewFactory
import com.risa.app.NativeCrashHandler
import com.risa.app.VideoPlayerConfig

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
    // Suppress writing crash files during the app startup window to avoid
    // creating logs for transient startup exceptions. Will be cleared shortly
    // after `onCreate` finishes.
    private val _suppressCrashFileWrites = AtomicBoolean(true)

    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        
        // Handle Android Auto intent
        handleAndroidAutoIntent()

        // Register Whisper plugin
        flutterEngine.plugins.add(WhisperPlugin())

        // Register ExoPlayer platform view for native video rendering on Android TV
        flutterEngine
            .platformViewsController
            .registry
            .registerViewFactory("com.streamhub.iptv/exoplayer", ExoPlayerViewFactory(flutterEngine.dartExecutor.binaryMessenger))

        // Video configuration channel for SurfaceView/TextureView control
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, "com.risa.app/video_config")
            .setMethodCallHandler { call, result ->
                when (call.method) {
                    "forceSurfaceView" -> {
                        val success = VideoPlayerConfig.configureSurfaceView(this@MainActivity)
                        result.success(success)
                    }
                    else -> result.notImplemented()
                }
            }

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

            // Debug IO channel (disabled): writing files from Dart is suppressed to avoid
            // filling device storage. Method still exists but returns `false` and logs.
            MethodChannel(flutterEngine.dartExecutor.binaryMessenger, "com.streamhub.iptv/debug_io")
                .setMethodCallHandler { call, result ->
                    when (call.method) {
                        "writeFile" -> {
                            val name = call.argument<String>("name") ?: "debug.txt"
                            Log.i("DebugIO", "Suppressed writeFile request for: $name")
                            // Do not write to disk; inform caller the write did not occur.
                            result.success(false)
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

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setupUncaughtExceptionHandler()
        // Disabled: avoid creating startup or crash files on device which can fill storage.
        Log.i("CrashLogger", "Skipping copyLatestCrashToDownloads() and startup marker (writes disabled).")
    }

    private fun setupUncaughtExceptionHandler() {
        val defaultHandler = Thread.getDefaultUncaughtExceptionHandler()
        val externalDir = getExternalFilesDir(null) ?: filesDir
        // Use native crash handler to write to /sdcard/Android/data/com.risa.app/files/logs/native_crash.txt
        Thread.setDefaultUncaughtExceptionHandler(NativeCrashHandler(externalDir, defaultHandler))
    }

    private fun writeCrashToFile(thread: Thread, t: Throwable) {
        // Persisting crash files to disk is disabled to prevent excessive storage usage.
        Log.i("CrashLogger", "Crash file write suppressed by policy; not writing to disk. Thread: ${thread.name}")
        return
    }

    // Helper used by MethodChannel to write arbitrary text files into Downloads/RisaLogs
    private fun writeStringToDownloads(filename: String, content: String): Boolean {
        return try {
            val markerName = filename
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
                val values = ContentValues().apply {
                    put(MediaStore.MediaColumns.DISPLAY_NAME, markerName)
                    put(MediaStore.MediaColumns.MIME_TYPE, "text/plain")
                    put(MediaStore.MediaColumns.RELATIVE_PATH, Environment.DIRECTORY_DOWNLOADS + "/RisaLogs")
                }
                val uri = contentResolver.insert(MediaStore.Downloads.EXTERNAL_CONTENT_URI, values)
                if (uri != null) {
                    contentResolver.openOutputStream(uri).use { os ->
                        os?.write(content.toByteArray())
                    }
                }
            } else {
                val downloadsDir = File(Environment.getExternalStorageDirectory(), "Download/RisaLogs")
                if (!downloadsDir.exists()) downloadsDir.mkdirs()
                val target = File(downloadsDir, markerName)
                target.writeText(content)
            }
            true
        } catch (e: Exception) {
            Log.w("DebugIO", "writeStringToDownloads failed: ${e.message}")
            false
        }
    }

    private fun copyLatestCrashToDownloads() {
        val logsDir = getExternalFilesDir("risa_logs") ?: filesDir
        val crashDir = File(logsDir, "crash")
        if (!crashDir.exists()) return

        val files = crashDir.listFiles()?.filter { it.isFile }?.sortedByDescending { it.lastModified() }
        val latest = files?.firstOrNull()
        if (latest == null) {
            Handler(Looper.getMainLooper()).post {
                Toast.makeText(this, "No crash logs found to copy", Toast.LENGTH_LONG).show()
            }
            return
        }

        try {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
                val values = ContentValues().apply {
                    put(MediaStore.MediaColumns.DISPLAY_NAME, latest.name)
                    put(MediaStore.MediaColumns.MIME_TYPE, "text/plain")
                    put(MediaStore.MediaColumns.RELATIVE_PATH, Environment.DIRECTORY_DOWNLOADS + "/RisaLogs")
                }
                val uri = contentResolver.insert(MediaStore.Downloads.EXTERNAL_CONTENT_URI, values)
                if (uri != null) {
                    contentResolver.openOutputStream(uri).use { os ->
                        latest.inputStream().use { fis ->
                            fis.copyTo(os!!)
                        }
                    }
                    Handler(Looper.getMainLooper()).post {
                        Toast.makeText(this, "Crash log copied to Downloads/RisaLogs/${latest.name}", Toast.LENGTH_LONG).show()
                    }
                }
            } else {
                val downloadsDir = File(Environment.getExternalStorageDirectory(), "Download/RisaLogs")
                if (!downloadsDir.exists()) downloadsDir.mkdirs()
                val target = File(downloadsDir, latest.name)
                latest.copyTo(target, overwrite = true)
                Handler(Looper.getMainLooper()).post {
                    Toast.makeText(this, "Crash log copied to ${target.absolutePath}", Toast.LENGTH_LONG).show()
                }
            }
        } catch (e: Exception) {
            Log.w("CrashLogger", "Failed to copy crash to downloads: ${e.message}")
        }
    }

    private fun writeStartupMarker() {
        val timestamp = SimpleDateFormat("yyyyMMdd_HHmmss", Locale.US).format(Date())
        val markerName = "startup_$timestamp.txt"

        val content = "Risa app started at $timestamp"

        try {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
                val values = ContentValues().apply {
                    put(MediaStore.MediaColumns.DISPLAY_NAME, markerName)
                    put(MediaStore.MediaColumns.MIME_TYPE, "text/plain")
                    put(MediaStore.MediaColumns.RELATIVE_PATH, Environment.DIRECTORY_DOWNLOADS + "/RisaLogs")
                }
                val uri = contentResolver.insert(MediaStore.Downloads.EXTERNAL_CONTENT_URI, values)
                if (uri != null) {
                    contentResolver.openOutputStream(uri).use { os ->
                        os?.write(content.toByteArray())
                    }
                }
            } else {
                val downloadsDir = File(Environment.getExternalStorageDirectory(), "Download/RisaLogs")
                if (!downloadsDir.exists()) downloadsDir.mkdirs()
                val target = File(downloadsDir, markerName)
                target.writeText(content)
            }
        } catch (e: Exception) {
            Log.w("StartupMarker", "failed: ${e.message}")
        }
    }

    private fun postStartupNotification() {
        val channelId = "risa_startup_channel"
        val nm = getSystemService(NotificationManager::class.java)
        if (nm != null && Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            val ch = NotificationChannel(channelId, "Risa Startup", NotificationManager.IMPORTANCE_LOW)
            nm.createNotificationChannel(ch)
        }

        val notification = NotificationCompat.Builder(this, channelId)
            .setContentTitle("Risa")
            .setContentText("App started")
            .setSmallIcon(android.R.drawable.ic_dialog_info)
            .setAutoCancel(true)
            .build()

        nm?.notify(1001, notification)
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
