package com.risa.app

import android.content.Intent
import android.os.Bundle
import android.support.v4.media.MediaBrowserCompat
import android.support.v4.media.MediaDescriptionCompat
import android.support.v4.media.session.MediaSessionCompat
import android.support.v4.media.session.PlaybackStateCompat
import androidx.media.MediaBrowserServiceCompat
import android.net.Uri
import org.json.JSONArray
import org.json.JSONObject

class AutoMediaService : MediaBrowserServiceCompat() {
    private lateinit var mediaSession: MediaSessionCompat
    
    companion object {
        private const val ROOT_ID = "root"
        private const val LIVE_TV_ID = "live_tv"
        private const val MOVIES_ID = "movies"
        private const val SERIES_ID = "series"
        private const val FAVORITES_ID = "favorites"
        private const val RECENT_ID = "recent"
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
                    setPlaybackState(PlaybackStateCompat.Builder()
                        .setState(PlaybackStateCompat.STATE_PLAYING, 0, 1.0f)
                        .setActions(PlaybackStateCompat.ACTION_PLAY_PAUSE or 
                                   PlaybackStateCompat.ACTION_PAUSE or 
                                   PlaybackStateCompat.ACTION_SKIP_TO_NEXT or 
                                   PlaybackStateCompat.ACTION_SKIP_TO_PREVIOUS)
                        .build())
                }
                
                override fun onPause() {
                    setPlaybackState(PlaybackStateCompat.Builder()
                        .setState(PlaybackStateCompat.STATE_PAUSED, 0, 1.0f)
                        .setActions(PlaybackStateCompat.ACTION_PLAY_PAUSE or 
                                   PlaybackStateCompat.ACTION_PLAY)
                        .build())
                }
                
                override fun onSkipToNext() {
                    // Switch to next channel
                    val prefs = getSharedPreferences("FlutterSharedPreferences", MODE_PRIVATE)
                    val currentId = prefs.getString("flutter.last_played_channel", null)
                    if (currentId != null) {
                        playNextChannel(currentId)
                    }
                }
                
                override fun onSkipToPrevious() {
                    // Switch to previous channel
                    val prefs = getSharedPreferences("FlutterSharedPreferences", MODE_PRIVATE)
                    val currentId = prefs.getString("flutter.last_played_channel", null)
                    if (currentId != null) {
                        playPreviousChannel(currentId)
                    }
                }
                
