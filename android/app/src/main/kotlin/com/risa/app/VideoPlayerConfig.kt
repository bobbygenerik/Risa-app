package com.risa.app

import android.content.Context
import android.util.Log
import io.flutter.plugin.common.MethodChannel
import java.lang.reflect.Field

class VideoPlayerConfig {
    companion object {
        fun configureSurfaceView(context: Context): Boolean {
            return try {
                // Try multiple approaches to fix rainbow tint on NVIDIA Shield
                
                // Method 1: ExoPlayer color space and HDR settings
                System.setProperty("exoplayer.prefer_extension_decoders", "false")
                System.setProperty("exoplayer.force_software_decoder", "false")
                System.setProperty("exoplayer.color_space", "bt709")
                System.setProperty("exoplayer.hdr_mode", "disabled")
                
                // Method 2: Android video rendering settings
                System.setProperty("flutter.video_player.surface_view", "true")
                System.setProperty("flutter.video_player.use_surface_view", "true")
                System.setProperty("video.color_format", "yuv420p")
                
                // Method 3: NVIDIA Shield specific workarounds
                val deviceModel = android.os.Build.MODEL.lowercase()
                if (deviceModel.contains("shield") || deviceModel.contains("nvidia")) {
                    System.setProperty("exoplayer.nvidia_workaround", "true")
                    System.setProperty("video.force_rgb_conversion", "true")
                    Log.i("VideoPlayerConfig", "Applied NVIDIA Shield specific workarounds")
                }
                
                Log.i("VideoPlayerConfig", "Applied rainbow tint fixes for device: ${android.os.Build.MODEL}")
                true
            } catch (e: Exception) {
                Log.w("VideoPlayerConfig", "Failed to configure video fixes: ${e.message}")
                false
            }
        }
    }
}