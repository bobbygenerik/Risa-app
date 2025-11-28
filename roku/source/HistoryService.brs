' HistoryService.brs - Manages watch history and resume positions
' Stores last watched time, position, and duration for resume functionality

' Maximum number of history items to keep
function GetMaxHistoryItems() as integer
    return 100
end function

function LoadWatchHistory() as object
    history = []
    registry = CreateObject("roRegistrySection", "History")
    keys = registry.GetKeyList()
    
    for each key in keys
        if Left(key, 6) = "watch_"
            data = registry.Read(key)
            if data <> "" and data <> invalid
                item = ParseJson(data)
                if item <> invalid
                    history.Push(item)
                end if
            end if
        end if
    end for
    
    ' Sort by last watched time (most recent first)
    history = SortHistoryByTime(history)
    
    return history
end function

function SortHistoryByTime(history as object) as object
    ' Simple bubble sort by lastWatched timestamp
    n = history.Count()
    for i = 0 to n - 2
        for j = 0 to n - i - 2
            if history[j].lastWatched < history[j + 1].lastWatched
                temp = history[j]
                history[j] = history[j + 1]
                history[j + 1] = temp
            end if
        end for
    end for
    return history
end function

sub SaveWatchProgress(content as object, positionSeconds as integer, durationSeconds as integer)
    if content = invalid then return
    
    contentId = GetContentId(content)
    if contentId = "" then return
    
    registry = CreateObject("roRegistrySection", "History")
    key = "watch_" + contentId
    
    ' Calculate progress percentage
    progressPercent = 0
    if durationSeconds > 0
        progressPercent = Int((positionSeconds / durationSeconds) * 100)
    end if
    
    dataObj = CreateObject("roAssociativeArray")
    dataObj.id = contentId
    dataObj.url = content.url
    dataObj.title = content.title
    dataObj.imageUrl = content.imageUrl
    dataObj.contentType = content.contentType
    dataObj.position = positionSeconds
    dataObj.duration = durationSeconds
    dataObj.progressPercent = progressPercent
    dataObj.lastWatched = CreateObject("roDateTime").AsSeconds()
    data = FormatJson(dataObj)
    
    registry.Write(key, data)
    registry.Flush()
    
    ' Clean up old history entries
    CleanupOldHistory()
end sub

function GetResumePosition(content as object) as integer
    if content = invalid then return 0
    
    contentId = GetContentId(content)
    if contentId = "" then return 0
    
    registry = CreateObject("roRegistrySection", "History")
    key = "watch_" + contentId
    
    if not registry.Exists(key) then return 0
    
    data = registry.Read(key)
    if data = "" or data = invalid then return 0
    
    item = ParseJson(data)
    if item = invalid then return 0
    
    ' Don't resume if >95% watched (finished)
    if item.progressPercent >= 95 then return 0
    
    return item.position
end function

function HasResumePosition(content as object) as boolean
    position = GetResumePosition(content)
    return position > 30 ' Only show resume if more than 30 seconds
end function

sub ClearWatchProgress(content as object)
    if content = invalid then return
    
    contentId = GetContentId(content)
    if contentId = "" then return
    
    registry = CreateObject("roRegistrySection", "History")
    key = "watch_" + contentId
    registry.Delete(key)
    registry.Flush()
end sub

sub ClearAllHistory()
    registry = CreateObject("roRegistrySection", "History")
    keys = registry.GetKeyList()
    for each key in keys
        registry.Delete(key)
    end for
    registry.Flush()
end sub

function GetRecentlyWatched(maxItems as integer) as object
    history = LoadWatchHistory()
    recent = []
    
    for i = 0 to history.Count() - 1
        if i >= maxItems then exit for
        recent.Push(history[i])
    end for
    
    return recent
end function

function GetContinueWatching() as object
    history = LoadWatchHistory()
    continueList = []
    
    for each item in history
        ' Include items that are partially watched (5%-95%)
        if item.progressPercent >= 5 and item.progressPercent < 95
            continueList.Push(item)
        end if
    end for
    
    return continueList
end function

sub CleanupOldHistory()
    registry = CreateObject("roRegistrySection", "History")
    keys = registry.GetKeyList()
    
    maxItems = GetMaxHistoryItems()
    if keys.Count() <= maxItems then return
    
    ' Load all items with timestamps
    items = []
    for each key in keys
        if Left(key, 6) = "watch_"
            data = registry.Read(key)
            if data <> "" and data <> invalid
                item = ParseJson(data)
                if item <> invalid
                    item.key = key
                    items.Push(item)
                end if
            end if
        end if
    end for
    
    ' Sort by last watched (oldest first)
    items = SortHistoryByTimeAsc(items)
    
    ' Delete oldest entries
    deleteCount = items.Count() - maxItems
    for i = 0 to deleteCount - 1
        registry.Delete(items[i].key)
    end for
    
    registry.Flush()
end sub

function SortHistoryByTimeAsc(history as object) as object
    n = history.Count()
    for i = 0 to n - 2
        for j = 0 to n - i - 2
            if history[j].lastWatched > history[j + 1].lastWatched
                temp = history[j]
                history[j] = history[j + 1]
                history[j + 1] = temp
            end if
        end for
    end for
    return history
end function

function GetContentId(content as object) as string
    if content = invalid then return ""
    
    ' Use content ID if available, otherwise hash the URL
    if content.id <> invalid and content.id <> ""
        return content.id
    else if content.url <> invalid and content.url <> ""
        ba = CreateObject("roByteArray")
        ba.FromAsciiString(content.url)
        digest = CreateObject("roEVPDigest")
        digest.Setup("md5")
        digest.Update(ba)
        return digest.Final()
    else
        return ""
    end if
end function

' Last channel tracking for quick resume
sub SaveLastChannel(channel as object)
    if channel = invalid then return
    
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

function GetLastChannel() as object
    registry = CreateObject("roRegistrySection", "History")
    data = registry.Read("lastChannel")
    if data = "" or data = invalid then return invalid
    return ParseJson(data)
end function
