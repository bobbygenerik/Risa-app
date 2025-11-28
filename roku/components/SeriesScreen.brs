' SeriesScreen.brs - Series browsing screen logic

sub Init()
    m.seriesGrid = m.top.findNode("seriesGrid")
    m.heroSection = m.top.findNode("heroSection")
    m.heroImage = m.top.findNode("heroImage")
    m.heroTitle = m.top.findNode("heroTitle")
    m.heroYear = m.top.findNode("heroYear")
    m.heroRating = m.top.findNode("heroRating")
    m.heroGenre = m.top.findNode("heroGenre")
    m.loadingGroup = m.top.findNode("loadingGroup")
    m.errorLabel = m.top.findNode("errorLabel")
    m.categoryMenu = m.top.findNode("categoryMenu")
    m.categoryList = m.top.findNode("categoryList")
    m.detailView = m.top.findNode("detailView")
    m.detailBackdrop = m.top.findNode("detailBackdrop")
    m.detailPoster = m.top.findNode("detailPoster")
    m.detailTitle = m.top.findNode("detailTitle")
    m.detailMeta = m.top.findNode("detailMeta")
    m.detailPlot = m.top.findNode("detailPlot")
    m.seasonList = m.top.findNode("seasonList")
    m.episodeGrid = m.top.findNode("episodeGrid")
    
    m.seriesGrid.observeField("itemSelected", "onSeriesSelected")
    m.seriesGrid.observeField("itemFocused", "onSeriesFocused")
    m.categoryList.observeField("itemSelected", "onCategorySelected")
    m.seasonList.observeField("itemSelected", "onSeasonSelected")
    m.episodeGrid.observeField("itemSelected", "onEpisodeSelected")
    
    m.seriesList = []
    m.allSeries = []
    m.categories = []
    m.currentCategory = "All"
    m.seriesByCategory = {}
    m.currentHeroIndex = 0
    m.currentView = "grid"
    m.isLoaded = false
    m.currentSeriesInfo = invalid
    m.currentSeason = 1
    
    ' Hero auto-scroll timer
    m.heroTimer = CreateObject("roSGNode", "Timer")
    m.heroTimer.duration = 8
    m.heroTimer.repeat = true
    m.heroTimer.observeField("fire", "onHeroTimerFire")
end sub

sub onVisibleChange()
    if m.top.visible and not m.isLoaded
        LoadSeries()
    end if
    
    if m.top.visible
        m.heroTimer.control = "start"
    else
        m.heroTimer.control = "stop"
    end if
end sub

sub LoadSeries()
    m.loadingGroup.visible = true
    m.seriesGrid.visible = false
    m.heroSection.visible = false
    
    m.loaderTask = CreateObject("roSGNode", "SeriesLoaderTask")
    m.loaderTask.server = m.top.xtreamServer
    m.loaderTask.username = m.top.xtreamUsername
    m.loaderTask.password = m.top.xtreamPassword
    m.loaderTask.observeField("series", "onSeriesLoaded")
    m.loaderTask.observeField("error", "onLoadError")
    m.loaderTask.control = "RUN"
end sub

sub onSeriesLoaded()
    result = m.loaderTask.series
    if result = invalid
        ShowError("Failed to load series")
        return
    end if
    
    m.seriesByCategory = result.seriesByCategory
    m.categories = ["All"]
    
    ' Build category list
    for each catName in m.seriesByCategory
        m.categories.Push(catName)
    end for
    
    ' Build flat list of all series
    m.allSeries = []
    for each catName in m.seriesByCategory
        for each show in m.seriesByCategory[catName]
            m.allSeries.Push(show)
        end for
    end for
    
    m.seriesList = m.allSeries
    m.isLoaded = true
    
    DisplaySeries()
end sub

sub onLoadError()
    error = m.loaderTask.error
    ShowError(error)
end sub

sub ShowError(message as string)
    m.loadingGroup.visible = false
    m.errorLabel.text = message
    m.errorLabel.visible = true
end sub

