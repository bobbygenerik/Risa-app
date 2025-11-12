' Main.brs - IPTV Player Main Application Entry Point
' Uses Roku Scene Graph for modern UI with proper channel grid and video playback

function Main() as void
    ' Initialize screen and start application
    screen = CreateObject("roSGScreen")
    m.port = CreateObject("roMessagePort")
    screen.setMessagePort(m.port)
    
    ' Load Scene Graph XML file
    screen.createScene("MainScene")
    screen.show()
    
    ' Initialize services and load playlists
    m.services = InitializeServices()
    m.channels = []
    m.currentIndex = 0
    m.isPlaying = false
    
    ' Main event loop
    while true
        msg = wait(0, m.port)
        
        if type(msg) = "roSGScreenEvent"
            if msg.isScreenClosed()
                return
            end if
        end if
    end while
end function

function InitializeServices() as object
    ' Initialize all application services
    
    services = {
        m3u: CreateM3UParser()
        epg: CreateEPGService()
        drive: CreateGoogleDriveService()
    }
    
    return services
end function

function CreateM3UParser() as object
    ' Create M3U parser service instance
    return {
        parse: function(url as string) as object
            return ParseM3U(url)
        end function
    }
end function

function CreateEPGService() as object
    ' Create EPG service instance
    return {
        fetch: function(url as string) as object
            return FetchEPG(url)
        end function
    }
end function

function CreateGoogleDriveService() as object
    ' Create Google Drive service instance
    return {
        init: function() as object
            return InitializeOAuth()
        end function
        auth: function(oauth as object) as string
            return GetAuthorizationCode(oauth)
        end function
    }
end function

function LoadPlaylist(url as string) as object
    ' Load M3U playlist from URL
    ' Returns array of channel objects
    
    print "Loading playlist: "; url
    
    channels = ParseM3U(url)
    
    if channels = invalid
        print "Failed to load playlist"
        return []
    end if
    
    print "Loaded "; channels.count(); " channels"
    
    return channels
end function

function LoadPlaylistFromURL(url as string) as object
    ' Load and parse M3U playlist from URL
    channels = ParseM3U(url)
    if channels = invalid
        return []
    end if
    return channels
end function

function PlayChannel(channel as object) as void
    ' Play selected channel video stream
    print "Playing: "; channel.title
    
    player = CreateObject("roVideoPlayer")
    if player = invalid
        print "ERROR: Could not create video player"
        return
    end if
    
    ' Prepare video content
    content = CreateObject("roAssociativeArray")
    content.url = channel.url
    content.title = channel.title
    content.streamFormat = "hls"
    if channel.logo <> "" and channel.logo <> invalid
        content.hdPosterUrl = channel.logo
    end if
    
    port = CreateObject("roMessagePort")
    player.setMessagePort(port)
    player.setContent(content)
    player.play()
    
    ' Handle playback events
    while true
        msg = wait(0, port)
        if type(msg) = "roVideoPlayerEvent"
            if msg.isFullResult() or msg.isRequestFailed()
                return
            end if
        end if
    end while
end function

function MainLoop(services as object, channels as object) as void
    ' Main event loop - kept for compatibility
    print "Channels loaded: "; channels.count()
end function

function DrawSelection(index as integer) as void
    ' Mark current channel selection - kept for compatibility
    print "Selected: "; index
end function
