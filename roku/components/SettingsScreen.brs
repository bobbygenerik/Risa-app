' SettingsScreen.brs - Settings screen logic

sub Init()
    m.tabList = m.top.findNode("tabList")
    m.generalSettings = m.top.findNode("generalSettings")
    m.playbackSettings = m.top.findNode("playbackSettings")
    m.playlistSettings = m.top.findNode("playlistSettings")
    m.accountSettings = m.top.findNode("accountSettings")
    m.aboutSettings = m.top.findNode("aboutSettings")
    m.keyboard = m.top.findNode("keyboard")
    
    ' General settings controls
    m.themeSelector = m.top.findNode("themeSelector")
    m.autoPlaySelector = m.top.findNode("autoPlaySelector")
    m.resumeSelector = m.top.findNode("resumeSelector")
    
    ' Playback settings controls
    m.bufferSelector = m.top.findNode("bufferSelector")
    m.audioTrackSelector = m.top.findNode("audioTrackSelector")
    m.subtitleSelector = m.top.findNode("subtitleSelector")
    
    ' Playlist settings controls
    m.currentPlaylistLabel = m.top.findNode("currentPlaylistLabel")
    m.playlistActions = m.top.findNode("playlistActions")
    
    ' Account settings controls
    m.serverLabel = m.top.findNode("serverLabel")
    m.usernameLabel = m.top.findNode("usernameLabel")
    m.statusLabel = m.top.findNode("statusLabel")
    m.accountActions = m.top.findNode("accountActions")
    
    ' About actions
    m.aboutActions = m.top.findNode("aboutActions")
    
    m.tabList.observeField("itemSelected", "onTabSelected")
    m.themeSelector.observeField("itemSelected", "onThemeSelected")
    m.autoPlaySelector.observeField("itemSelected", "onAutoPlaySelected")
    m.resumeSelector.observeField("itemSelected", "onResumeSelected")
    m.bufferSelector.observeField("itemSelected", "onBufferSelected")
    m.audioTrackSelector.observeField("itemSelected", "onAudioTrackSelected")
    m.subtitleSelector.observeField("itemSelected", "onSubtitleSelected")
    m.playlistActions.observeField("itemSelected", "onPlaylistActionSelected")
    m.accountActions.observeField("itemSelected", "onAccountActionSelected")
    m.aboutActions.observeField("itemSelected", "onAboutActionSelected")
    m.keyboard.observeField("text", "onKeyboardText")
    
    m.currentTab = 0
    m.currentView = "tabs"
    m.keyboardTarget = ""
    m.settingsPanels = [m.generalSettings, m.playbackSettings, m.playlistSettings, m.accountSettings, m.aboutSettings]
    
    SetupTabs()
end sub

sub onVisibleChange()
    if m.top.visible
        LoadSettings()
        m.tabList.setFocus(true)
    end if
end sub

sub SetupTabs()
    content = CreateObject("roSGNode", "ContentNode")
    tabs = ["General", "Playback", "Playlist", "Account", "About"]
    for each tabName in tabs
        item = content.createChild("ContentNode")
        item.title = tabName
    end for
    m.tabList.content = content
    
    ' Setup General settings options
    SetupGeneralSettings()
    SetupPlaybackSettings()
    SetupPlaylistSettings()
    SetupAccountSettings()
    SetupAboutSettings()
end sub

sub SetupGeneralSettings()
    ' Theme options
    themeContent = CreateObject("roSGNode", "ContentNode")
    themes = ["Dark (Default)", "Light", "OLED Black"]
    for each theme in themes
        item = themeContent.createChild("ContentNode")
        item.title = theme
    end for
    m.themeSelector.content = themeContent
    
    ' Auto-play options
    autoPlayContent = CreateObject("roSGNode", "ContentNode")
    options = ["Enabled", "Disabled"]
    for each opt in options
        item = autoPlayContent.createChild("ContentNode")
        item.title = opt
    end for
    m.autoPlaySelector.content = autoPlayContent
    
    ' Resume on startup options
    resumeContent = CreateObject("roSGNode", "ContentNode")
    for each opt in options
        item = resumeContent.createChild("ContentNode")
        item.title = opt
    end for
    m.resumeSelector.content = resumeContent
end sub

