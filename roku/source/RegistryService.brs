' RegistryService.brs - Persistent Storage Service
' Handles all settings and data persistence (like SharedPreferences on Android)

' ================== SETTINGS KEYS ==================
' Playlist settings
' - playlist_type: "m3u" or "xtream"
' - m3u_url: M3U playlist URL
' - xtream_server: Xtream Codes server URL
' - xtream_username: Xtream Codes username
' - xtream_password: Xtream Codes password
' - epg_url: EPG/XMLTV URL
'
' Playback settings
' - auto_play_next: boolean
' - hardware_acceleration: boolean
' - remember_playback_position: boolean
' - video_quality: "Auto", "1080p", "720p", "480p"
' - preferred_audio_language: language code
'
' UI settings
' - show_channel_logos: boolean
' - show_program_images: boolean

function RegistryRead(section as string, key as string) as string
    registry = CreateObject("roRegistrySection", section)
    if registry.Exists(key)
        return registry.Read(key)
    end if
    return ""
end function

sub RegistryWrite(section as string, key as string, value as string)
    registry = CreateObject("roRegistrySection", section)
    registry.Write(key, value)
    registry.Flush()
end sub

sub RegistryDelete(section as string, key as string)
    registry = CreateObject("roRegistrySection", section)
    registry.Delete(key)
    registry.Flush()
end sub

function RegistryReadBool(section as string, key as string, defaultValue as boolean) as boolean
    value = RegistryRead(section, key)
    if value = "" then return defaultValue
    return (value = "true" or value = "1")
end function

sub RegistryWriteBool(section as string, key as string, value as boolean)
    if value
        RegistryWrite(section, key, "true")
    else
        RegistryWrite(section, key, "false")
    end if
end sub

function RegistryReadInt(section as string, key as string, defaultValue as integer) as integer
    value = RegistryRead(section, key)
    if value = "" then return defaultValue
    return val(value)
end function

sub RegistryWriteInt(section as string, key as string, value as integer)
    RegistryWrite(section, key, str(value))
end sub

' ================== CONFIG HELPERS ==================

function GetPlaylistType() as string
    return RegistryRead("Config", "playlist_type")
end function

function GetM3UUrl() as string
    return RegistryRead("Config", "m3u_url")
end function

function GetXtreamServer() as string
    return RegistryRead("Config", "xtream_server")
end function

function GetXtreamUsername() as string
    return RegistryRead("Config", "xtream_username")
end function

function GetXtreamPassword() as string
    return RegistryRead("Config", "xtream_password")
end function

function GetEPGUrl() as string
    return RegistryRead("Config", "epg_url")
end function

sub SaveM3UConfig(url as string)
    RegistryWrite("Config", "playlist_type", "m3u")
    RegistryWrite("Config", "m3u_url", url)
end sub

sub SaveXtreamConfig(server as string, username as string, password as string)
    RegistryWrite("Config", "playlist_type", "xtream")
    RegistryWrite("Config", "xtream_server", server)
    RegistryWrite("Config", "xtream_username", username)
    RegistryWrite("Config", "xtream_password", password)
end sub

sub SaveEPGUrl(url as string)
    RegistryWrite("Config", "epg_url", url)
end sub

' ================== PLAYBACK SETTINGS ==================

function GetAutoPlayNext() as boolean
    return RegistryReadBool("Playback", "auto_play_next", true)
end function

function GetRememberPosition() as boolean
    return RegistryReadBool("Playback", "remember_playback_position", true)
end function

function GetVideoQuality() as string
    quality = RegistryRead("Playback", "video_quality")
    if quality = "" then return "Auto"
    return quality
end function

function GetPreferredAudioLanguage() as string
    lang = RegistryRead("Playback", "preferred_audio_language")
    if lang = "" then return "Default"
    return lang
end function

' ================== UI SETTINGS ==================

function GetShowChannelLogos() as boolean
    return RegistryReadBool("UI", "show_channel_logos", true)
end function

function GetShowProgramImages() as boolean
    return RegistryReadBool("UI", "show_program_images", true)
end function

' ================== WATCH HISTORY ==================

sub SaveWatchPosition(contentId as string, position as integer, duration as integer)
    RegistryWrite("WatchHistory", contentId + "_pos", str(position))
    RegistryWrite("WatchHistory", contentId + "_dur", str(duration))
    RegistryWrite("WatchHistory", contentId + "_time", str(CreateObject("roDateTime").AsSeconds()))
end sub

function GetWatchPosition(contentId as string) as object
    pos = RegistryReadInt("WatchHistory", contentId + "_pos", 0)
    dur = RegistryReadInt("WatchHistory", contentId + "_dur", 0)
    return { position: pos, duration: dur }
end function

sub ClearWatchHistory()
    registry = CreateObject("roRegistrySection", "WatchHistory")
    keys = registry.GetKeyList()
    for each key in keys
        registry.Delete(key)
    end for
    registry.Flush()
end sub
