' MainScene.brs - Main app scene with tab navigation

sub Init()
    ' Navigation
    m.navBar = m.top.findNode("navBar")
    m.tabList = m.top.findNode("tabList")
    m.timeLabel = m.top.findNode("timeLabel")
    
    ' Loading/Error
    m.loadingOverlay = m.top.findNode("loadingOverlay")
    m.statusLabel = m.top.findNode("statusLabel")
    m.errorLabel = m.top.findNode("errorLabel")
    
    ' Live TV elements
    m.liveTVScreen = m.top.findNode("liveTVScreen")
    m.heroSection = m.top.findNode("heroSection")
    m.heroImage = m.top.findNode("heroImage")
    m.heroLogo = m.top.findNode("heroLogo")
    m.heroTitle = m.top.findNode("heroTitle")
    m.heroChannel = m.top.findNode("heroChannel")
    m.heroTime = m.top.findNode("heroTime")
    m.heroProgressBar = m.top.findNode("heroProgressBar")
    m.heroProgressBg = m.top.findNode("heroProgressBg")
    m.channelGrid = m.top.findNode("channelGrid")
    
    ' Screens
    m.moviesScreen = m.top.findNode("moviesScreen")
    m.seriesScreen = m.top.findNode("seriesScreen")
    m.settingsScreen = m.top.findNode("settingsScreen")
    
    ' Video player
    m.videoPlayer = m.top.findNode("videoPlayer")
    
    ' Overlays
    m.searchOverlay = m.top.findNode("searchOverlay")
    m.searchKeyboard = m.top.findNode("searchKeyboard")
    m.searchResults = m.top.findNode("searchResults")
    m.categoryMenu = m.top.findNode("categoryMenu")
    m.categoryList = m.top.findNode("categoryList")
    
    ' Setup tab navigation
    SetupNavTabs()
    
    ' Observers
    m.channelGrid.observeField("itemSelected", "onChannelSelected")
    m.channelGrid.observeField("itemFocused", "onChannelFocused")
    m.videoPlayer.observeField("state", "onVideoStateChange")
    m.categoryList.observeField("itemSelected", "onCategorySelected")
    m.moviesScreen.observeField("movieSelected", "onMovieSelected")
    m.seriesScreen.observeField("episodeSelected", "onEpisodeSelected")
    m.settingsScreen.observeField("settingsChanged", "onSettingsChanged")
    
    ' State
    m.isPlaying = false
    m.channels = []
    m.allChannels = []
    m.categories = []
    m.currentCategory = "All Channels"
    m.favorites = []
    m.currentHeroIndex = 0
    m.searchText = ""
    m.currentTab = 0 ' 0=Live TV, 1=Movies, 2=Series
    m.currentView = "main"
    
    ' Hero auto-scroll timer
    m.heroTimer = CreateObject("roSGNode", "Timer")
    m.heroTimer.duration = 7
    m.heroTimer.repeat = true
    m.heroTimer.observeField("fire", "onHeroTimerFire")
    
    ' Clock timer
    m.clockTimer = CreateObject("roSGNode", "Timer")
    m.clockTimer.duration = 60
    m.clockTimer.repeat = true
    m.clockTimer.observeField("fire", "updateClock")
    m.clockTimer.control = "start"
    updateClock()
    
    ' Load Xtream credentials from settings
    LoadXtreamCredentials()
    
    ' Load favorites
    LoadFavorites()
    
    ' Start loading Live TV
    LoadChannels()
    StartHeroAutoScroll()
end sub

sub SetupNavTabs()
    ' Create content for tab list
    tabContent = CreateObject("roSGNode", "ContentNode")
    
    tab1 = CreateObject("roSGNode", "ContentNode")
    tab1.title = "Live TV"
    tabContent.appendChild(tab1)
    
    tab2 = CreateObject("roSGNode", "ContentNode")
    tab2.title = "Movies"
    tabContent.appendChild(tab2)
    
    tab3 = CreateObject("roSGNode", "ContentNode")
    tab3.title = "Series"
    tabContent.appendChild(tab3)
    
    m.tabList.content = tabContent
    m.tabList.observeField("itemSelected", "onTabSelected")
end sub

