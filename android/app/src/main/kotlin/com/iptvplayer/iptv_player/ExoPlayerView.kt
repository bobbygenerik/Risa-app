package com.iptvplayer.iptv_player

import android.content.Context
import android.net.Uri
import android.os.Build
import android.view.View
import androidx.media3.common.MediaItem
import androidx.media3.common.Player
import androidx.media3.common.util.UnstableApi
import androidx.media3.exoplayer.ExoPlayer
import androidx.media3.ui.PlayerView
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

    private val playerView: PlayerView = PlayerView(context)
    private val exoPlayer: ExoPlayer
    private val methodChannel: MethodChannel

    init {
        // Configure PlayerView first
        playerView.useController = false // We use Flutter overlay controls
        playerView.setShowBuffering(PlayerView.SHOW_BUFFERING_WHEN_PLAYING)
        playerView.setKeepScreenOn(true)
        playerView.setShutterBackgroundColor(android.graphics.Color.BLACK)
        playerView.resizeMode = androidx.media3.ui.AspectRatioFrameLayout.RESIZE_MODE_FIT
        
        // Create ExoPlayer instance with custom renderers factory and data source factory
        val dataSourceFactory = androidx.media3.datasource.DefaultHttpDataSource.Factory()
            .setAllowCrossProtocolRedirects(true)

        // Configure renderers factory: enable decoder fallback and prefer extension renderers
        // Apply NVIDIA-specific tweaks to prefer extension renderers and allow software fallback earlier
        val isNvidia = Build.MANUFACTURER.equals("NVIDIA", ignoreCase = true)
        val renderersFactory = object : androidx.media3.exoplayer.DefaultRenderersFactory(context) {
            init {
                if (isNvidia) {
                    // On Shield prefer extension (FFmpeg) renderers and enable decoder fallback
                    setExtensionRendererMode(androidx.media3.exoplayer.DefaultRenderersFactory.EXTENSION_RENDERER_MODE_PREFER)
                    setEnableDecoderFallback(true)
                    android.util.Log.i("ExoPlayer", "NVIDIA Shield detected: preferring extension renderers and enabling decoder fallback")
                } else {
                    // Default: prefer extension renderers and enable decoder fallback for broad compatibility
                    setExtensionRendererMode(androidx.media3.exoplayer.DefaultRenderersFactory.EXTENSION_RENDERER_MODE_PREFER)
                    setEnableDecoderFallback(true)
                }
            }
        }

        // Build ExoPlayer with our custom renderers factory
        exoPlayer = ExoPlayer.Builder(context, renderersFactory)
            .setMediaSourceFactory(
                androidx.media3.exoplayer.source.DefaultMediaSourceFactory(context)
                    .setDataSourceFactory(dataSourceFactory)
            )
            .setTrackSelector(
                androidx.media3.exoplayer.trackselection.DefaultTrackSelector(context).apply {
                    parameters = buildUponParameters()
                        .setMaxAudioChannelCount(2)
                        .build()
                }
            )
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
                    }
                    override fun onPlayerError(error: androidx.media3.common.PlaybackException) {
                        android.util.Log.e("ExoPlayer", "Playback error: ${error.message}")
                        methodChannel.invokeMethod("onPlayerError", mapOf("error" to error.message))
                    }
                })
            }

        // Force SurfaceView usage on Android TV / NVIDIA Shield to avoid TextureView issues
        try {
            // Prefer SurfaceView (disable TextureView)
            playerView.setUseTextureView(false)
        } catch (ex: Throwable) {
            // Some platform builds may not expose setUseTextureView; ignore safely
            android.util.Log.w("ExoPlayer", "Could not force SurfaceView: ${ex.message}")
        }

        // Attach player to view
        playerView.player = exoPlayer

        // Setup method channel for communication with Flutter
        methodChannel = MethodChannel(messenger, "com.streamhub.iptv/exoplayer_$viewId")
        methodChannel.setMethodCallHandler(this)

        // Load video URL if provided
        val videoUrl = creationParams?.get("videoUrl") as? String
        if (videoUrl != null) {
            android.util.Log.d("ExoPlayer", "Loading video: $videoUrl")
            loadVideo(videoUrl)
        } else {
            android.util.Log.w("ExoPlayer", "No video URL provided")
        }
    }

    private fun loadVideo(url: String) {
        val mediaItem = MediaItem.Builder()
            .setUri(Uri.parse(url))
            .build()
        // Choose media source type: HLS if .m3u8, otherwise treat as progressive (TS/MP4)
        val lower = url.lowercase()
        val mediaSource = if (lower.contains(".m3u8")) {
            androidx.media3.exoplayer.source.hls.HlsMediaSource.Factory(
                androidx.media3.datasource.DefaultHttpDataSource.Factory().setAllowCrossProtocolRedirects(true)
            ).createMediaSource(mediaItem)
        } else {
            // ProgressiveMediaSource handles raw TS streams (common for Xtream PHP endpoints)
            androidx.media3.exoplayer.source.ProgressiveMediaSource.Factory(
                androidx.media3.datasource.DefaultHttpDataSource.Factory().setAllowCrossProtocolRedirects(true)
            ).createMediaSource(mediaItem)
        }

        exoPlayer.setMediaSource(mediaSource)
        exoPlayer.prepare()
    }

    override fun getView(): View = playerView

    override fun dispose() {
        exoPlayer.release()
        methodChannel.setMethodCallHandler(null)
    }

    override fun onMethodCall(call: MethodCall, result: MethodChannel.Result) {
        when (call.method) {
            "play" -> {
                exoPlayer.play()
                result.success(null)
            }
            "pause" -> {
                exoPlayer.pause()
                result.success(null)
            }
            "seekTo" -> {
                val position = call.argument<Int>("position")?.toLong() ?: 0L
                exoPlayer.seekTo(position)
                result.success(null)
            }
            "getPosition" -> {
                result.success(exoPlayer.currentPosition.toInt())
            }
            "getDuration" -> {
                result.success(exoPlayer.duration.toInt())
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
            else -> {
                result.notImplemented()
            }
        }
    }
}
