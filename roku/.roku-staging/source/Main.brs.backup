' Main.brs - IPTV Player Main Application
' Roku native implementation

function Main() as void
    port = CreateObject("roMessagePort")
    screen = CreateObject("roScreen", true, 1920, 1080)
    screen.SetPort(port)
    
    registry = CreateObject("roRegistry")
    registry.SetSection("Config")
    
    ' Main menu loop
    while true
        option = ShowMainMenu(screen, port)
        
        if option = "exit"
            exit while
        else if option = "browse"
            BrowseChannels(screen, port, registry)
        else if option = "settings"
            ShowSettings(screen, port, registry)
        end if
    end while
    
    screen.Close()
end function

function ShowMainMenu(screen as object, port as object) as string
    selected = 1
    
    while true
        screen.Clear(&h000000FF)
        
        ' Draw title
        screen.DrawText("RISA IPTV Player", 100, 100, &hFFFFFFFF, 3)
        
        ' Draw menu options with highlighting
        if selected = 1
            screen.DrawText("> 1. Browse Channels", 100, 250, &hFFFFFFFF, 2)
        else
            screen.DrawText("  1. Browse Channels", 100, 250, &hCCCCCCFF, 2)
        end if
        
        if selected = 2
            screen.DrawText("> 2. Settings", 100, 330, &hFFFFFFFF, 2)
        else
            screen.DrawText("  2. Settings", 100, 330, &hCCCCCCFF, 2)
        end if
        
        if selected = 3
            screen.DrawText("> 3. Exit", 100, 410, &hFFFFFFFF, 2)
        else
            screen.DrawText("  3. Exit", 100, 410, &hCCCCCCFF, 2)
        end if
        
        screen.Flush()
        
        ' Wait for input
        msg = wait(0, port)
        if type(msg) = "roKeyboardPress"
            key = msg.GetInt()
            if key = 49 ' 1
                return "browse"
            else if key = 50 ' 2
                return "settings"
            else if key = 51 ' 3
                return "exit"
            else if key = 273 or key = 38 ' Up arrow
                if selected > 1
                    selected = selected - 1
                end if
            else if key = 274 or key = 40 ' Down arrow
                if selected < 3
                    selected = selected + 1
                end if
            end if
        end if
    end while
end function

function BrowseChannels(screen as object, port as object, registry as object) as void
    registry.SetSection("Config")
    m3uUrl = registry.Read("m3u_url")
    
    if m3uUrl = invalid or m3uUrl = ""
        screen.Clear(&h000000FF)
        screen.DrawText("CHANNELS", 100, 100, &hFFFFFFFF, 3)
        screen.DrawText("No M3U URL configured in settings.", 100, 250, &hCCCCCCFF)
        screen.DrawText("Press BACK to return", 100, 350, &hAAAAAAAA)
        screen.Flush()
        
        ' Wait for back button
        while true
            msg = wait(0, port)
            if type(msg) = "roKeyboardPress"
                exit while
            end if
        end while
        return
    end if
    
    ' Load channels from URL
    screen.Clear(&h000000FF)
    screen.DrawText("CHANNELS", 100, 100, &hFFFFFFFF, 3)
    screen.DrawText("Loading channels...", 100, 250, &hCCCCCCFF)
    screen.Flush()
    
    channels = ParseM3U(m3uUrl)
    
    if channels.count() = 0
        screen.Clear(&h000000FF)
        screen.DrawText("CHANNELS", 100, 100, &hFFFFFFFF, 3)
        screen.DrawText("No channels found in M3U", 100, 250, &hCCCCCCFF)
        screen.DrawText("Check M3U URL in settings", 100, 310, &hAAAAAAAA)
        screen.DrawText("Press BACK to return", 100, 370, &hAAAAAAAA)
        screen.Flush()
        
        while true
            msg = wait(0, port)
            if type(msg) = "roKeyboardPress"
                exit while
            end if
        end while
        return
    end if
    
    ' Display channels
    selected = 0
    while true
        screen.Clear(&h000000FF)
        screen.DrawText("CHANNELS (" + stri(channels.count()) + ")", 100, 100, &hFFFFFFFF, 3)
        
        ' Show up to 8 channels
        for i = 0 to 7
            if i < channels.count()
                if i = selected
                    screen.DrawText("> " + channels[i].title, 100, 200 + (i * 60), &hFFFFFFFF, 2)
                else
                    screen.DrawText("  " + channels[i].title, 100, 200 + (i * 60), &hCCCCCCFF, 2)
                end if
            end if
        end for
        
        screen.DrawText("Press UP/DOWN to select, OK to play, BACK to return", 100, 700, &h888888FF)
        screen.Flush()
        
        msg = wait(0, port)
        if type(msg) = "roKeyboardPress"
            key = msg.GetInt()
            if key = 273 or key = 38 ' Up
                if selected > 0
                    selected = selected - 1
                end if
            else if key = 274 or key = 40 ' Down
                if selected < channels.count() - 1
                    selected = selected + 1
                end if
            else if key = 13 ' OK/Enter
                PlayChannel(screen, port, channels[selected])
            else if key = 0 ' Back
                exit while
            end if
        end if
    end while