sub updateClock()
    dt = CreateObject("roDateTime")
    dt.toLocalTime()
    hours = dt.getHours()
    mins = dt.getMinutes()
    
    ampm = "AM"
    if hours >= 12
        ampm = "PM"
        if hours > 12 then hours = hours - 12
    end if
    if hours = 0 then hours = 12
    
    minStr = mins.toStr()
    if mins < 10 then minStr = "0" + minStr
    
    m.timeLabel.text = hours.toStr() + ":" + minStr + " " + ampm
end sub

sub LoadXtreamCredentials()
    registry = CreateObject("roRegistrySection", "Settings")
    m.xtreamServer = registry.Read("xtream_server")
    m.xtreamUsername = registry.Read("xtream_username")
    m.xtreamPassword = registry.Read("xtream_password")
    
    ' Pass to child screens
    m.moviesScreen.xtreamServer = m.xtreamServer
    m.moviesScreen.xtreamUsername = m.xtreamUsername
    m.moviesScreen.xtreamPassword = m.xtreamPassword
    
    m.seriesScreen.xtreamServer = m.xtreamServer
    m.seriesScreen.xtreamUsername = m.xtreamUsername
    m.seriesScreen.xtreamPassword = m.xtreamPassword
end sub

sub LoadFavorites()
    registry = CreateObject("roRegistrySection", "Favorites")
    keys = registry.GetKeyList()
    m.favorites = []
    for each key in keys
        m.favorites.push(key)
    end for
end sub

sub SaveFavorite(channelUrl as string)
    registry = CreateObject("roRegistrySection", "Favorites")
    registry.Write(channelUrl, "1")
    registry.Flush()
    m.favorites.push(channelUrl)
end sub

sub RemoveFavorite(channelUrl as string)
    registry = CreateObject("roRegistrySection", "Favorites")
    registry.Delete(channelUrl)
    registry.Flush()
    for i = 0 to m.favorites.count() - 1
        if m.favorites[i] = channelUrl
            m.favorites.delete(i)
            exit for
        end if
    end for
end sub

function IsFavorite(channelUrl as string) as boolean
    for each fav in m.favorites
        if fav = channelUrl then return true
    end for
    return false
end function

sub StartHeroAutoScroll()
    m.heroTimer.control = "start"
end sub

sub onHeroTimerFire()
    if m.channels.count() > 0 and m.currentView = "main" and m.currentTab = 0
        m.currentHeroIndex = (m.currentHeroIndex + 1) mod m.channels.count()
        UpdateHeroBanner(m.currentHeroIndex)
    end if
end sub

sub LoadChannels()
    m.loadingOverlay.visible = true
    m.statusLabel.text = "Loading channels..."
    
    registry = CreateObject("roRegistrySection", "Settings")
    m3uUrl = registry.Read("m3u_url")
    if m3uUrl = "" or m3uUrl = invalid
        ' Use default free IPTV list
        m3uUrl = "https://iptv-org.github.io/iptv/index.m3u"
    end if
    
    m.loaderTask = CreateObject("roSGNode", "M3ULoaderTask")
    m.loaderTask.url = m3uUrl
    m.loaderTask.observeField("content", "onM3ULoaded")
    m.loaderTask.control = "RUN"
end sub

sub onM3ULoaded()
    content = m.loaderTask.content
    if content = "" or content = invalid
        ShowError("Failed to load playlist")
        return
    end if
    
    m.allChannels = ParseM3U(content)
    m.channels = m.allChannels
    
    if m.channels.count() > 0
        ExtractCategories()
        DisplayChannels()
    else
        ShowError("No channels found")
    end if
end sub

sub ShowError(message as string)
    m.loadingOverlay.visible = false
    m.errorLabel.text = message
    m.errorLabel.visible = true
end sub

function ParseM3U(content as string) as object
    channels = []
    lines = content.split(chr(10))
    
    i = 0
    while i < lines.count()
        line = lines[i].trim()
        
        if line <> "" and left(line, 7) = "#EXTINF"
            channel = ParseExtInf(line)
            
            i = i + 1
            while i < lines.count()
                urlLine = lines[i].trim()
                if urlLine <> "" and left(urlLine, 1) <> "#"
                    channel.url = urlLine
                    channels.push(channel)
                    exit while
                end if
                i = i + 1
            end while
        end if
        
        i = i + 1
    end while
    
    return channels