                override fun onPlayFromMediaId(mediaId: String?, extras: Bundle?) {
                    if (mediaId == null) return
                    
                    // Get channel URL from cache
                    val prefs = getSharedPreferences("FlutterSharedPreferences", MODE_PRIVATE)
                    val cachedPlaylist = prefs.getString("flutter.cached_playlist", null)
                    
                    if (cachedPlaylist != null) {
                        try {
                            val channels = JSONArray(cachedPlaylist)
                            for (i in 0 until channels.length()) {
                                val channel = channels.getJSONObject(i)
                                if (channel.optString("id") == mediaId) {
                                    val url = channel.optString("url", "")
                                    val name = channel.optString("name", "")
                                    
                                    // Save last played channel for next/prev
                                    prefs.edit().putString("flutter.last_played_channel", mediaId).apply()
                                    
                                    val intent = Intent(this@AutoMediaService, MainActivity::class.java)
                                    intent.apply {
                                        addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                                        putExtra("autoplay", true)
                                        putExtra("channel_url", url)
                                        putExtra("channel_name", name)
                                        putExtra("channel_id", mediaId)
                                    }
                                    startActivity(intent)
                                    return
                                }
                            }
                        } catch (e: Exception) {
                            // Fallback to just launching app
                        }
                    }
                    
                    // Fallback: just launch app
                    val intent = packageManager.getLaunchIntentForPackage(packageName)
                    intent?.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
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
                mediaItems.add(createBrowsableItem(FAVORITES_ID, "Favorites", "Your favorite channels"))
                mediaItems.add(createBrowsableItem(RECENT_ID, "Recently Watched", "Continue watching"))
                mediaItems.add(createBrowsableItem(LIVE_TV_ID, "Live TV", "Watch live channels"))
                mediaItems.add(createBrowsableItem(MOVIES_ID, "Movies", "Browse movies"))
                mediaItems.add(createBrowsableItem(SERIES_ID, "Series", "Browse TV series"))
            }
            FAVORITES_ID -> {
                loadFavorites(mediaItems)
            }
            RECENT_ID -> {
                loadRecentChannels(mediaItems)
            }
            LIVE_TV_ID -> {
                loadChannelsFromCache(mediaItems, "Live")
            }
            MOVIES_ID -> {
                loadChannelsFromCache(mediaItems, "Movies")
            }
            SERIES_ID -> {
                loadChannelsFromCache(mediaItems, "Series")
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
    
    private fun createPlayableItem(id: String, title: String, subtitle: String): MediaBrowserCompat.MediaItem {
        val description = MediaDescriptionCompat.Builder()
            .setMediaId(id)
            .setTitle(title)
            .setSubtitle(subtitle)
            .build()
        return MediaBrowserCompat.MediaItem(description, MediaBrowserCompat.MediaItem.FLAG_PLAYABLE)
    }
    
    private fun loadChannelsFromCache(mediaItems: MutableList<MediaBrowserCompat.MediaItem>, category: String) {
        try {
            val prefs = getSharedPreferences("FlutterSharedPreferences", MODE_PRIVATE)
            val cachedPlaylist = prefs.getString("flutter.cached_playlist", null)
            
            if (cachedPlaylist != null) {
                val channels = JSONArray(cachedPlaylist)
                var count = 0
                
                for (i in 0 until channels.length()) {
                    if (count >= 20) break // Limit to 20 items for performance
                    
                    val channel = channels.getJSONObject(i)
                    val groupTitle = channel.optString("groupTitle", "")
                    
                    // Filter by category
                    val matchesCategory = when (category) {
                        "Live" -> !groupTitle.contains("Movies", ignoreCase = true) && 
                                  !groupTitle.contains("Series", ignoreCase = true)
                        "Movies" -> groupTitle.contains("Movies", ignoreCase = true) ||
                                    groupTitle.contains("VOD", ignoreCase = true)
                        "Series" -> groupTitle.contains("Series", ignoreCase = true) ||
                                    groupTitle.contains("TV Shows", ignoreCase = true)
                        else -> false
                    }
                    
                    if (matchesCategory) {
                        val name = channel.optString("name", "Unknown")
                        val id = channel.optString("id", "channel_$i")
                        mediaItems.add(createPlayableItem(id, name, groupTitle))
                        count++
                    }
                }
            }
            
            // If no items loaded, show a message
            if (mediaItems.isEmpty()) {
                mediaItems.add(createPlayableItem(
                    "no_content",
                    "No $category content available",
                    "Add a playlist in the app"
                ))
            }
        } catch (e: Exception) {
            mediaItems.add(createPlayableItem(
                "error",
                "Error loading content",
                e.message ?: "Unknown error"
            ))
        }
    }
    
    private fun loadFavorites(mediaItems: MutableList<MediaBrowserCompat.MediaItem>) {
        try {
            val prefs = getSharedPreferences("FlutterSharedPreferences", MODE_PRIVATE)
            val favoritesJson = prefs.getString("flutter.favorite_channels", null)
            
            if (favoritesJson != null) {
                val favorites = JSONArray(favoritesJson)
                for (i in 0 until minOf(favorites.length(), 50)) {
                    val channelId = favorites.getString(i)
                    
                    // Find channel in cached playlist
                    val cachedPlaylist = prefs.getString("flutter.cached_playlist", null)
                    if (cachedPlaylist != null) {
                        val channels = JSONArray(cachedPlaylist)
                        for (j in 0 until channels.length()) {
                            val channel = channels.getJSONObject(j)
                            if (channel.optString("id") == channelId) {
                                val name = channel.optString("name", "Unknown")
                                val group = channel.optString("groupTitle", "Favorites")
                                mediaItems.add(createPlayableItem(channelId, name, group))
                                break
                            }
                        }
                    }
                }
            }
            
            if (mediaItems.isEmpty()) {
                mediaItems.add(createPlayableItem(
                    "no_favorites",
                    "No favorites yet",
                    "Add favorites in the app"
                ))
            }
        } catch (e: Exception) {
            mediaItems.add(createPlayableItem(
                "error",
                "Error loading favorites",
                e.message ?: "Unknown error"
            ))
        }
    }
    
    private fun loadRecentChannels(mediaItems: MutableList<MediaBrowserCompat.MediaItem>) {
        try {
            val prefs = getSharedPreferences("FlutterSharedPreferences", MODE_PRIVATE)
            val recentJson = prefs.getString("flutter.watch_history", null)
            
            if (recentJson != null) {
                val recent = JSONArray(recentJson)
                val cachedPlaylist = prefs.getString("flutter.cached_playlist", null)
                
                if (cachedPlaylist != null) {
                    val channels = JSONArray(cachedPlaylist)
                    
                    for (i in 0 until minOf(recent.length(), 20)) {
                        val historyItem = recent.getJSONObject(i)
                        val channelId = historyItem.optString("channelId")
                        
                        for (j in 0 until channels.length()) {
                            val channel = channels.getJSONObject(j)
                            if (channel.optString("id") == channelId) {
                                val name = channel.optString("name", "Unknown")
                                val group = channel.optString("groupTitle", "Recent")
                                mediaItems.add(createPlayableItem(channelId, name, group))
                                break
                            }
                        }
                    }
                }
            }
            
            if (mediaItems.isEmpty()) {
                mediaItems.add(createPlayableItem(
                    "no_recent",
                    "No recent channels",
                    "Start watching to see history"
                ))
            }
        } catch (e: Exception) {
            mediaItems.add(createPlayableItem(
                "error",
                "Error loading recent",
                e.message ?: "Unknown error"
            ))
        }
    }
    
    private fun playNextChannel(currentId: String) {
        try {
            val prefs = getSharedPreferences("FlutterSharedPreferences", MODE_PRIVATE)
            val cachedPlaylist = prefs.getString("flutter.cached_playlist", null)
            
            if (cachedPlaylist != null) {
                val channels = JSONArray(cachedPlaylist)
                var currentIndex = -1
                
                for (i in 0 until channels.length()) {
                    if (channels.getJSONObject(i).optString("id") == currentId) {
                        currentIndex = i
                        break
                    }
                }
                
                if (currentIndex >= 0 && currentIndex < channels.length() - 1) {
                    val nextChannel = channels.getJSONObject(currentIndex + 1)
                    val url = nextChannel.optString("url", "")
                    val name = nextChannel.optString("name", "")
                    val id = nextChannel.optString("id", "")
                    
                    val intent = Intent(this, MainActivity::class.java)
                    intent.apply {
                        addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                        putExtra("autoplay", true)
                        putExtra("channel_url", url)
                        putExtra("channel_name", name)
                        putExtra("channel_id", id)
                    }
                    startActivity(intent)
                }
            }
        } catch (e: Exception) {
            // Ignore
        }
    }
    
    private fun playPreviousChannel(currentId: String) {
        try {
            val prefs = getSharedPreferences("FlutterSharedPreferences", MODE_PRIVATE)
            val cachedPlaylist = prefs.getString("flutter.cached_playlist", null)
            
            if (cachedPlaylist != null) {
                val channels = JSONArray(cachedPlaylist)
                var currentIndex = -1
                
                for (i in 0 until channels.length()) {
                    if (channels.getJSONObject(i).optString("id") == currentId) {
                        currentIndex = i
                        break
                    }
                }
                
                if (currentIndex > 0) {
                    val prevChannel = channels.getJSONObject(currentIndex - 1)
                    val url = prevChannel.optString("url", "")
                    val name = prevChannel.optString("name", "")
                    val id = prevChannel.optString("id", "")
                    
                    val intent = Intent(this, MainActivity::class.java)
                    intent.apply {
                        addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                        putExtra("autoplay", true)
                        putExtra("channel_url", url)
                        putExtra("channel_name", name)
                        putExtra("channel_id", id)
                    }
                    startActivity(intent)
                }
            }
        } catch (e: Exception) {
            // Ignore
        }
    }

    override fun onDestroy() {
        mediaSession.release()
        super.onDestroy()
    }
}
