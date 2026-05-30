sub Init()
    m.contentRowList = m.top.findNode("contentRowList")
    m.contentRowList.observeField("itemSelected", "onItemSelected")
end sub

sub onItemSelected()
    m.top.itemSelected = m.contentRowList.itemSelected
end sub

sub onChannelsLoaded()
    channels = m.top.channels
    if channels = invalid or channels.count() = 0 then return
    
    content = CreateObject("roSGNode", "ContentNode")
    
    ' Continue Watching (Mock for now, but real row structure)
    row1 = content.createChild("ContentNode")
    row1.title = "Continue Watching"
    
    ' Live TV Highlights (Real channels)
    row2 = content.createChild("ContentNode")
    row2.title = "Live TV Highlights"
    maxHighlights = 10
    if channels.count() < 10 then maxHighlights = channels.count()
    for i = 0 to maxHighlights - 1
        item = row2.createChild("ContentNode")
        item.title = channels[i].title
        item.hdPosterUrl = channels[i].logo
        item.url = channels[i].url
    end for
    
    ' Recently Added (Simulated with channels from end of list)
    row3 = content.createChild("ContentNode")
    row3.title = "Recently Added"
    startIdx = channels.count() - 10
    if startIdx < 0 then startIdx = 0
    for i = startIdx to channels.count() - 1
        item = row3.createChild("ContentNode")
        item.title = channels[i].title
        item.hdPosterUrl = channels[i].logo
        item.url = channels[i].url
    end for
    
    m.contentRowList.content = content
end sub