end function

function ParseExtInf(extinf as string) as object
    channel = CreateObject("roAssociativeArray")
    channel.tvgId = ""
    channel.logo = ""
    channel.group = "Uncategorized"
    channel.title = ""
    channel.url = ""
    
    tvgIdMatch = ExtractAttribute(extinf, "tvg-id")
    if tvgIdMatch <> "" then channel.tvgId = tvgIdMatch
    
    logoMatch = ExtractAttribute(extinf, "tvg-logo")
    if logoMatch <> "" then channel.logo = logoMatch
    
    groupMatch = ExtractAttribute(extinf, "group-title")
    if groupMatch <> "" then channel.group = groupMatch
    
    commaIndex = instr(1, extinf, ",")
    if commaIndex > 0
        channel.title = mid(extinf, commaIndex + 1).trim()
    else
        channel.title = extinf
    end if
    
    return channel
end function

function ExtractAttribute(line as string, attributeName as string) as string
    searchStr = attributeName + "=" + chr(34)
    startIndex = instr(1, line, searchStr)
    
    if startIndex = 0 then return ""
    
    startIndex = startIndex + len(searchStr) - 1
    endIndex = instr(startIndex, line, chr(34))
    
    if endIndex > 0
        return mid(line, startIndex, endIndex - startIndex)
    end if
    
    return ""
end function

sub ExtractCategories()
    categoryMap = CreateObject("roAssociativeArray")
    for each channel in m.allChannels
        if channel.group <> "" and channel.group <> invalid
            categoryMap[channel.group] = true
        end if
    end for
    
    m.categories = ["All Channels", "Favorites"]
    for each cat in categoryMap
        m.categories.push(cat)
    end for
end sub

sub DisplayChannels()
    m.loadingOverlay.visible = false
    m.errorLabel.visible = false
    
    if m.channels.count() > 0
        UpdateHeroBanner(0)
        m.heroSection.visible = true
    end if
    
    content = CreateObject("roSGNode", "ContentNode")
    
    categoryGroups = CreateObject("roAssociativeArray")
    for each channel in m.channels
        cat = channel.group
        if cat = "" or cat = invalid then cat = "Uncategorized"
        if categoryGroups[cat] = invalid then categoryGroups[cat] = []
        categoryGroups[cat].push(channel)
    end for
    
    for each cat in categoryGroups
        row = content.createChild("ContentNode")
        row.title = cat
        
        channels = categoryGroups[cat]
        maxPerRow = 20
        if channels.count() < maxPerRow then maxPerRow = channels.count()
        
        for i = 0 to maxPerRow - 1
            channel = channels[i]
            item = row.createChild("ContentNode")
            item.title = channel.title
            item.url = channel.url
            item.hdPosterUrl = channel.logo
        end for
    end for
    
    m.channelGrid.content = content
    m.channelGrid.visible = true
    m.channelGrid.setFocus(true)
    m.currentView = "main"
end sub

sub UpdateHeroBanner(index as integer)
    if index < 0 or index >= m.channels.count() then return
    
    channel = m.channels[index]
    m.heroTitle.text = channel.title
    m.heroChannel.text = channel.group
    m.heroTime.text = "LIVE"
    
    if channel.logo <> "" and channel.logo <> invalid
        m.heroImage.uri = channel.logo
        m.heroLogo.uri = channel.logo
    end if
    
    progress = (index * 100) / m.channels.count()
    m.heroProgressBar.width = 800 * (progress / 100.0)
    
    m.currentHeroIndex = index
end sub

sub onChannelFocused(event as object)
    focusedIndex = event.getData()
    if type(focusedIndex) = "roArray" and focusedIndex.Count() >= 2
        rowIndex = focusedIndex[0]
        itemIndex = focusedIndex[1]
        
        content = m.channelGrid.content
        if content <> invalid and rowIndex >= 0 and rowIndex < content.getChildCount()
            row = content.getChild(rowIndex)
            if row <> invalid and itemIndex >= 0 and itemIndex < row.getChildCount()
                item = row.getChild(itemIndex)
                if item <> invalid
                    for i = 0 to m.channels.count() - 1
                        if m.channels[i].url = item.url
                            UpdateHeroBanner(i)
                            exit for
                        end if
                    end for
                end if
            end if
        end if
    end if