sub DisplaySeries()
    m.loadingGroup.visible = false
    m.errorLabel.visible = false
    m.detailView.visible = false
    
    if m.seriesList.Count() > 0
        UpdateHeroBanner(0)
        m.heroSection.visible = true
        m.heroTimer.control = "start"
    end if
    
    ' Create content for RowList
    content = CreateObject("roSGNode", "ContentNode")
    
    if m.currentCategory = "All"
        ' Show series grouped by category
        for each catName in m.seriesByCategory
            row = content.createChild("ContentNode")
            row.title = catName
            
            seriesList = m.seriesByCategory[catName]
            maxPerRow = 20
            if seriesList.Count() < maxPerRow then maxPerRow = seriesList.Count()
            
            for i = 0 to maxPerRow - 1
                show = seriesList[i]
                item = row.createChild("ContentNode")
                item.title = show.title
                item.hdPosterUrl = show.imageUrl
                item.rating = show.rating
                item.addFields({seriesData: show})
            end for
        end for
    else
        ' Show single category
        seriesList = m.seriesByCategory[m.currentCategory]
        if seriesList <> invalid and seriesList.Count() > 0
            row = content.createChild("ContentNode")
            row.title = m.currentCategory
            
            for each show in seriesList
                item = row.createChild("ContentNode")
                item.title = show.title
                item.hdPosterUrl = show.imageUrl
                item.rating = show.rating
                item.addFields({seriesData: show})
            end for
        end if
    end if
    
    m.seriesGrid.content = content
    m.seriesGrid.visible = true
    m.seriesGrid.setFocus(true)
    m.currentView = "grid"
end sub

sub UpdateHeroBanner(index as integer)
    if m.seriesList.Count() = 0 then return
    if index < 0 or index >= m.seriesList.Count() then index = 0
    
    show = m.seriesList[index]
    m.heroTitle.text = show.title
    m.heroYear.text = show.year
    if show.rating <> invalid and show.rating <> ""
        m.heroRating.text = "★ " + show.rating
    else
        m.heroRating.text = ""
    end if
    m.heroGenre.text = show.genre
    
    if show.imageUrl <> invalid and show.imageUrl <> ""
        m.heroImage.uri = show.imageUrl
    end if
    
    m.currentHeroIndex = index
end sub

sub onHeroTimerFire()
    if m.seriesList.Count() > 0 and m.currentView = "grid"
        m.currentHeroIndex = (m.currentHeroIndex + 1) mod m.seriesList.Count()
        UpdateHeroBanner(m.currentHeroIndex)
    end if
end sub

sub onSeriesFocused(event as object)
    focusedIndex = event.getData()
    if type(focusedIndex) = "roArray" and focusedIndex.Count() >= 2
        rowIndex = focusedIndex[0]
        itemIndex = focusedIndex[1]
        
        content = m.seriesGrid.content
        if content <> invalid and rowIndex >= 0 and rowIndex < content.getChildCount()
            row = content.getChild(rowIndex)
            if row <> invalid and itemIndex >= 0 and itemIndex < row.getChildCount()
                item = row.getChild(itemIndex)
                if item <> invalid
                    for i = 0 to m.seriesList.Count() - 1
                        if m.seriesList[i].title = item.title
                            UpdateHeroBanner(i)
                            exit for
                        end if
                    end for
                end if
            end if
        end if
    end if
end sub

sub onSeriesSelected(event as object)
    selection = event.getData()
    if type(selection) = "roArray" and selection.Count() >= 2
        rowIndex = selection[0]
        itemIndex = selection[1]
        
        content = m.seriesGrid.content
        if content <> invalid and rowIndex >= 0 and rowIndex < content.getChildCount()
            row = content.getChild(rowIndex)
            if row <> invalid and itemIndex >= 0 and itemIndex < row.getChildCount()
                item = row.getChild(itemIndex)
                if item <> invalid and item.seriesData <> invalid
                    ShowSeriesDetail(item.seriesData)
                end if
            end if
        end if
    end if
end sub

sub ShowSeriesDetail(series as object)
    m.heroTimer.control = "stop"
    m.heroSection.visible = false
    m.seriesGrid.visible = false
    m.detailView.visible = true
    m.currentView = "detail"
    
    ' Show loading while fetching series info
    m.detailTitle.text = series.title
    m.detailMeta.text = "Loading..."
    m.detailPlot.text = series.plot
    
    if series.imageUrl <> invalid and series.imageUrl <> ""
        m.detailBackdrop.uri = series.imageUrl
        m.detailPoster.uri = series.imageUrl
    end if
    
    ' Load series info (seasons/episodes)
    m.infoTask = CreateObject("roSGNode", "SeriesInfoTask")
    m.infoTask.server = m.top.xtreamServer
    m.infoTask.username = m.top.xtreamUsername
    m.infoTask.password = m.top.xtreamPassword
    m.infoTask.seriesId = series.id
    m.infoTask.observeField("seriesInfo", "onSeriesInfoLoaded")
    m.infoTask.control = "RUN"
