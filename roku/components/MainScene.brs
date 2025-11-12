sub init()
    m.top.setFocus(true)
    m.channelGrid = m.top.findNode("channelGrid")
    m.titleLabel = m.top.findNode("title")
    m.statusLabel = m.top.findNode("status")
    
    ' Load example channels
    m.channels = [
        { title: "BBC News", url: "http://example.com/bbc.m3u8", logo: "pkg:/images/icon_fhd.png" }
        { title: "ESPN", url: "http://example.com/espn.m3u8", logo: "pkg:/images/icon_fhd.png" }
        { title: "CNN", url: "http://example.com/cnn.m3u8", logo: "pkg:/images/icon_fhd.png" }
    ]
    
    m.statusLabel.text = "Loaded " + stri(m.channels.count()) + " channels"
end sub

sub onChannelChange()
    channel = m.top.channel
    if channel <> invalid
        m.titleLabel.text = channel.title
    end if
end sub

function onKeyEvent(key as string, press as boolean) as boolean
    if not press
        return false
    end if
    
    if key = "OK"
        ' Play selected channel
        m.statusLabel.text = "Playing: " + m.top.channel.title
        return true
    else if key = "Back"
        ' Go back / exit
        return true
    end if
    
    return false
end function
