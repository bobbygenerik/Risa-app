package com.risa.app

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
    private val mainHandler = Handler(Looper.getMainLooper())
    
    // Custom audio processor to intercept PCM data
    private val audioProcessor = object : AudioProcessor {
        private var inputFormat: AudioProcessor.AudioFormat = AudioProcessor.AudioFormat.NOT_SET
        private var outputFormat: AudioProcessor.AudioFormat = AudioProcessor.AudioFormat.NOT_SET
        
        override fun configure(inputAudioFormat: AudioProcessor.AudioFormat): AudioProcessor.AudioFormat {
            inputFormat = inputAudioFormat
            // Convert to 16kHz mono for Whisper
            outputFormat = AudioProcessor.AudioFormat(16000, 1, C.ENCODING_PCM_16BIT)
            Log.d(TAG, "Audio processor configured: ${inputFormat.sampleRate}Hz -> ${outputFormat.sampleRate}Hz")
            return outputFormat
        }
        
        override fun isActive(): Boolean = this@ExoPlayerAudioCapturer.isActive.get()
        
        override fun queueInput(inputBuffer: ByteBuffer) {
            if (!this@ExoPlayerAudioCapturer.isActive.get() || eventSink == null) {
                return
            }
            
            try {
                val remaining = inputBuffer.remaining()
                if (remaining > 0) {
                    val data = ByteArray(remaining)
                    inputBuffer.get(data)
                    
                    // Send to Flutter via event sink
                    mainHandler.post {
                        eventSink?.success(data)
                    }
                }
            } catch (e: Exception) {
                Log.e(TAG, "Error processing audio buffer: ${e.message}")
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

            // Prepare the stream
            val mediaItem = MediaItem.fromUri(streamUrl)
            player.setMediaItem(mediaItem)
            player.prepare()
            player.play()

            exoPlayer = player
            isActive.set(true)

            Log.d(TAG, "Started capturing audio from stream: $streamUrl")
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
