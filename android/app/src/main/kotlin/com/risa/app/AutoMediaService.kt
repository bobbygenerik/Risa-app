package com.risa.app

import android.content.Intent
import android.os.Bundle
import android.support.v4.media.MediaBrowserCompat
import android.support.v4.media.MediaDescriptionCompat
import android.support.v4.media.session.MediaSessionCompat
import android.support.v4.media.session.PlaybackStateCompat
import androidx.media.MediaBrowserServiceCompat
import android.net.Uri
import android.database.Cursor
import android.database.sqlite.SQLiteDatabase
import org.json.JSONArray
import org.json.JSONObject
import java.io.File

class AutoMediaService : MediaBrowserServiceCompat() {
    private lateinit var mediaSession: MediaSessionCompat
    
    companion object {
        private const val ROOT_ID = "root"
        private const val LIVE_TV_ID = "live_tv"
        private const val MOVIES_ID = "movies"
        private const val SERIES_ID = "series"
        private const val FAVORITES_ID = "favorites"
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
                    // No-op: Favorites and next/prev removed
                }
                override fun onSkipToPrevious() {
                    // No-op: Favorites and next/prev removed
                }
                
                override fun onPlayFromMediaId(mediaId: String?, extras: Bundle?) {
                    if (mediaId == null) return
                    
                    var url = ""
                    var name = ""
                    var found = false

                    try {
                        val cacheFile = File(applicationContext.filesDir, "parsed_playlist_cache.json")
                        if (cacheFile.exists()) {
                            val jsonString = cacheFile.readText()
                            val jsonObject = JSONObject(jsonString)
                            val channels = jsonObject.getJSONArray("channels")
                            for (i in 0 until channels.length()) {
                                val channel = channels.getJSONObject(i)
                                if (channel.optString("id") == mediaId) {
                                    url = channel.optString("url", "")
                                    name = channel.optString("name", "")
                                    found = true
                                    break
                                }
                            }
                        }
                    } catch (e: Exception) {
                        android.util.Log.e("AutoMediaService", "Error playing from mediaId (cache): ${e.message}")
                    }

                    // Fallback to DB if not found in cache
                    if (!found) {
                        var db: SQLiteDatabase? = null
                        var cursor: Cursor? = null
                        try {
                            val dbFile = getDbFile()
                            if (dbFile != null && dbFile.exists()) {
                                db = SQLiteDatabase.openDatabase(dbFile.path, null, SQLiteDatabase.OPEN_READONLY)
                                cursor = db.rawQuery("SELECT url, name FROM channels WHERE id = ?", arrayOf(mediaId))
                                if (cursor.moveToFirst()) {
                                    url = cursor.getString(0)
                                    name = cursor.getString(1)
                                    found = true
                                }
                            }
                        } catch (e: Exception) {
                            android.util.Log.e("AutoMediaService", "Error playing from mediaId (DB): ${e.message}")
                        } finally {
                            cursor?.close()
                            db?.close()
                        }
                    }

                    if (found) {
                        val prefs = getSharedPreferences("FlutterSharedPreferences", MODE_PRIVATE)
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
                mediaItems.add(createBrowsableItem(LIVE_TV_ID, "Live TV", "Watch live channels"))
                mediaItems.add(createBrowsableItem(MOVIES_ID, "Movies", "Browse movies"))
                mediaItems.add(createBrowsableItem(SERIES_ID, "Series", "Browse TV series"))
                mediaItems.add(createBrowsableItem(FAVORITES_ID, "Favorites", "Your favorite channels"))
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
            FAVORITES_ID -> {
                loadFavorites(mediaItems)
            }
            else -> {
                // Unknown parentId: return an empty list.
                result.sendResult(null)
                return
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
            val cacheFile = File(applicationContext.filesDir, "parsed_playlist_cache.json")
            android.util.Log.d("AutoMediaService", "Attempting to load playlist from: ${cacheFile.path}")

            if (!cacheFile.exists()) {
                android.util.Log.w("AutoMediaService", "Playlist cache file does not exist!")
                mediaItems.add(createPlayableItem(
                    "no_playlist",
                    "No playlist loaded",
                    "Open the app and add a playlist in Settings"
                ))
                return
            }

            val jsonString = cacheFile.readText()
            if (jsonString.isEmpty()) {
                android.util.Log.w("AutoMediaService", "Playlist cache file is empty!")
                mediaItems.add(createPlayableItem(
                    "no_playlist",
                    "No playlist loaded",
                    "Playlist file is empty. Please reload in app."
                ))
                return
            }
            
            val jsonObject = JSONObject(jsonString)
            val channels = jsonObject.getJSONArray("channels")
            var count = 0
            for (i in 0 until channels.length()) {
                if (count >= 20) break // Limit to 20 items for performance
                val channel = channels.getJSONObject(i)
                val groupTitle = channel.optString("groupTitle", "")
                val matchesCategory = when (category) {
                    "Live" -> !groupTitle.contains("Movies", ignoreCase = true) && !groupTitle.contains("Series", ignoreCase = true)
                    "Movies" -> groupTitle.contains("Movies", ignoreCase = true) || groupTitle.contains("VOD", ignoreCase = true)
                    "Series" -> groupTitle.contains("Series", ignoreCase = true) || groupTitle.contains("TV Shows", ignoreCase = true)
                    else -> false
                }
                if (matchesCategory) {
                    val id = channel.optString("id", "")
                    val name = channel.optString("name", "Unknown")
                    val group = channel.optString("groupTitle", "")
                    mediaItems.add(createPlayableItem(id, name, group))
                    count++
                }
            }
            if (mediaItems.isEmpty()) {
                android.util.Log.w("AutoMediaService", "Playlist loaded but no channels matched category: $category")
                mediaItems.add(createPlayableItem(
                    "no_channels",
                    "No channels found",
                    "No channels match this category"
                ))
            }
        } catch (e: Exception) {
            android.util.Log.e("AutoMediaService", "Error loading channels: ${e.message}")
            mediaItems.add(createPlayableItem(
                "error",
                "Error loading channels",
                e.message ?: "Unknown error"
            ))
        }
    }
    
    private fun getDbFile(): File? {
        // Try app_flutter directory first (standard path_provider location)
        val appFlutterDir = File(applicationContext.filesDir.parentFile, "app_flutter")
        val dbFile = File(appFlutterDir, "iptv_local.db")
        if (dbFile.exists()) return dbFile

        // Fallback check in filesDir (just in case)
        val fallback = File(applicationContext.filesDir, "iptv_local.db")
        if (fallback.exists()) return fallback

        return null
    }

    private fun loadFavorites(mediaItems: MutableList<MediaBrowserCompat.MediaItem>) {
        var db: SQLiteDatabase? = null
        var cursor: Cursor? = null
        try {
            val dbFile = getDbFile()

            if (dbFile == null) {
                android.util.Log.d("AutoMediaService", "Favorites DB not found")
                mediaItems.add(createPlayableItem(
                    "no_favorites",
                    "No favorites found",
                    "Add channels to favorites in the app"
                ))
                return
            }

            db = SQLiteDatabase.openDatabase(
                dbFile.path,
                null,
                SQLiteDatabase.OPEN_READONLY
            )

            // Select favorites
            cursor = db.rawQuery(
                "SELECT id, name, groupTitle FROM channels WHERE isFavorite = 1 ORDER BY name ASC",
                null
            )

            if (cursor.moveToFirst()) {
                val idIdx = cursor.getColumnIndex("id")
                val nameIdx = cursor.getColumnIndex("name")
                val groupIdx = cursor.getColumnIndex("groupTitle")

                do {
                    val id = cursor.getString(idIdx)
                    val name = cursor.getString(nameIdx)
                    val group = if (groupIdx >= 0) cursor.getString(groupIdx) ?: "Favorites" else "Favorites"
                    mediaItems.add(createPlayableItem(id, name, group))
                } while (cursor.moveToNext())
            } else {
                 mediaItems.add(createPlayableItem(
                    "no_favorites",
                    "No favorites yet",
                    "Mark channels as favorite to see them here"
                ))
            }

        } catch (e: Exception) {
            android.util.Log.e("AutoMediaService", "Error loading favorites: ${e.message}")
             mediaItems.add(createPlayableItem(
                "error",
                "Error loading favorites",
                e.message ?: "Unknown error"
            ))
        } finally {
            cursor?.close()
            db?.close()
        }
    }

    override fun onDestroy() {
        mediaSession.release()
        super.onDestroy()
    }
}