end sub

sub onChannelSelected(event as object)
    selection = event.getData()
    if type(selection) = "roArray" and selection.count() >= 2
        rowIndex = selection[0]
        itemIndex = selection[1]
        
        content = m.channelGrid.content
        if content <> invalid and rowIndex >= 0 and rowIndex < content.getChildCount()
            row = content.getChild(rowIndex)
            if row <> invalid and itemIndex >= 0 and itemIndex < row.getChildCount()
                item = row.getChild(itemIndex)
                if item <> invalid and item.url <> invalid
                    for each channel in m.channels
                        if channel.url = item.url
                            PlayChannel(channel)
                            exit for
                        end if
                    end for
                end if
            end if
        end if
    end if
end sub

sub PlayChannel(channel as object)
    m.videoPlayer.visible = true
    m.liveTVScreen.visible = false
    m.moviesScreen.visible = false
    m.seriesScreen.visible = false
    m.settingsScreen.visible = false
    m.navBar.visible = false
    
    videoContent = CreateObject("roSGNode", "ContentNode")
    videoContent.url = channel.url
    videoContent.title = channel.title
    videoContent.streamFormat = "hls"
    
    m.videoPlayer.content = videoContent
    m.videoPlayer.control = "play"
    m.videoPlayer.setFocus(true)
    m.isPlaying = true
    m.currentView = "player"
    
    ' Save to history
    SaveLastChannel(channel)
end sub

sub PlayContent(content as object)
    m.videoPlayer.visible = true
    m.liveTVScreen.visible = false
    m.moviesScreen.visible = false
    m.seriesScreen.visible = false
    m.settingsScreen.visible = false
    m.navBar.visible = false
    
    videoContent = CreateObject("roSGNode", "ContentNode")
    videoContent.url = content.url
    videoContent.title = content.title
    
    ' Determine stream format
    if content.containerExtension <> invalid
        ext = LCase(content.containerExtension)
        if ext = "mp4" or ext = "mkv" or ext = "avi"
            videoContent.streamFormat = "mp4"
        else
            videoContent.streamFormat = "hls"
        end if
    else
        videoContent.streamFormat = "hls"
    end if
    
    m.videoPlayer.content = videoContent
    m.videoPlayer.control = "play"
    m.videoPlayer.setFocus(true)
    m.isPlaying = true
    m.currentView = "player"
end sub

sub SaveLastChannel(channel as object)
    registry = CreateObject("roRegistrySection", "History")
    dataObj = CreateObject("roAssociativeArray")
    dataObj.url = channel.url
    dataObj.title = channel.title
    dataObj.logo = channel.logo
    dataObj.group = channel.group
    data = FormatJson(dataObj)
    registry.Write("lastChannel", data)
    registry.Flush()
end sub

sub StopPlayback()
    m.videoPlayer.control = "stop"
    m.videoPlayer.visible = false
    m.navBar.visible = true
    m.isPlaying = false
    
    ' Return to current tab
    ShowCurrentTab()
end sub

sub ShowCurrentTab()
    m.liveTVScreen.visible = false
    m.moviesScreen.visible = false
    m.seriesScreen.visible = false
    m.settingsScreen.visible = false
    
    if m.currentTab = 0
        m.liveTVScreen.visible = true
        m.channelGrid.setFocus(true)
        m.heroTimer.control = "start"
    else if m.currentTab = 1
        m.moviesScreen.visible = true
    else if m.currentTab = 2
        m.seriesScreen.visible = true
    end if
    
    m.currentView = "main"
end sub

sub onTabSelected(event as object)
    index = event.getData()
    if index = m.currentTab then return
    
    m.currentTab = index
    m.heroTimer.control = "stop"
    
    m.liveTVScreen.visible = false
    m.moviesScreen.visible = false
    m.seriesScreen.visible = false
    m.settingsScreen.visible = false
    
    if index = 0
        ' Live TV
        m.liveTVScreen.visible = true
        m.channelGrid.setFocus(true)
        m.heroTimer.control = "start"
    else if index = 1
        ' Movies
        m.moviesScreen.visible = true
    else if index = 2
        ' Series
        m.seriesScreen.visible = true
    end if
    
    m.currentView = "main"