sub SetupPlaybackSettings()
    ' Buffer size options
    bufferContent = CreateObject("roSGNode", "ContentNode")
    buffers = ["Auto", "Low (5s)", "Medium (15s)", "High (30s)"]
    for each buf in buffers
        item = bufferContent.createChild("ContentNode")
        item.title = buf
    end for
    m.bufferSelector.content = bufferContent
    
    ' Audio track options
    audioContent = CreateObject("roSGNode", "ContentNode")
    audioOpts = ["Auto", "English", "Original"]
    for each opt in audioOpts
        item = audioContent.createChild("ContentNode")
        item.title = opt
    end for
    m.audioTrackSelector.content = audioContent
    
    ' Subtitle options
    subContent = CreateObject("roSGNode", "ContentNode")
    subOpts = ["Off", "Auto", "English"]
    for each opt in subOpts
        item = subContent.createChild("ContentNode")
        item.title = opt
    end for
    m.subtitleSelector.content = subContent
end sub

sub SetupPlaylistSettings()
    actionsContent = CreateObject("roSGNode", "ContentNode")
    actions = ["Add M3U Playlist", "Add Xtream Codes", "Refresh Playlist", "Clear Cache"]
    for each action in actions
        item = actionsContent.createChild("ContentNode")
        item.title = action
    end for
    m.playlistActions.content = actionsContent
end sub

sub SetupAccountSettings()
    actionsContent = CreateObject("roSGNode", "ContentNode")
    actions = ["Edit Server URL", "Edit Username", "Test Connection"]
    for each action in actions
        item = actionsContent.createChild("ContentNode")
        item.title = action
    end for
    m.accountActions.content = actionsContent
end sub

sub SetupAboutSettings()
    actionsContent = CreateObject("roSGNode", "ContentNode")
    actions = ["Check for Updates", "Clear All Data", "Report Issue"]
    for each action in actions
        item = actionsContent.createChild("ContentNode")
        item.title = action
    end for
    m.aboutActions.content = actionsContent
end sub

sub LoadSettings()
    registry = CreateObject("roRegistrySection", "Settings")
    
    ' Load current playlist
    m3uUrl = registry.Read("m3u_url")
    if m3uUrl <> "" and m3uUrl <> invalid
        m.currentPlaylistLabel.text = m3uUrl
    else
        m.currentPlaylistLabel.text = "None configured"
    end if
    
    ' Load Xtream settings
    server = registry.Read("xtream_server")
    username = registry.Read("xtream_username")
    
    if server <> "" and server <> invalid
        m.serverLabel.text = server
    else
        m.serverLabel.text = "Not configured"
    end if
    
    if username <> "" and username <> invalid
        m.usernameLabel.text = username
    else
        m.usernameLabel.text = ""
    end if
end sub

sub onTabSelected(event as object)
    index = event.getData()
    if index < 0 or index >= m.settingsPanels.Count() then return
    
    m.currentTab = index
    
    ' Hide all panels
    for each panel in m.settingsPanels
        panel.visible = false
    end for
    
    ' Show selected panel
    m.settingsPanels[index].visible = true
end sub

sub onThemeSelected(event as object)
    index = event.getData()
    themes = ["dark", "light", "oled"]
    if index >= 0 and index < themes.Count()
        registry = CreateObject("roRegistrySection", "Settings")
        registry.Write("theme", themes[index])
        registry.Flush()
        m.top.settingsChanged = true
    end if
end sub

sub onAutoPlaySelected(event as object)
    index = event.getData()
    registry = CreateObject("roRegistrySection", "Settings")
    registry.Write("autoplay_next", iif(index = 0, "true", "false"))
    registry.Flush()
end sub

sub onResumeSelected(event as object)
    index = event.getData()
    registry = CreateObject("roRegistrySection", "Settings")
    registry.Write("resume_on_startup", iif(index = 0, "true", "false"))
    registry.Flush()
end sub

sub onBufferSelected(event as object)
    index = event.getData()
    buffers = ["auto", "5", "15", "30"]
    if index >= 0 and index < buffers.Count()
        registry = CreateObject("roRegistrySection", "Settings")
        registry.Write("buffer_size", buffers[index])
        registry.Flush()
    end if
end sub

sub onAudioTrackSelected(event as object)
    index = event.getData()
    tracks = ["auto", "en", "original"]
    if index >= 0 and index < tracks.Count()
        registry = CreateObject("roRegistrySection", "Settings")
        registry.Write("default_audio", tracks[index])
        registry.Flush()
    end if
end sub

