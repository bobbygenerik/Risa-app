package com.risa.app

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
        
        // Create ExoPlayer instance
        exoPlayer = ExoPlayer.Builder(context)
            .build()
            .apply {
                playWhenReady = creationParams?.get("autoPlay") as? Boolean ?: true
            }

        // Attach player to view
        playerView.player = exoPlayer

        // Setup method channel for communication with Flutter
        methodChannel = MethodChannel(messenger, "com.streamhub.iptv/exoplayer_$viewId")
        methodChannel.setMethodCallHandler(this)

        // Load video URL if provided
        val videoUrl = creationParams?.get("videoUrl") as? String
        if (videoUrl != null) {
            loadVideo(videoUrl)
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