end sub

sub ShowSettings()
    m.heroTimer.control = "stop"
    m.liveTVScreen.visible = false
    m.moviesScreen.visible = false
    m.seriesScreen.visible = false
    m.settingsScreen.visible = true
    m.currentView = "settings"
end sub

sub HideSettings()
    m.settingsScreen.visible = false
    ShowCurrentTab()
end sub

sub onSettingsChanged()
    ' Reload credentials and refresh data
    LoadXtreamCredentials()
    LoadChannels()
end sub

sub onMovieSelected(event as object)
    movie = event.getData()
    if movie <> invalid
        PlayContent(movie)
    end if
end sub

sub onEpisodeSelected(event as object)
    episode = event.getData()
    if episode <> invalid
        PlayContent(episode)
    end if
end sub

sub ShowSearch()
    m.searchOverlay.visible = true
    m.searchKeyboard.setFocus(true)
    m.currentView = "search"
end sub

sub HideSearch()
    m.searchOverlay.visible = false
    ShowCurrentTab()
end sub

sub ShowCategories()
    m.categoryMenu.visible = true
    
    content = CreateObject("roSGNode", "ContentNode")
    for each cat in m.categories
        item = content.createChild("ContentNode")
        item.title = cat
    end for
    
    m.categoryList.content = content
    m.categoryList.setFocus(true)
    m.currentView = "categories"
end sub

sub HideCategories()
    m.categoryMenu.visible = false
    m.channelGrid.setFocus(true)
    m.currentView = "main"
end sub

sub onCategorySelected(event as object)
    index = event.getData()
    if index >= 0 and index < m.categories.count()
        selectedCat = m.categories[index]
        m.currentCategory = selectedCat
        
        if selectedCat = "All Channels"
            m.channels = m.allChannels
        else if selectedCat = "Favorites"
            m.channels = []
            for each channel in m.allChannels
                if IsFavorite(channel.url)
                    m.channels.push(channel)
                end if
            end for
        else
            m.channels = []
            for each channel in m.allChannels
                if channel.group = selectedCat
                    m.channels.push(channel)
                end if
            end for
        end if
        
        HideCategories()
        DisplayChannels()
    end if
end sub

sub onVideoStateChange(event as object)
    state = event.getData()
    if state = "error"
        m.errorLabel.text = "Playback error"
        m.errorLabel.visible = true
        StopPlayback()
    end if
end sub

function onKeyEvent(key as string, press as boolean) as boolean
    if not press then return false
    
    if m.currentView = "player"
        if key = "back"
            StopPlayback()
            return true
        end if
    else if m.currentView = "search"
        if key = "back"
            HideSearch()
            return true
        end if
    else if m.currentView = "categories"
        if key = "back"
            HideCategories()
            return true
        end if
    else if m.currentView = "settings"
        if key = "back"
            HideSettings()
            return true
        end if
    else if m.currentView = "main"
        if key = "options"
            ShowSearch()
            return true
        else if key = "replay" and m.currentTab = 0
            ShowCategories()
            return true
        else if key = "play"
            ShowSettings()
            return true
        else if key = "info" and m.currentTab = 0
            ' Toggle favorite on current channel
            selection = m.channelGrid.itemFocused
            if type(selection) = "roArray" and selection.count() >= 2
                rowIndex = selection[0]
                itemIndex = selection[1]
                content = m.channelGrid.content
                if content <> invalid and rowIndex >= 0 and rowIndex < content.getChildCount()
                    row = content.getChild(rowIndex)
                    if row <> invalid and itemIndex >= 0 and itemIndex < row.getChildCount()
                        item = row.getChild(itemIndex)
                        if item <> invalid and item.url <> invalid
                            if IsFavorite(item.url)
                                RemoveFavorite(item.url)
                            else
                                SaveFavorite(item.url)
                            end if
                        end if
                    end if
                end if
            end if
            return true
        else if key = "left" and m.currentTab > 0
            ' Navigate to previous tab
            m.tabButtons.buttonSelected = m.currentTab - 1
            return true
        else if key = "right" and m.currentTab < 2
            ' Navigate to next tab
            m.tabButtons.buttonSelected = m.currentTab + 1
            return true
        end if
    end if
    
    return false
end function
