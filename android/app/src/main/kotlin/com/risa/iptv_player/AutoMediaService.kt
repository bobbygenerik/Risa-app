package com.risa.iptv_player

import android.content.Intent
import android.os.Bundle
import android.support.v4.media.MediaBrowserCompat
import android.support.v4.media.MediaDescriptionCompat
import android.support.v4.media.session.MediaSessionCompat
import android.support.v4.media.session.PlaybackStateCompat
import androidx.media.MediaBrowserServiceCompat
import android.net.Uri

class AutoMediaService : MediaBrowserServiceCompat() {
    private lateinit var mediaSession: MediaSessionCompat
    
    companion object {
        private const val ROOT_ID = "root"
        private const val LIVE_TV_ID = "live_tv"
        private const val MOVIES_ID = "movies"
        private const val SERIES_ID = "series"
    }

    override fun onCreate() {
        super.onCreate()
        
        mediaSession = MediaSessionCompat(this, "AutoMediaService").apply {
            setFlags(MediaSessionCompat.FLAG_HANDLES_MEDIA_BUTTONS or
                    MediaSessionCompat.FLAG_HANDLES_TRANSPORT_CONTROLS)
            
            setPlaybackState(PlaybackStateCompat.Builder()
                .setState(PlaybackStateCompat.STATE_NONE, 0, 1.0f)
                .build())
            
            setCallback(object : MediaSessionCompat.Callback() {
                override fun onPlay() {
                    val intent = packageManager.getLaunchIntentForPackage(packageName)
                    intent?.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                    startActivity(intent)
                }
                
                override fun onPlayFromMediaId(mediaId: String?, extras: Bundle?) {
                    val intent = packageManager.getLaunchIntentForPackage(packageName)
                    intent?.apply {
                        addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                        putExtra("mediaId", mediaId)
                        data = Uri.parse("risa://content/$mediaId")
                    }
                    startActivity(intent)
                }
            })
            
            isActive = true
        }
        
        sessionToken = mediaSession.sessionToken
    }

    override fun onGetRoot(clientPackageName: String, clientUid: Int, rootHints: Bundle?): BrowserRoot {
        return BrowserRoot(ROOT_ID, null)
    }

    override fun onLoadChildren(parentId: String, result: Result<MutableList<MediaBrowserCompat.MediaItem>>) {
        val mediaItems = mutableListOf<MediaBrowserCompat.MediaItem>()
        
        when (parentId) {
            ROOT_ID -> {
                mediaItems.add(createBrowsableItem(LIVE_TV_ID, "Live TV", "Watch live channels"))
                mediaItems.add(createBrowsableItem(MOVIES_ID, "Movies", "Browse movies"))
                mediaItems.add(createBrowsableItem(SERIES_ID, "Series", "Browse TV series"))
            }
        }
        
        result.sendResult(mediaItems)
    }
    
    private fun createBrowsableItem(id: String, title: String, subtitle: String): MediaBrowserCompat.MediaItem {
        val description = MediaDescriptionCompat.Builder()
            .setMediaId(id)
            .setTitle(title)
            .setSubtitle(subtitle)
            .build()
        return MediaBrowserCompat.MediaItem(description, MediaBrowserCompat.MediaItem.FLAG_BROWSABLE)
    }

    override fun onDestroy() {
        mediaSession.release()
        super.onDestroy()
    }
}
