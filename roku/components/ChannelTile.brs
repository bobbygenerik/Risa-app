sub init()
    m.background = m.top.findNode("background")
    m.logo = m.top.findNode("logo")
    m.title = m.top.findNode("title")
    m.focusRect = m.top.findNode("focusRect")
end sub

sub onChannelChange()
    channel = m.top.channel
    if channel <> invalid
        m.title.text = channel.title
        if channel.logo <> invalid
            m.logo.uri = channel.logo
        end if
    end if
end sub

sub onFocusChange()
    m.focusRect.visible = m.top.focused
    if m.top.focused
        m.background.color = "&h3a3a3aff"
    else
        m.background.color = "&h2a2a2aff"
    end if
end sub

function onKeyEvent(key as string, press as boolean) as boolean
    if press and key = "OK"
        print "Playing channel: "; m.top.channel.title
        return true
    end if
    return false
end function