sub onSubtitleSelected(event as object)
    index = event.getData()
    subs = ["off", "auto", "en"]
    if index >= 0 and index < subs.Count()
        registry = CreateObject("roRegistrySection", "Settings")
        registry.Write("default_subtitles", subs[index])
        registry.Flush()
    end if
end sub

sub onPlaylistActionSelected(event as object)
    index = event.getData()
    if index = 0
        ' Add M3U Playlist - show keyboard
        ShowKeyboard("m3u_url", "Enter M3U Playlist URL")
    else if index = 1
        ' Add Xtream Codes - show keyboard for server
        ShowKeyboard("xtream_server", "Enter Xtream Codes Server URL")
    else if index = 2
        ' Refresh Playlist
        m.top.settingsChanged = true
    else if index = 3
        ' Clear Cache
        ClearCache()
    end if
end sub

sub onAccountActionSelected(event as object)
    index = event.getData()
    if index = 0
        ShowKeyboard("xtream_server", "Enter Server URL")
    else if index = 1
        ShowKeyboard("xtream_username", "Enter Username")
    else if index = 2
        TestConnection()
    end if
end sub

sub onAboutActionSelected(event as object)
    index = event.getData()
    if index = 0
        ' Check for updates (no-op on Roku, handled by channel store)
    else if index = 1
        ' Clear all data
        ClearAllData()
    else if index = 2
        ' Report issue (no-op, would need web link)
    end if
end sub

sub ShowKeyboard(target as string, hint as string)
    m.keyboardTarget = target
    m.keyboard.visible = true
    m.keyboard.setFocus(true)
    m.currentView = "keyboard"
end sub

sub HideKeyboard()
    m.keyboard.visible = false
    m.tabList.setFocus(true)
    m.currentView = "tabs"
end sub

sub onKeyboardText(event as object)
    text = m.keyboard.text
    if text <> "" and m.keyboardTarget <> ""
        registry = CreateObject("roRegistrySection", "Settings")
        registry.Write(m.keyboardTarget, text)
        registry.Flush()
        
        ' Update labels
        if m.keyboardTarget = "m3u_url"
            m.currentPlaylistLabel.text = text
        else if m.keyboardTarget = "xtream_server"
            m.serverLabel.text = text
        else if m.keyboardTarget = "xtream_username"
            m.usernameLabel.text = text
        end if
        
        m.top.settingsChanged = true
    end if
    HideKeyboard()
end sub

sub ClearCache()
    ' Clear cached channel/movie/series data
    registry = CreateObject("roRegistrySection", "Cache")
    keys = registry.GetKeyList()
    for each key in keys
        registry.Delete(key)
    end for
    registry.Flush()
end sub

sub ClearAllData()
    ' Clear all registry sections
    sections = ["Settings", "Favorites", "History", "Cache", "Playlists"]
    for each section in sections
        registry = CreateObject("roRegistrySection", section)
        keys = registry.GetKeyList()
        for each key in keys
            registry.Delete(key)
        end for
        registry.Flush()
    end for
    m.top.settingsChanged = true
end sub

sub TestConnection()
    registry = CreateObject("roRegistrySection", "Settings")
    server = registry.Read("xtream_server")
    username = registry.Read("xtream_username")
    password = registry.Read("xtream_password")
    
    if server = "" or username = "" or password = ""
        m.statusLabel.text = "Missing credentials"
        m.statusLabel.color = "0xFF6666FF"
        return
    end if
    
    url = server + "/player_api.php?username=" + username + "&password=" + password
    
    http = CreateObject("roUrlTransfer")
    http.setUrl(url)
    http.setCertificatesFile("common:/certs/ca-bundle.crt")
    http.setConnectionTimeout(10)
    
    response = http.getToString()
    if response <> "" and response <> invalid
        json = ParseJson(response)
        if json <> invalid and json.user_info <> invalid
            m.statusLabel.text = "Connected - " + json.user_info.status
            m.statusLabel.color = "0x00FF00FF"
        else
            m.statusLabel.text = "Invalid response"
            m.statusLabel.color = "0xFF6666FF"
        end if
    else
        m.statusLabel.text = "Connection failed"
        m.statusLabel.color = "0xFF6666FF"
    end if
end sub

function iif(condition as boolean, trueVal as string, falseVal as string) as string
    if condition then return trueVal
    return falseVal
end function

function onKeyEvent(key as string, press as boolean) as boolean
    if not press then return false
    
    if m.currentView = "keyboard"
        if key = "back"
            HideKeyboard()
            return true
        end if
    end if
    
    return false
end function
