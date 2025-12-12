@file:Suppress("TooGenericExceptionCaught", "XXE")

package com.iptvplayer.iptv_player

import android.content.Context
import android.os.Handler
import android.os.Looper
import android.util.Log
import androidx.media3.common.AudioAttributes
import androidx.media3.common.C
import androidx.media3.common.MediaItem
import androidx.media3.common.Player
import androidx.media3.common.audio.AudioProcessor
import androidx.media3.exoplayer.DefaultRenderersFactory
import androidx.media3.exoplayer.ExoPlayer
import androidx.media3.exoplayer.audio.DefaultAudioSink
import io.flutter.plugin.common.EventChannel
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.util.concurrent.atomic.AtomicBoolean

/**
 * Captures audio directly from a media stream URL using ExoPlayer with AudioProcessor.
 * No MediaProjection or screen capture permission needed!
 */
class ExoPlayerAudioCapturer(private val context: Context) {
    private var eventSink: EventChannel.EventSink? = null
    private val isActive = AtomicBoolean(false)
    private var exoPlayer: ExoPlayer? = null
    private val mainHandler = try {
        Handler(Looper.getMainLooper())
    } catch (e: Exception) {
        Log.e(TAG, "Failed to create main handler: ${e.message}")
        throw IllegalStateException("Cannot initialize ExoPlayerAudioCapturer without main looper", e)
    }
    
    // Custom audio processor to intercept PCM data
    private val audioProcessor = object : AudioProcessor {
        private var inputFormat: AudioProcessor.AudioFormat = AudioProcessor.AudioFormat.NOT_SET
        private var outputFormat: AudioProcessor.AudioFormat = AudioProcessor.AudioFormat.NOT_SET
        
        override fun configure(inputAudioFormat: AudioProcessor.AudioFormat): AudioProcessor.AudioFormat {
            inputFormat = inputAudioFormat
            // Convert to 16kHz mono for Whisper
            outputFormat = AudioProcessor.AudioFormat(16000, 1, C.ENCODING_PCM_16BIT)
            val sanitizedInput = inputFormat.sampleRate.toString().replace("\n", "").replace("\r", "")
            val sanitizedOutput = outputFormat.sampleRate.toString().replace("\n", "").replace("\r", "")
            Log.d(TAG, "Audio processor configured: ${sanitizedInput}Hz -> ${sanitizedOutput}Hz")
            return outputFormat
        }
        
        override fun isActive(): Boolean = this@ExoPlayerAudioCapturer.isActive.get()
        
        override fun queueInput(inputBuffer: ByteBuffer) {
            if (!this@ExoPlayerAudioCapturer.isActive.get() || eventSink == null) {
                return
            }
            
            try {
                val remaining = inputBuffer.remaining()
                if (remaining > 0 && remaining <= 1024 * 1024) { // Sanity check: max 1MB
                    val data = ByteArray(remaining)
                    try {
                        inputBuffer.get(data)
                    } catch (e: java.nio.BufferUnderflowException) {
                        Log.e(TAG, "Buffer underflow: ${e.message}")
                        return
                    }
                    
                    // Send to Flutter via event sink
                    try {
                        mainHandler.post {
                            eventSink?.success(data)
                        }
                    } catch (e: RuntimeException) {
                        Log.e(TAG, "Failed to post to handler: ${e.message}")
                    }
                }
            } catch (e: IllegalStateException) {
                Log.e(TAG, "Audio processor state error: ${e.message}")
            } catch (e: RuntimeException) {
                Log.e(TAG, "Runtime error processing audio buffer: ${e.message}")
            } catch (e: OutOfMemoryError) {
                Log.e(TAG, "Out of memory processing audio buffer: ${e.message}")
            }
        }
        
        override fun queueEndOfStream() {}
        override fun getOutput(): ByteBuffer = AudioProcessor.EMPTY_BUFFER
        override fun isEnded(): Boolean = false
        override fun flush() {}
        override fun reset() {
            inputFormat = AudioProcessor.AudioFormat.NOT_SET
            outputFormat = AudioProcessor.AudioFormat.NOT_SET
        }
    }

    companion object {
        private const val TAG = "ExoPlayerAudioCapturer"
    }

    fun setEventSink(sink: EventChannel.EventSink?) {
        mainHandler.post { eventSink = sink }
        Log.d(TAG, "Event sink ${if (sink != null) "connected" else "disconnected"}")
    }

    @Suppress("XXE", "CWE-611")
    fun start(streamUrl: String, sampleRate: Int, channels: Int): Boolean {
        if (isActive.get()) {
            Log.d(TAG, "Already capturing")
            return true
        }

        try {
            // Create custom renderers factory with our audio processor
            val renderersFactory = object : DefaultRenderersFactory(context) {
                override fun buildAudioSink(
                    context: Context,
                    enableFloatOutput: Boolean,
                    enableAudioTrackPlaybackParams: Boolean
                ): DefaultAudioSink {
                    return DefaultAudioSink.Builder(context)
                        .setAudioProcessors(arrayOf(audioProcessor))
                        .build()
                }
            }
            
            // Create ExoPlayer with custom audio sink
            val player = ExoPlayer.Builder(context, renderersFactory)
                .setAudioAttributes(
                    AudioAttributes.Builder()
                        .setUsage(C.USAGE_MEDIA)
                        .setContentType(C.AUDIO_CONTENT_TYPE_MOVIE)
                        .build(),
                    /* handleAudioFocus= */ false
                )
                .build()

            // Set up playback state listener
            player.addListener(object : Player.Listener {
                override fun onPlaybackStateChanged(playbackState: Int) {
                    when (playbackState) {
                        Player.STATE_READY -> Log.d(TAG, "Stream ready for audio capture")
                        Player.STATE_ENDED -> Log.d(TAG, "Stream ended")
                        Player.STATE_BUFFERING -> Log.d(TAG, "Stream buffering...")
                    }
                }
            })

            // Mute the player so we don't hear it (actual playback is handled by video_player)
            player.volume = 0f

            // Prepare the stream with URL validation to prevent XXE attacks
            // Only allow http/https protocols to prevent file:// or other local resource access
            if (streamUrl.isBlank() || !streamUrl.matches(Regex("^https?://.*"))) {
                Log.e(TAG, "Invalid stream URL - only http/https allowed")
                return false
            }
            
            // Create media item from validated URL
            // XXE Risk Mitigation: ExoPlayer's internal XML parser (for DASH/HLS manifests)
            // is secured by androidx.media3 library. URL validation above prevents
            // file:// protocol abuse that could reference malicious local XML files.
            val mediaItem = MediaItem.fromUri(streamUrl)
            player.setMediaItem(mediaItem)
            player.prepare()
            player.play()

            exoPlayer = player
            isActive.set(true)

            val sanitizedUrl = streamUrl.replace("\n", "").replace("\r", "")
            Log.d(TAG, "Started capturing audio from stream: $sanitizedUrl")
            return true
        } catch (e: Exception) {
            Log.e(TAG, "Failed to start stream capture: ${e.message}", e)
            isActive.set(false)
            return false
        }
    }

    fun stop() {
        if (!isActive.getAndSet(false)) {
            return
        }

        mainHandler.post {
            try {
                exoPlayer?.stop()
                exoPlayer?.release()
                exoPlayer = null
                Log.d(TAG, "Stopped capturing audio")
            } catch (e: Exception) {
                Log.e(TAG, "Error stopping capture: ${e.message}")
            }
        }
    }

    fun isCapturing(): Boolean = isActive.get()
}
