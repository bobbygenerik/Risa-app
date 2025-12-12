package com.iptvplayer.iptv_player

import android.content.Context
import android.net.Uri
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
        
        // Create ExoPlayer instance with custom data source factory for redirects
        val dataSourceFactory = androidx.media3.datasource.DefaultHttpDataSource.Factory()
            .setAllowCrossProtocolRedirects(true)
        
        exoPlayer = ExoPlayer.Builder(context)
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
                addListener(object : Player.Listener {
                    override fun onPlaybackStateChanged(state: Int) {
                        when (state) {
                            Player.STATE_READY -> android.util.Log.d("ExoPlayer", "Ready to play")
                            Player.STATE_BUFFERING -> android.util.Log.d("ExoPlayer", "Buffering...")
                            Player.STATE_ENDED -> android.util.Log.d("ExoPlayer", "Playback ended")
                            Player.STATE_IDLE -> android.util.Log.d("ExoPlayer", "Idle")
                        }
                    }
                    override fun onPlayerError(error: androidx.media3.common.PlaybackException) {
                        android.util.Log.e("ExoPlayer", "Playback error: ${error.message}")
                    }
                })
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
        
        exoPlayer.setMediaItem(mediaItem)
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
            else -> {
                result.notImplemented()
            }
        }
    }
}
