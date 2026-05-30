package com.iptvplayer.iptv_player

import android.content.Context
import android.content.res.Configuration
import android.net.Uri
import android.os.Build
import android.os.Handler
import android.os.Looper
import android.view.LayoutInflater
import android.view.View
import androidx.media3.common.C
import androidx.media3.common.MediaItem
import androidx.media3.common.MimeTypes
import androidx.media3.common.Player
import androidx.media3.common.util.UnstableApi
import androidx.media3.exoplayer.DefaultLoadControl
import androidx.media3.exoplayer.ExoPlayer
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector
import androidx.media3.ui.PlayerView
import com.risa.app.R
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

    companion object {
        private var refCount = 0
    }

    private lateinit var playerView: PlayerView
    private var exoPlayer: ExoPlayer? = null
    private var trackSelector: DefaultTrackSelector? = null
    private lateinit var methodChannel: MethodChannel
    private val mainHandler = Handler(Looper.getMainLooper())
    private var positionUpdateRunnable: Runnable? = null
    private var isDisposed = false
    private var firstFrameRendered = false
    private var firstFrameTimestamp: Long = 0
    private var fallbackCheckRunnable: Runnable? = null
    private val prefsKey = "exoplayer_force_platform_${Build.MODEL}"

    init {
        val requestedSurface = (creationParams?.get("surfaceType") as? String)?.lowercase()
        val surfaceType = if (requestedSurface == "texture") "texture" else "surface"
        refCount += 1

        val inflater = LayoutInflater.from(context)
        val layoutId = if (surfaceType == "surface") {
            R.layout.exo_player_view
        } else {
            R.layout.exo_player_view_texture
        }
        playerView = inflater.inflate(layoutId, null) as PlayerView

        try {
            playerView.isFocusable = false
            playerView.isFocusableInTouchMode = false
            playerView.isClickable = false
        } catch (ex: Exception) {
            android.util.Log.w("ExoPlayer", "Failed to change focusability on PlayerView: ${ex.message}")
        }

        playerView.useController = false
        playerView.setShowBuffering(PlayerView.SHOW_BUFFERING_NEVER)
        playerView.setKeepScreenOn(true)
        playerView.setShutterBackgroundColor(android.graphics.Color.BLACK)
        playerView.resizeMode = androidx.media3.ui.AspectRatioFrameLayout.RESIZE_MODE_FIT

        methodChannel = MethodChannel(messenger, "com.streamhub.iptv/exoplayer_$viewId")
        methodChannel.setMethodCallHandler(this)

        try {
            playerView.visibility = View.GONE
        } catch (ex: Exception) {
            android.util.Log.w("ExoPlayer", "Failed to set PlayerView visibility: ${ex.message}")
        }

        // Defer ExoPlayer allocation so PlatformView registration returns immediately
        // (blocking here ANRs SHIELD when the user opens Live TV → Watch).
        mainHandler.post { initializePlayer(context, creationParams) }
    }

    private fun initializePlayer(context: Context, creationParams: Map<String, Any>?) {
        if (isDisposed) return

        val dataSourceFactory = androidx.media3.datasource.DefaultHttpDataSource.Factory()
            .setAllowCrossProtocolRedirects(true)
            .setConnectTimeoutMs(15000)
            .setReadTimeoutMs(15000)
            .setUserAgent("VLC/3.0.0 LibVLC/3.0.0")

        val deviceModel = Build.MODEL.lowercase()
        val isShield = deviceModel.contains("shield") || deviceModel.contains("nvidia")
        val extensionMode = androidx.media3.exoplayer.DefaultRenderersFactory.EXTENSION_RENDERER_MODE_OFF

        val renderersFactory = object : androidx.media3.exoplayer.DefaultRenderersFactory(context) {
            init {
                setExtensionRendererMode(extensionMode)
                setEnableDecoderFallback(isShield)
                setEnableAudioFloatOutput(false)
                android.util.Log.d(
                    "ExoPlayer",
                    "RenderersFactory configured: extensionMode=OFF, decoderFallback=$isShield"
                )
            }
        }

        val selector = DefaultTrackSelector(context.applicationContext)
        trackSelector = selector
        val isAndroidTv =
            (context.resources.configuration.uiMode and Configuration.UI_MODE_TYPE_MASK) ==
                Configuration.UI_MODE_TYPE_TELEVISION
        val parametersBuilder = selector.buildUponParameters()
            .setMaxAudioChannelCount(2)
        if (isShield) {
            parametersBuilder.setPreferredVideoMimeType(MimeTypes.VIDEO_H264)
        }
        selector.parameters = parametersBuilder.build()

        try {
            val loadControl = DefaultLoadControl.Builder()
                .setBufferDurationsMs(15_000, 50_000, 1_500, 3_000)
                .setTargetBufferBytes(DefaultLoadControl.DEFAULT_TARGET_BUFFER_BYTES)
                .setPrioritizeTimeOverSizeThresholds(true)
                .build()

            val player = ExoPlayer.Builder(context.applicationContext, renderersFactory)
                .setMediaSourceFactory(
                    androidx.media3.exoplayer.source.DefaultMediaSourceFactory(context.applicationContext)
                        .setDataSourceFactory(dataSourceFactory)
                )
                .setLoadControl(loadControl)
                .setTrackSelector(selector)
                .build()
                .apply {
                    playWhenReady = false
                    volume = if (creationParams?.get("muted") as? Boolean == true) 0f else 1f
                }
            exoPlayer = player

            val playerListener = object : Player.Listener {
                override fun onVideoSizeChanged(videoSize: androidx.media3.common.VideoSize) {
                    if (!firstFrameRendered) {
                        firstFrameRendered = true
                        firstFrameTimestamp = System.currentTimeMillis()
                        android.util.Log.d(
                            "ExoPlayer",
                            "First video frame at $firstFrameTimestamp, ${videoSize.width}x${videoSize.height}"
                        )
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
                            methodChannel.invokeMethod(
                                "onPlaybackStateChanged",
                                mapOf("state" to stateName)
                            )
                        } catch (e: Exception) {
                            android.util.Log.w("ExoPlayer", "Failed to invoke state change: ${e.message}")
                        }
                    }
                }

                override fun onIsPlayingChanged(isPlaying: Boolean) {
                    if (!isDisposed) {
                        try {
                            methodChannel.invokeMethod(
                                "onPlayingChanged",
                                mapOf("isPlaying" to isPlaying)
                            )
                        } catch (e: Exception) {
                            android.util.Log.w("ExoPlayer", "Failed to invoke playing change: ${e.message}")
                        }
                    }
                }

                override fun onPlayerError(error: androidx.media3.common.PlaybackException) {
                    android.util.Log.e("ExoPlayer", "Playback error: ${error.message}")
                    if (!isDisposed) {
                        try {
                            methodChannel.invokeMethod(
                                "onPlayerError",
                                mapOf("error" to (error.message ?: "Playback error"))
                            )
                        } catch (e: Exception) {
                            android.util.Log.w("ExoPlayer", "Failed to invoke error: ${e.message}")
                        }
                    }
                }
            }
            player.addListener(playerListener)
            playerView.player = player
            startPositionUpdates()

            val videoUrl = creationParams?.get("videoUrl") as? String
            if (videoUrl != null) {
                android.util.Log.d("ExoPlayer", "Loading video (deferred)")
                loadVideo(videoUrl)
            } else {
                android.util.Log.w("ExoPlayer", "No video URL provided")
            }
        } catch (e: Exception) {
            android.util.Log.e("ExoPlayer", "Failed to create ExoPlayer: ${e.message}")
            if (!isDisposed) {
                try {
                    methodChannel.invokeMethod(
                        "onPlayerError",
                        mapOf("error" to (e.message ?: "ExoPlayer init failed"))
                    )
                } catch (_: Exception) {
                }
            }
        }
    }

    private fun playerOrNull(): ExoPlayer? = if (isDisposed) null else exoPlayer

    private fun startPositionUpdates() {
        positionUpdateRunnable = object : Runnable {
            override fun run() {
                val player = playerOrNull()
                if (player != null && player.playbackState != Player.STATE_IDLE) {
                    val position = player.currentPosition
                    val duration = player.duration
                    val bufferedPosition = player.bufferedPosition
                    methodChannel.invokeMethod(
                        "onPositionUpdate",
                        mapOf(
                            "position" to position,
                            "duration" to if (duration > 0) duration else 0L,
                            "bufferedPosition" to bufferedPosition
                        )
                    )
                }
                if (!isDisposed) {
                    mainHandler.postDelayed(this, 500)
                }
            }
        }
        mainHandler.post(positionUpdateRunnable!!)
    }

    private fun loadVideo(url: String) {
        val player = playerOrNull() ?: return
        try {
            playerView.visibility = View.VISIBLE
        } catch (ex: Exception) {
            android.util.Log.w("ExoPlayer", "Failed to set PlayerView visibility visible: ${ex.message}")
        }
        val normalizedUrl = url.lowercase()
        val mediaItem = if (normalizedUrl.endsWith(".ts")) {
            MediaItem.Builder()
                .setUri(Uri.parse(url))
                .setMimeType(MimeTypes.VIDEO_MP2T)
                .build()
        } else {
            MediaItem.fromUri(Uri.parse(url))
        }
        player.setMediaItem(mediaItem)
        player.prepare()
        player.playWhenReady = true
    }

    override fun getView(): View = playerView

    override fun dispose() {
        isDisposed = true
        try {
            positionUpdateRunnable?.let { mainHandler.removeCallbacks(it) }
            fallbackCheckRunnable?.let { mainHandler.removeCallbacks(it) }
            methodChannel.setMethodCallHandler(null)
            exoPlayer?.release()
            exoPlayer = null
        } catch (e: Exception) {
            android.util.Log.w("ExoPlayer", "Error during dispose: ${e.message}")
        }
        refCount -= 1
    }

    override fun onMethodCall(call: MethodCall, result: MethodChannel.Result) {
        val player = playerOrNull()
        if (player == null) {
            if (call.method == "loadVideo") {
                result.error("NOT_READY", "ExoPlayer is still initializing", null)
            } else {
                result.error("NOT_READY", "ExoPlayer is not ready", null)
            }
            return
        }
        val selector = trackSelector

        when (call.method) {
            "loadVideo" -> {
                val videoUrl = call.argument<String>("videoUrl")
                val autoPlay = call.argument<Boolean>("autoPlay") ?: true
                if (videoUrl != null) {
                    player.playWhenReady = autoPlay
                    loadVideo(videoUrl)
                    result.success(null)
                } else {
                    result.error("INVALID_URL", "Video URL is required", null)
                }
            }
            "play" -> {
                player.play()
                result.success(null)
            }
            "pause" -> {
                player.pause()
                result.success(null)
            }
            "playOrPause" -> {
                if (player.isPlaying) {
                    player.pause()
                } else {
                    player.play()
                }
                result.success(player.isPlaying)
            }
            "seekTo" -> {
                val position = (call.argument<Any>("position") as? Number)?.toLong() ?: 0L
                player.seekTo(position)
                result.success(null)
            }
            "seekForward" -> {
                val seconds = (call.argument<Any>("seconds") as? Number)?.toInt() ?: 10
                val newPos = player.currentPosition + (seconds * 1000L)
                player.seekTo(minOf(newPos, player.duration))
                result.success(null)
            }
            "seekBackward" -> {
                val seconds = (call.argument<Any>("seconds") as? Number)?.toInt() ?: 10
                val newPos = player.currentPosition - (seconds * 1000L)
                player.seekTo(maxOf(newPos, 0))
                result.success(null)
            }
            "getPosition" -> result.success(player.currentPosition)
            "getDuration" -> result.success(player.duration)
            "isPlaying" -> result.success(player.isPlaying)
            "switchAudioTrack" -> result.success(mapOf("success" to true))
            "listAudioTracks" -> {
                val tracks = mutableListOf<Map<String, Any>>()
                val trackGroups = player.currentTracks
                for (group in trackGroups.groups) {
                    if (group.type == C.TRACK_TYPE_AUDIO) {
                        for (i in 0 until group.length) {
                            val format = group.getTrackFormat(i)
                            tracks.add(
                                mapOf(
                                    "label" to (format.label ?: "Audio ${i + 1}"),
                                    "language" to (format.language ?: "und"),
                                    "groupIndex" to 0,
                                    "trackIndex" to i
                                )
                            )
                        }
                    }
                }
                result.success(tracks)
            }
            "listSubtitleTracks" -> {
                val tracks = mutableListOf<Map<String, Any>>()
                val trackGroups = player.currentTracks
                for ((groupIndex, group) in trackGroups.groups.withIndex()) {
                    if (group.type == C.TRACK_TYPE_TEXT) {
                        val mediaGroup = group.mediaTrackGroup
                        if (mediaGroup != null) {
                            for (i in 0 until mediaGroup.length) {
                                val format = mediaGroup.getFormat(i)
                                tracks.add(
                                    mapOf(
                                        "label" to (format.label ?: "Subtitle ${i + 1}"),
                                        "language" to (format.language ?: "und"),
                                        "groupIndex" to groupIndex,
                                        "trackIndex" to i
                                    )
                                )
                            }
                        }
                    }
                }
                result.success(tracks)
            }
            "selectSubtitleTrack" -> {
                if (selector == null) {
                    result.success(mapOf("success" to false, "message" to "no_selector"))
                    return
                }
                val groupIndex = call.argument<Int>("groupIndex") ?: -1
                val trackIndex = call.argument<Int>("trackIndex") ?: -1
                val trackGroups = player.currentTracks
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
                val builder = selector.buildUponParameters()
                    .setRendererDisabled(C.TRACK_TYPE_TEXT, false)
                if (!preferredLanguage.isNullOrEmpty()) {
                    builder.setPreferredTextLanguage(preferredLanguage)
                }
                selector.parameters = builder.build()
                result.success(mapOf("success" to true))
            }
            "disableSubtitles" -> {
                if (selector == null) {
                    result.success(mapOf("success" to false))
                    return
                }
                val builder = selector.buildUponParameters()
                    .setRendererDisabled(C.TRACK_TYPE_TEXT, true)
                selector.parameters = builder.build()
                result.success(mapOf("success" to true))
            }
            "setVolume" -> {
                val volume = call.argument<Double>("volume")?.toFloat() ?: 1f
                player.volume = volume
                result.success(null)
            }
            "setMuted" -> {
                val muted = call.argument<Boolean>("muted") ?: false
                player.volume = if (muted) 0f else 1f
                result.success(null)
            }
            "stop" -> {
                player.stop()
                result.success(null)
            }
            else -> result.notImplemented()
        }
    }
}