end sub

sub onSeriesInfoLoaded()
    info = m.infoTask.seriesInfo
    if info = invalid then return
    
    m.currentSeriesInfo = info
    
    ' Update detail header
    if info.info <> invalid
        metaText = ""
        if info.info.year <> invalid then metaText = info.info.year
        if info.info.rating <> invalid and info.info.rating <> ""
            if metaText <> "" then metaText = metaText + " • "
            metaText = metaText + "★ " + info.info.rating
        end if
        if info.info.genre <> invalid and info.info.genre <> ""
            if metaText <> "" then metaText = metaText + " • "
            metaText = metaText + info.info.genre
        end if
        m.detailMeta.text = metaText
        
        if info.info.plot <> invalid
            m.detailPlot.text = info.info.plot
        end if
    end if
    
    ' Populate season list
    seasonContent = CreateObject("roSGNode", "ContentNode")
    for each season in info.seasons
        item = seasonContent.createChild("ContentNode")
        item.title = "Season " + season.seasonNumber.toStr()
    end for
    m.seasonList.content = seasonContent
    
    ' Display first season's episodes
    if info.seasons.Count() > 0
        m.currentSeason = 1
        DisplayEpisodes(info.seasons[0].episodes)
    end if
    
    m.seasonList.setFocus(true)
end sub

sub onSeasonSelected(event as object)
    index = event.getData()
    if m.currentSeriesInfo <> invalid and index >= 0 and index < m.currentSeriesInfo.seasons.Count()
        m.currentSeason = index + 1
        DisplayEpisodes(m.currentSeriesInfo.seasons[index].episodes)
    end if
end sub

sub DisplayEpisodes(episodes as object)
    content = CreateObject("roSGNode", "ContentNode")
    row = content.createChild("ContentNode")
    row.title = "Episodes"
    
    for each ep in episodes
        item = row.createChild("ContentNode")
        item.title = "E" + ep.episodeNumber.toStr() + " - " + ep.title
        item.addFields({episodeData: ep})
    end for
    
    m.episodeGrid.content = content
end sub

sub onEpisodeSelected(event as object)
    selection = event.getData()
    if type(selection) = "roArray" and selection.Count() >= 2
        rowIndex = selection[0]
        itemIndex = selection[1]
        
        content = m.episodeGrid.content
        if content <> invalid and rowIndex >= 0 and rowIndex < content.getChildCount()
            row = content.getChild(rowIndex)
            if row <> invalid and itemIndex >= 0 and itemIndex < row.getChildCount()
                item = row.getChild(itemIndex)
                if item <> invalid and item.episodeData <> invalid
                    m.top.episodeSelected = item.episodeData
                end if
            end if
        end if
    end if
end sub

sub HideSeriesDetail()
    m.detailView.visible = false
    m.heroSection.visible = true
    m.seriesGrid.visible = true
    m.seriesGrid.setFocus(true)
    m.currentView = "grid"
    m.heroTimer.control = "start"
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
    m.seriesGrid.setFocus(true)
    m.currentView = "grid"
end sub

sub onCategorySelected(event as object)
    index = event.getData()
    if index >= 0 and index < m.categories.Count()
        m.currentCategory = m.categories[index]
        
        if m.currentCategory = "All"
            m.seriesList = m.allSeries
        else
            m.seriesList = m.seriesByCategory[m.currentCategory]
            if m.seriesList = invalid then m.seriesList = []
        end if
        
        HideCategories()
        DisplaySeries()
    end if
end sub

function onKeyEvent(key as string, press as boolean) as boolean
    if not press then return false
    
    if m.currentView = "categories"
        if key = "back"
            HideCategories()
            return true
        end if
    else if m.currentView = "detail"
        if key = "back"
            HideSeriesDetail()
            return true
        end if
    else if m.currentView = "grid"
        if key = "replay"
            ShowCategories()
            return true
        end if
    end if
    
    return false
end function
