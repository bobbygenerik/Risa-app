sub Init()
    m.tabList = m.top.findNode("tabList")
    m.generalSettings = m.top.findNode("generalSettings")
    m.playbackSettings = m.top.findNode("playbackSettings")
    m.playlistSettings = m.top.findNode("playlistSettings")
    m.aiSettings = m.top.findNode("aiSettings")
    m.recordingsSettings = m.top.findNode("recordingsSettings")
    m.autoPlaySelector = m.top.findNode("autoPlaySelector")
    m.resumeSelector = m.top.findNode("resumeSelector")
    m.bufferSelector = m.top.findNode("bufferSelector")
    m.playlistActions = m.top.findNode("playlistActions")
    m.currentPlaylistLabel = m.top.findNode("currentPlaylistLabel")
    m.playlistStatusText = m.top.findNode("playlistStatusText")
    m.playlistCountText = m.top.findNode("playlistCountText")
    m.urlKeyboard = m.top.findNode("urlKeyboard")
    m.currentTab = 0
    m.pendingUrl = ""

    ' Populate category tabs (matching Flutter: General, Playback, Playlists, AI Features, Recordings)
    tabContent = CreateObject("roSGNode", "ContentNode")
    tabs = ["General", "Playback", "Playlists", "AI Features", "Recordings"]
    for each t in tabs
        n = tabContent.createChild("ContentNode")
        n.title = t
    end for
    m.tabList.content = tabContent

    ' Auto-play options
    apContent = CreateObject("roSGNode", "ContentNode")
    for each opt in ["Enabled", "Disabled"]
        n = apContent.createChild("ContentNode")
        n.title = opt
    end for
    m.autoPlaySelector.content = apContent

    ' Resume options
    rsContent = CreateObject("roSGNode", "ContentNode")
    for each opt in ["Enabled", "Disabled"]
        n = rsContent.createChild("ContentNode")
        n.title = opt
    end for
    m.resumeSelector.content = rsContent

    ' Buffer options
    bufContent = CreateObject("roSGNode", "ContentNode")
    for each opt in ["Small (2MB)", "Medium (8MB)", "Large (16MB)", "Auto"]
        n = bufContent.createChild("ContentNode")
        n.title = opt
    end for
    m.bufferSelector.content = bufContent

    ' Playlist actions
    plContent = CreateObject("roSGNode", "ContentNode")
    for each opt in ["Enter M3U URL", "Enter Xtream Codes", "Clear Playlist", "Reload Playlist"]
        n = plContent.createChild("ContentNode")
        n.title = opt
    end for
    m.playlistActions.content = plContent

    m.tabList.observeField("itemSelected", "onTabSelected")
    m.playlistActions.observeField("itemSelected", "onPlaylistAction")

    LoadCurrentSettings()
end sub

sub onVisibleChange()
    if m.top.visible then m.tabList.setFocus(true)
end sub

sub onTabSelected()
    idx = m.tabList.itemSelected
    m.currentTab = idx
    m.generalSettings.visible = (idx = 0)
    m.playbackSettings.visible = (idx = 1)
    m.playlistSettings.visible = (idx = 2)
    m.aiSettings.visible = (idx = 3)
    m.recordingsSettings.visible = (idx = 4)
    if idx = 2
        m.playlistActions.setFocus(true)
    else if idx = 1
        m.bufferSelector.setFocus(true)
    else if idx = 0
        m.autoPlaySelector.setFocus(true)
    end if
end sub

sub onPlaylistAction()
    action = m.playlistActions.itemSelected
    if action = 0 ' Enter M3U URL
        m.urlKeyboard.visible = true
        m.urlKeyboard.setFocus(true)
    else if action = 2 ' Clear playlist
        registry = CreateObject("roRegistrySection", "Settings")
        registry.Delete("m3u_url")
        registry.Flush()
        m.currentPlaylistLabel.text = "None configured"
        UpdatePlaylistStatus(false, 0)
    else if action = 3 ' Reload
        m.top.settingsChanged = true
    end if
end sub

sub LoadCurrentSettings()
    registry = CreateObject("roRegistrySection", "Settings")
    m3uUrl = registry.Read("m3u_url")
    if m3uUrl <> invalid and m3uUrl <> ""
        m.currentPlaylistLabel.text = m3uUrl
        UpdatePlaylistStatus(true, 0)
    else
        m.currentPlaylistLabel.text = "None configured"
        UpdatePlaylistStatus(false, 0)
    end if
end sub

sub UpdatePlaylistStatus(hasPlaylist as boolean, channelCount as integer)
    statusBg = m.top.findNode("statusBg")
    icon = m.top.findNode("playlistStatusIcon")
    if hasPlaylist
        if statusBg <> invalid then statusBg.color = "0x1B5E2033"
        if icon <> invalid then icon.color = "0x4CAF50FF"
        if icon <> invalid then icon.text = "+"
        m.playlistStatusText.text = "Playlist loaded"
        m.playlistStatusText.color = "0x4CAF50FF"
        m.playlistCountText.text = "Channels will load on return to Live TV"
    else
        if statusBg <> invalid then statusBg.color = "0x7F000019"
        if icon <> invalid then icon.color = "0xE53935FF"
        if icon <> invalid then icon.text = "!"
        m.playlistStatusText.text = "No playlist loaded"
        m.playlistStatusText.color = "0xE53935FF"
        m.playlistCountText.text = "Go to Playlists tab to add your M3U or Xtream URL"
    end if
end sub

function onKeyEvent(key as string, press as boolean) as boolean
    if not press then return false
    if key = "back"
        m.top.settingsChanged = true
        return true
    else if key = "left"
        m.tabList.setFocus(true)
        return true
    end if
    return false
end function
