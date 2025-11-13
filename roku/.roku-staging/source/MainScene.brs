function Init() as void
    print "MainScene initializing..."
    m.port = CreateObject("roMessagePort")
    m.top.SetPort(m.port)
    
    registry = CreateObject("roRegistry")
    registry.SetSection("Config")
    
    ' Draw initial UI
    ShowMainMenu(registry)
end function

function ShowMainMenu(registry as object) as void
    screen = CreateObject("roScreen", true, 1920, 1080)
    screen.SetPort(m.port)
    
    selected = 1
    
    while true
        screen.Clear(&h000000FF)
        
        ' Draw title
        screen.DrawText("RISA IPTV Player", 100, 100, &hFFFFFFFF, 3)
        
        ' Draw menu options
        if selected = 1
            screen.DrawText("> 1. Browse Channels", 100, 250, &hFFFFFFFF, 2)
        else
            screen.DrawText("  1. Browse Channels", 100, 250, &hFFFFFFFF, 2)
        end if
        
        if selected = 2
            screen.DrawText("> 2. Settings", 100, 350, &hFFFFFFFF, 2)
        else
            screen.DrawText("  2. Settings", 100, 350, &hFFFFFFFF, 2)
        end if
        
        if selected = 3
            screen.DrawText("> 3. Exit", 100, 450, &hFFFFFFFF, 2)
        else
            screen.DrawText("  3. Exit", 100, 450, &hFFFFFFFF, 2)
        end if
        
        screen.SwapBuffers()
        
        ' Handle input
        msg = wait(0, m.port)
        if type(msg) = "roKeyboardEvent"
            key = msg.GetInt()
            if key = 38  ' Up arrow
                selected = selected - 1
                if selected < 1 then selected = 3
            else if key = 40  ' Down arrow
                selected = selected + 1
                if selected > 3 then selected = 1
            else if key = 13 or key = 32  ' Enter or Space
                if selected = 1
                    BrowseChannels(screen, m.port, registry)
                else if selected = 2
                    ShowSettings(screen, m.port, registry)
                else if selected = 3
                    exit while
                end if
            end if
        end if
    end while
    
    screen.Close()
end function

function BrowseChannels(screen as object, port as object, registry as object) as void
    screen.Clear(&h000000FF)
    screen.DrawText("Loading channels...", 100, 100, &hFFFFFFFF, 2)
    screen.SwapBuffers()
    
    m3uUrl = registry.Read("m3u_url", "")
    if m3uUrl = ""
        screen.Clear(&h000000FF)
        screen.DrawText("No M3U URL configured", 100, 100, &hFFFFFFFF, 2)
        screen.DrawText("Press any key to return", 100, 200, &hFFFFFFFF, 1)
        screen.SwapBuffers()
        wait(5000, port)
        return
    end if
    
    channels = FetchAndParseM3U(m3uUrl)
    
    if channels.Count() = 0
        screen.Clear(&h000000FF)
        screen.DrawText("No channels found", 100, 100, &hFFFFFFFF, 2)
        screen.DrawText("Press any key to return", 100, 200, &hFFFFFFFF, 1)
        screen.SwapBuffers()
        wait(5000, port)
        return
    end if
    
    selected = 1
    while true
        screen.Clear(&h000000FF)
        screen.DrawText("Channels (" + channels.Count().ToStr() + ")", 100, 50, &hFFFFFFFF, 3)
        
        ' Display 5 channels at a time
        for i = 0 to 4
            idx = selected - 1 + i
            if idx < channels.Count()
                channel = channels[idx]
                if i = 0
                    screen.DrawText("> " + channel.name, 100, 150 + (i * 80), &hFFFF00FF, 2)
                else
                    screen.DrawText("  " + channel.name, 100, 150 + (i * 80), &hFFFFFFFF, 2)
                end if
            end if
        end for
        
        screen.SwapBuffers()
        
        msg = wait(0, port)
        if type(msg) = "roKeyboardEvent"
            key = msg.GetInt()
            if key = 38  ' Up
                selected = selected - 1
                if selected < 1 then selected = channels.Count()
            else if key = 40  ' Down
                selected = selected + 1
                if selected > channels.Count() then selected = 1
            else if key = 13 or key = 32  ' Enter
                screen.Close()
                return
            else if key = 27  ' ESC to go back
                screen.Close()
                return
            end if
        end if
    end while
end function

function ShowSettings(screen as object, port as object, registry as object) as void
    while true
        screen.Clear(&h000000FF)
        screen.DrawText("Settings", 100, 100, &hFFFFFFFF, 3)
        screen.DrawText("1. M3U URL Configuration", 100, 250, &hFFFFFFFF, 2)
        screen.DrawText("2. Back", 100, 350, &hFFFFFFFF, 2)
        screen.SwapBuffers()
        
        msg = wait(0, port)
        if type(msg) = "roKeyboardEvent"
            key = msg.GetInt()
            if key = 49  ' '1'
                m3uUrl = registry.Read("m3u_url", "")
                screen.Clear(&h000000FF)
                screen.DrawText("Current M3U URL:", 100, 100, &hFFFFFFFF, 2)
                screen.DrawText(m3uUrl, 100, 200, &hFFFFFFFF, 1)
                screen.DrawText("(Edit in config - press any key)", 100, 300, &hFFFFFFFF, 1)
                screen.SwapBuffers()
                wait(3000, port)
            else if key = 50  ' '2'
                return
            end if
        end if
    end while
end function

function FetchAndParseM3U(url as string) as object
    channels = []
    
    http = CreateObject("roUrlTransfer")
    http.SetUrl(url)
    http.SetTimeout(5)
    
    response = http.GetToString()
    
    if response <> ""
        lines = response.Split(chr(10))
        i = 0
        while i < lines.Count()
            line = lines[i].Trim()
            if line.StartsWith("#EXTINF:")
                ' Parse EXTINF line
                channel = {}
                channel.name = "Unknown"
                channel.logo = ""
                
                ' Extract name (after comma)
                commaIdx = line.Find(",")
                if commaIdx > 0
                    channel.name = line.Mid(commaIdx + 1).Trim()
                end if
                
                ' Extract tvg-logo
                logoIdx = line.Find("tvg-logo=")
                if logoIdx > 0
                    rest = line.Mid(logoIdx + 9)
                    quoteIdx = rest.Find("""")
                    if quoteIdx > 0
                        channel.logo = rest.Mid(0, quoteIdx)
                    end if
                end if
                
                channels.Push(channel)
            end if
            i = i + 1
        end while
    end if
    
    return channels
end function
