package com.iptvplayer.iptv_player

import android.content.Context
import android.net.Uri
import android.os.Build
import android.os.Handler
import android.os.Looper
import android.view.View
import android.content.res.Configuration
import androidx.media3.common.MediaItem
import androidx.media3.common.MimeTypes
import androidx.media3.common.Player
import androidx.media3.common.util.UnstableApi
import androidx.media3.exoplayer.ExoPlayer
import androidx.media3.ui.PlayerView
import com.risa.app.R
import android.view.LayoutInflater
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.platform.PlatformView
import androidx.media3.common.C
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector
import androidx.media3.exoplayer.DefaultLoadControl

@UnstableApi
class ExoPlayerView(
    context: Context,
    messenger: BinaryMessenger,
    viewId: Int,
    creationParams: Map<String, Any>?
) : PlatformView, MethodChannel.MethodCallHandler {

    companion object {
        // Disable shared instances to prevent memory accumulation
        private var refCount = 0
    }

    private lateinit var playerView: PlayerView
    private val exoPlayer: ExoPlayer
    private lateinit var methodChannel: MethodChannel
    private lateinit var trackSelector: DefaultTrackSelector
    private val mainHandler = Handler(Looper.getMainLooper())
    private var positionUpdateRunnable: Runnable? = null
    private var isDisposed = false
    // Track whether first video frame rendered
    private var firstFrameRendered = false
    private var firstFrameTimestamp: Long = 0
    private val firstFrameTimeoutMs: Long = 5000
    private var fallbackCheckRunnable: Runnable? = null
    private val prefsKey = "exoplayer_force_platform_${Build.MODEL}"

    init {
        // Create individual PlayerView for each instance to prevent memory sharing issues
        val requestedSurface = (creationParams?.get("surfaceType") as? String)?.lowercase()
        val surfaceType = if (requestedSurface == "texture") "texture" else "surface"
        refCount += 1
        
        val inflater = LayoutInflater.from(context)
        val layoutId = if (surfaceType == "surface") {
            R.layout.exo_player_view
        } else {
            R.layout.exo_player_view_texture
        }
        val inflated = inflater.inflate(layoutId, null)
        playerView = inflated as PlayerView
        
        // Prevent the native PlayerView from stealing focus/DPAD events so Flutter widgets can receive input
        try {
            playerView.isFocusable = false
            playerView.isFocusableInTouchMode = false
            playerView.isClickable = false
        } catch (ex: Exception) {
            android.util.Log.w("ExoPlayer", "Failed to change focusability on PlayerView: ${ex.message}")
        }
        
        // Configure PlayerView with memory-conscious settings
        playerView.useController = false // We use Flutter overlay controls
        playerView.setShowBuffering(PlayerView.SHOW_BUFFERING_NEVER)
        playerView.setKeepScreenOn(true)
        playerView.setShutterBackgroundColor(android.graphics.Color.BLACK)
        playerView.resizeMode = androidx.media3.ui.AspectRatioFrameLayout.RESIZE_MODE_FIT
        
        // Setup method channel for communication with Flutter
        methodChannel = MethodChannel(messenger, "com.streamhub.iptv/exoplayer_$viewId")
        methodChannel.setMethodCallHandler(this)

        // Create ExoPlayer instance with memory-optimized settings
        val dataSourceFactory = androidx.media3.datasource.DefaultHttpDataSource.Factory()
            .setAllowCrossProtocolRedirects(true)
            .setConnectTimeoutMs(15000) // Reduced timeout
            .setReadTimeoutMs(15000)    // Reduced timeout
            .setUserAgent("VLC/3.0.0 LibVLC/3.0.0")

        // Configure renderers factory with memory constraints
        val shared = context.getSharedPreferences("risa_exo_prefs", Context.MODE_PRIVATE)
        val forcePlatform = shared.getBoolean(prefsKey, false)
        val requestedExtensionMode = (creationParams?.get("extensionRenderers") as? String)?.lowercase()
        val deviceModel = Build.MODEL.lowercase()
        val isShield = deviceModel.contains("shield") || deviceModel.contains("nvidia")

        // Force platform decoders to reduce memory usage
        val extensionMode = androidx.media3.exoplayer.DefaultRenderersFactory.EXTENSION_RENDERER_MODE_OFF

        val renderersFactory = object : androidx.media3.exoplayer.DefaultRenderersFactory(context) {
            init {
                setExtensionRendererMode(extensionMode)
                setEnableDecoderFallback(isShield) // Shield needs decoder fallback for stability
                setEnableAudioFloatOutput(false) // Disable float audio to save memory
                android.util.Log.d(
                    "ExoPlayer",
                    "RenderersFactory configured: extensionMode=OFF, decoderFallback=${isShield}, floatAudio=false"
                )
            }
        }

        // Build ExoPlayer with memory-optimized settings (individual instance)
        trackSelector = DefaultTrackSelector(context.applicationContext)
        val isAndroidTv =
            (context.resources.configuration.uiMode and Configuration.UI_MODE_TYPE_MASK) ==
                Configuration.UI_MODE_TYPE_TELEVISION
        val parametersBuilder = trackSelector.buildUponParameters()
            .setMaxAudioChannelCount(2) // Limit to stereo to save memory
        if (isAndroidTv) {
            // Remove Sd limits to allow 4K/HDR on Shield/TV devices
            // Prefer SDR H.264 on Android TV only if necessary, but ideally let it auto-select
            // parametersBuilder.setPreferredVideoMimeType(MimeTypes.VIDEO_H264)
        }
        if (isShield) {
            // Force SDR H.264 on Shield to avoid HEVC/HDR rainbow tint.
            parametersBuilder.setPreferredVideoMimeType(MimeTypes.VIDEO_H264)
        }
        trackSelector.parameters = parametersBuilder.build()

        try {
            val loadControl = DefaultLoadControl.Builder()
                .setBufferDurationsMs(
                    15_000,  // min buffer: 15s — enough to ride out brief network hiccups
                    50_000,  // max buffer: 50s — standard ExoPlayer default
                    1_500,   // playback start: 1.5s before first play
                    3_000    // rebuffer: 3s before resuming after stall
                )
                .setTargetBufferBytes(DefaultLoadControl.DEFAULT_TARGET_BUFFER_BYTES)
                .setPrioritizeTimeOverSizeThresholds(true)
                .build()

            exoPlayer = ExoPlayer.Builder(context.applicationContext, renderersFactory)
                .setMediaSourceFactory(
                    androidx.media3.exoplayer.source.DefaultMediaSourceFactory(context.applicationContext)
                        .setDataSourceFactory(dataSourceFactory)
                )
                .setLoadControl(loadControl)
                .setTrackSelector(trackSelector)
                .build()
                .apply {
                    playWhenReady = false // Don't auto-play to prevent memory pressure
                    volume = if (creationParams?.get("muted") as? Boolean == true) 0f else 1f
                }
        } catch (e: Exception) {
            android.util.Log.e("ExoPlayer", "Failed to create ExoPlayer: ${e.message}")
            throw e
        }

        // Ensure only one active listener to avoid duplicate callbacks.
        val playerListener = object : Player.Listener {
            override fun onVideoSizeChanged(videoSize: androidx.media3.common.VideoSize) {
                if (!firstFrameRendered) {
                    firstFrameRendered = true
                    firstFrameTimestamp = System.currentTimeMillis()
                    android.util.Log.d("ExoPlayer", "First video frame rendered at $firstFrameTimestamp, size=${videoSize.width}x${videoSize.height}")
                    fallbackCheckRunnable?.let { mainHandler.removeCallbacks(it) }
                }
            }
            override fun onPlaybackStateChanged(state: Int) {
                val stateName = when (state) {
                    Player.STATE_READY -> "ready"
                    Player.STATE_BUFFERING -> "buffering"
                    Player.STATE_ENDED -> "ended"
                    Player.STATE_IDLE -> "idle"
                    else -> "unknown"
                }
                android.util.Log.d("ExoPlayer", "State changed to: $stateName")
                if (!isDisposed) {
                    try {
                        methodChannel.invokeMethod("onPlaybackStateChanged", mapOf("state" to stateName))
                    } catch (e: Exception) {
                        android.util.Log.w("ExoPlayer", "Failed to invoke state change: ${e.message}")
                    }
                }
            }

            override fun onIsPlayingChanged(isPlaying: Boolean) {
                if (!isDisposed) {
                    try {
                        methodChannel.invokeMethod("onPlayingChanged", mapOf("isPlaying" to isPlaying))
                    } catch (e: Exception) {
                        android.util.Log.w("ExoPlayer", "Failed to invoke playing change: ${e.message}")
                    }
                }
            }

            override fun onPlayerError(error: androidx.media3.common.PlaybackException) {
                android.util.Log.e("ExoPlayer", "Playback error: ${error.message}")
                if (!isDisposed) {
                    try {
                        methodChannel.invokeMethod("onPlayerError", mapOf("error" to error.message))
                    } catch (e: Exception) {
                        android.util.Log.w("ExoPlayer", "Failed to invoke error: ${e.message}")
                    }
                }
            }
        }
        exoPlayer.addListener(playerListener)

        // Attach player to view
        playerView.player = exoPlayer
        
        // Hide native PlayerView until we have media to play
        try {
            playerView.visibility = View.GONE
        } catch (ex: Exception) {
            android.util.Log.w("ExoPlayer", "Failed to set PlayerView visibility: ${ex.message}")
        }

        // Start periodic position updates
        startPositionUpdates()

        // Load video URL if provided
        val videoUrl = creationParams?.get("videoUrl") as? String
        if (videoUrl != null) {
            android.util.Log.d("ExoPlayer", "Loading video: $videoUrl")
            loadVideo(videoUrl)
        } else {
            android.util.Log.w("ExoPlayer", "No video URL provided")
        }
    }

    private fun startPositionUpdates() {
        positionUpdateRunnable = object : Runnable {
            override fun run() {
                if (!isDisposed && exoPlayer.playbackState != Player.STATE_IDLE) {
                    val position = exoPlayer.currentPosition
                    val duration = exoPlayer.duration
                    val bufferedPosition = exoPlayer.bufferedPosition
                    
                    methodChannel.invokeMethod("onPositionUpdate", mapOf(
                        "position" to position,
                        "duration" to if (duration > 0) duration else 0L,
                        "bufferedPosition" to bufferedPosition
                    ))
                }
                if (!isDisposed) {
                    mainHandler.postDelayed(this, 500) // Update every 500ms
                }
            }
        }
        mainHandler.post(positionUpdateRunnable!!)
    }

    private fun loadVideo(url: String) {
        // Make native PlayerView visible only when media is about to play
        try {
            playerView.visibility = View.VISIBLE
        } catch (ex: Exception) {
            android.util.Log.w("ExoPlayer", "Failed to set PlayerView visibility visible: ${ex.message}")
        }
        // Use DefaultMediaSourceFactory (configured on the player) to infer
        // the correct MediaSource (HLS, progressive, etc.) from the MediaItem.
        val normalizedUrl = url.lowercase()
        val mediaItem = if (normalizedUrl.endsWith(".ts")) {
            MediaItem.Builder()
                .setUri(Uri.parse(url))
                .setMimeType(MimeTypes.VIDEO_MP2T)
                .build()
        } else {
            MediaItem.fromUri(Uri.parse(url))
        }
        exoPlayer.setMediaItem(mediaItem)
        exoPlayer.prepare()
    }

    override fun getView(): View = playerView

    override fun dispose() {
        isDisposed = true
        try {
            positionUpdateRunnable?.let { mainHandler.removeCallbacks(it) }
            fallbackCheckRunnable?.let { mainHandler.removeCallbacks(it) }
            methodChannel.setMethodCallHandler(null)
            exoPlayer.release() // Always release individual instance
        } catch (e: Exception) {
            android.util.Log.w("ExoPlayer", "Error during dispose: ${e.message}")
        }
        refCount -= 1
    }

    override fun onMethodCall(call: MethodCall, result: MethodChannel.Result) {
        when (call.method) {
            "loadVideo" -> {
                val videoUrl = call.argument<String>("videoUrl")
                val autoPlay = call.argument<Boolean>("autoPlay") ?: true
                if (videoUrl != null) {
                    exoPlayer.playWhenReady = autoPlay
                    loadVideo(videoUrl)
                    result.success(null)
                } else {
                    result.error("INVALID_URL", "Video URL is required", null)
                }
            }
            "play" -> {
                exoPlayer.play()
                result.success(null)
            }
            "pause" -> {
                exoPlayer.pause()
                result.success(null)
            }
            "playOrPause" -> {
                if (exoPlayer.isPlaying) {
                    exoPlayer.pause()
                } else {
                    exoPlayer.play()
                }
                result.success(exoPlayer.isPlaying)
            }
            "seekTo" -> {
                val position = (call.argument<Any>("position") as? Number)?.toLong() ?: 0L
                exoPlayer.seekTo(position)
                result.success(null)
            }
            "seekForward" -> {
                val seconds = (call.argument<Any>("seconds") as? Number)?.toInt() ?: 10
                val newPos = exoPlayer.currentPosition + (seconds * 1000L)
                exoPlayer.seekTo(minOf(newPos, exoPlayer.duration))
                result.success(null)
            }
            "seekBackward" -> {
                val seconds = (call.argument<Any>("seconds") as? Number)?.toInt() ?: 10
                val newPos = exoPlayer.currentPosition - (seconds * 1000L)
                exoPlayer.seekTo(maxOf(newPos, 0))
                result.success(null)
            }
            "getPosition" -> {
                result.success(exoPlayer.currentPosition)
            }
            "getDuration" -> {
                result.success(exoPlayer.duration)
            }
            "isPlaying" -> {
                result.success(exoPlayer.isPlaying)
            }
            "switchAudioTrack" -> {
                val trackIndex = call.argument<Int>("trackIndex") ?: 0
                // Basic audio track switching - can be enhanced
                result.success(mapOf("success" to true))
            }
            "listAudioTracks" -> {
                val tracks = mutableListOf<Map<String, Any>>()
                val trackGroups = exoPlayer.currentTracks
                
                for (group in trackGroups.groups) {
                    if (group.type == C.TRACK_TYPE_AUDIO) {
                        for (i in 0 until group.length) {
                            val format = group.getTrackFormat(i)
                            tracks.add(mapOf(
                                "label" to (format.label ?: "Audio ${i + 1}"),
                                "language" to (format.language ?: "und"),
                                "groupIndex" to 0,
                                "trackIndex" to i
                            ))
                        }
                    }
                }
                result.success(tracks)
            }
            "listSubtitleTracks" -> {
                val tracks = mutableListOf<Map<String, Any>>()
                val trackGroups = exoPlayer.currentTracks
                for ((groupIndex, group) in trackGroups.groups.withIndex()) {
                    if (group.type == C.TRACK_TYPE_TEXT) {
                        val mediaGroup = group.mediaTrackGroup
                        if (mediaGroup != null) {
                            for (i in 0 until mediaGroup.length) {
                                val format = mediaGroup.getFormat(i)
                                tracks.add(mapOf(
                                    "label" to (format.label ?: "Subtitle ${i + 1}"),
                                    "language" to (format.language ?: "und"),
                                    "groupIndex" to groupIndex,
                                    "trackIndex" to i
                                ))
                            }
                        }
                    }
                }
                result.success(tracks)
            }
            "selectSubtitleTrack" -> {
                val groupIndex = call.argument<Int>("groupIndex") ?: -1
                val trackIndex = call.argument<Int>("trackIndex") ?: -1
                val trackGroups = exoPlayer.currentTracks
                if (groupIndex < 0 || groupIndex >= trackGroups.groups.size) {
                    result.success(mapOf("success" to false, "message" to "invalid_group"))
                    return
                }
                val group = trackGroups.groups[groupIndex]
                val mediaGroup = group.mediaTrackGroup
                if (group.type != C.TRACK_TYPE_TEXT || mediaGroup == null) {
                    result.success(mapOf("success" to false, "message" to "no_text_group"))
                    return
                }
                if (trackIndex < 0 || trackIndex >= mediaGroup.length) {
                    result.success(mapOf("success" to false, "message" to "invalid_track"))
                    return
                }
                val selectedFormat = mediaGroup.getFormat(trackIndex)
                val preferredLanguage = selectedFormat.language
                val builder = trackSelector.buildUponParameters()
                    .setRendererDisabled(C.TRACK_TYPE_TEXT, false)
                if (!preferredLanguage.isNullOrEmpty()) {
                    builder.setPreferredTextLanguage(preferredLanguage)
                }
                trackSelector.parameters = builder.build()
                result.success(mapOf("success" to true))
            }
            "disableSubtitles" -> {
                val builder = trackSelector.buildUponParameters()
                    .setRendererDisabled(C.TRACK_TYPE_TEXT, true)
                trackSelector.parameters = builder.build()
                result.success(mapOf("success" to true))
            }
            "setVolume" -> {
                val volume = call.argument<Double>("volume")?.toFloat() ?: 1f
                exoPlayer.volume = volume
                result.success(null)
            }
            "setMuted" -> {
                val muted = call.argument<Boolean>("muted") ?: false
                exoPlayer.volume = if (muted) 0f else 1f
                result.success(null)
            }
            "stop" -> {
                exoPlayer.stop()
                result.success(null)
            }
            else -> {
                result.notImplemented()
            }
        }
    }
}
