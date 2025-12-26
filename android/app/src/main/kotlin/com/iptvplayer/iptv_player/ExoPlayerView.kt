package com.iptvplayer.iptv_player

import android.content.Context
import android.net.Uri
import android.os.Build
import android.os.Handler
import android.os.Looper
import android.view.View
import androidx.media3.common.MediaItem
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

@UnstableApi
class ExoPlayerView(
    context: Context,
    messenger: BinaryMessenger,
    viewId: Int,
    creationParams: Map<String, Any>?
) : PlatformView, MethodChannel.MethodCallHandler {

    private lateinit var playerView: PlayerView
    private val exoPlayer: ExoPlayer
    private val methodChannel: MethodChannel
    private val mainHandler = Handler(Looper.getMainLooper())
    private var positionUpdateRunnable: Runnable? = null
    private var isDisposed = false
    private val prefsKey = "exoplayer_force_platform_${Build.MODEL}"

    init {
        // Inflate PlayerView XML. Allow TextureView vs SurfaceView selection via creationParams
        val inflater = LayoutInflater.from(context)
        val requestedSurface = (creationParams?.get("surfaceType") as? String)?.lowercase()
        val layoutId = when (requestedSurface) {
            "texture" -> R.layout.exo_player_view_texture
            "surface" -> R.layout.exo_player_view
            else -> R.layout.exo_player_view
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
        // Configure PlayerView
        playerView.useController = false // We use Flutter overlay controls
        playerView.setShowBuffering(PlayerView.SHOW_BUFFERING_WHEN_PLAYING)
        playerView.setKeepScreenOn(true)
        playerView.setShutterBackgroundColor(android.graphics.Color.BLACK)
        playerView.resizeMode = androidx.media3.ui.AspectRatioFrameLayout.RESIZE_MODE_FIT
        
        // Create ExoPlayer instance with custom renderers factory and data source factory
        val dataSourceFactory = androidx.media3.datasource.DefaultHttpDataSource.Factory()
            .setAllowCrossProtocolRedirects(true)
            .setConnectTimeoutMs(30000)
            .setReadTimeoutMs(30000)
            .setUserAgent("VLC/3.0.0 LibVLC/3.0.0")

        // Configure renderers factory: avoid EXTENSION_RENDERER_MODE_PREFER (problematic on some devices)
        // Default to OFF for stability; allow override via creationParams or shared prefs but do not auto-recreate player.
        val isNvidia = Build.MANUFACTURER.equals("NVIDIA", ignoreCase = true)
        val shared = context.getSharedPreferences("risa_exo_prefs", Context.MODE_PRIVATE)
        val forcePlatform = shared.getBoolean(prefsKey, false)
        val requestedExtensionMode = (creationParams?.get("extensionRenderers") as? String)?.lowercase()

        val extensionMode = when {
            forcePlatform -> androidx.media3.exoplayer.DefaultRenderersFactory.EXTENSION_RENDERER_MODE_OFF
            requestedExtensionMode == "on" -> androidx.media3.exoplayer.DefaultRenderersFactory.EXTENSION_RENDERER_MODE_ON
            requestedExtensionMode == "off" -> androidx.media3.exoplayer.DefaultRenderersFactory.EXTENSION_RENDERER_MODE_OFF
            // Avoid EXTENSION_RENDERER_MODE_PREFER as it can worsen YUV->RGB conversion on Shield
            isNvidia -> androidx.media3.exoplayer.DefaultRenderersFactory.EXTENSION_RENDERER_MODE_OFF
            else -> androidx.media3.exoplayer.DefaultRenderersFactory.EXTENSION_RENDERER_MODE_OFF
        }

        val renderersFactory = object : androidx.media3.exoplayer.DefaultRenderersFactory(context) {
            init {
                setExtensionRendererMode(extensionMode)
                setEnableDecoderFallback(true)
                android.util.Log.d("ExoPlayer", "RenderersFactory configured: extensionMode=$extensionMode, decoderFallback=true")
            }
        }

        // Build ExoPlayer with our custom renderers factory
        val trackSelector = androidx.media3.exoplayer.trackselection.DefaultTrackSelector(context)
        trackSelector.parameters = trackSelector.buildUponParameters()
            .setMaxAudioChannelCount(8)
            .build()

        exoPlayer = ExoPlayer.Builder(context, renderersFactory)
            // Ensure tunneling is NOT enabled by default on TV/Shield devices
            .setTunnelingEnabled(false)
            .setMediaSourceFactory(
                androidx.media3.exoplayer.source.DefaultMediaSourceFactory(context)
                    .setDataSourceFactory(dataSourceFactory)
            )
            .setTrackSelector(trackSelector)
            .build()
            .apply {
                playWhenReady = creationParams?.get("autoPlay") as? Boolean ?: true
                volume = if (creationParams?.get("muted") as? Boolean == true) 0f else 1f
                addListener(object : Player.Listener {
                    override fun onPlaybackStateChanged(state: Int) {
                        val stateName = when (state) {
                            Player.STATE_READY -> "ready"
                            Player.STATE_BUFFERING -> "buffering"
                            Player.STATE_ENDED -> "ended"
                            Player.STATE_IDLE -> "idle"
                            else -> "unknown"
                        }
                        android.util.Log.d("ExoPlayer", "State changed to: $stateName")
                        methodChannel.invokeMethod("onPlaybackStateChanged", mapOf("state" to stateName))
                        // Log active track details when ready (debug builds only)
                        if (state == Player.STATE_READY) {
                            try {
                                val tracks = exoPlayer.currentTracks
                                for (group in tracks.groups) {
                                    for (i in 0 until group.length) {
                                        val format = group.getTrackFormat(i)
                                        if (format != null) {
                                            android.util.Log.d("ExoPlayer", "Active format: mime=${format.sampleMimeType}, w=${format.width}, h=${format.height}, color=${format.colorInfo}")
                                        }
                                    }
                                }
                            } catch (e: Exception) {
                                android.util.Log.w("ExoPlayer", "Failed to log format details: ${e.message}")
                            }
                        }
                    }
                    
                    override fun onIsPlayingChanged(isPlaying: Boolean) {
                        methodChannel.invokeMethod("onPlayingChanged", mapOf("isPlaying" to isPlaying))
                    }
                    
                    override fun onPlayerError(error: androidx.media3.common.PlaybackException) {
                        android.util.Log.e("ExoPlayer", "Playback error: ${error.message}")
                        methodChannel.invokeMethod("onPlayerError", mapOf("error" to error.message))
                    }
                })
            }

        // Setup method channel for communication with Flutter
        methodChannel = MethodChannel(messenger, "com.streamhub.iptv/exoplayer_$viewId")
        methodChannel.setMethodCallHandler(this)

        // Prefer the platform default surface type.
        android.util.Log.d("ExoPlayer", "Using platform default surface type for PlayerView")

        // Attach player to view
        playerView.player = exoPlayer
        // Hide native PlayerView until we have media to play so it doesn't steal focus
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
        val mediaItem = MediaItem.fromUri(Uri.parse(url))
        exoPlayer.setMediaItem(mediaItem)
        exoPlayer.prepare()
    }

    override fun getView(): View = playerView

    override fun dispose() {
        isDisposed = true
        positionUpdateRunnable?.let { mainHandler.removeCallbacks(it) }
        exoPlayer.release()
        methodChannel.setMethodCallHandler(null)
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
                    if (group.type == androidx.media3.common.C.TRACK_TYPE_AUDIO) {
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