end function

function ShowSettings(screen as object, port as object, registry as object) as void
    registry.SetSection("Config")
    
    while true
        m3uUrl = registry.Read("m3u_url")
        if m3uUrl = invalid then m3uUrl = ""
        
        screen.Clear(&h000000FF)
        screen.DrawText("SETTINGS", 100, 100, &hFFFFFFFF, 3)
        screen.DrawText("Current M3U URL:", 100, 200, &hCCCCCCFF, 2)
        
        if m3uUrl = ""
            screen.DrawText("Not set", 100, 270, &hAAAAAAAA)
        else
            ' Truncate long URLs for display
            displayUrl = m3uUrl
            if len(displayUrl) > 60
                displayUrl = left(displayUrl, 57) + "..."
            end if
            screen.DrawText(displayUrl, 100, 270, &hCCCCCCFF)
        end if
        
        screen.DrawText("1. Edit M3U URL", 100, 380, &hCCCCCCFF, 2)
        screen.DrawText("BACK to return", 100, 450, &hAAAAAAAA)
        screen.Flush()
        
        msg = wait(0, port)
        if type(msg) = "roKeyboardPress"
            key = msg.GetInt()
            if key = 49 ' 1
                newUrl = EditM3UURL(screen, port, m3uUrl)
                if newUrl <> ""
                    registry.Write("m3u_url", newUrl)
                    registry.Flush()
                end if
            else if key = 0 ' Back
                exit while
            end if
        end if
    end while
end function

function EditM3UURL(screen as object, port as object, currentUrl as string) as string
    ' Simple URL editor using keyboard input
    screen.Clear(&h000000FF)
    screen.DrawText("EDIT M3U URL", 100, 100, &hFFFFFFFF, 3)
    screen.DrawText("Enter URL (or leave blank to cancel):", 100, 200, &hCCCCCCFF)
    screen.DrawText("Current: " + currentUrl, 100, 270, &hAAAAAAAA)
    screen.DrawText("Press OK when done", 100, 350, &hAAAAAAAA)
    screen.Flush()
    
    ' For now, return current URL unchanged
    ' On a real Roku, you'd use an input dialog
    return currentUrl
end function

function PlayChannel(screen as object, port as object, channel as object) as void
    screen.Clear(&h000000FF)
    screen.DrawText("PLAYING: " + channel.title, 100, 100, &hFFFFFFFF, 3)
    screen.DrawText("URL: " + channel.url, 100, 200, &hCCCCCCFF, 2)
    screen.DrawText("Press BACK to stop", 100, 350, &hAAAAAAAA)
    screen.Flush()
    
    ' Wait for back button to stop playback
    while true
        msg = wait(0, port)
        if type(msg) = "roKeyboardPress"
            exit while
        end if
    end while
end function
