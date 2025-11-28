' Main.brs - RISA IPTV App Entry Point
' Matches Android app structure and features

sub Main(args as dynamic)
    ' Initialize the screen and message port
    screen = CreateObject("roSGScreen")
    m.port = CreateObject("roMessagePort")
    screen.setMessagePort(m.port)
    
    ' Create and show the main scene
    scene = screen.CreateScene("MainScene")
    screen.show()
    
    ' Handle deep linking if provided
    if args <> invalid and args.contentId <> invalid
        scene.deepLinkContent = args.contentId
    end if
    
    ' Main event loop
    while true
        msg = wait(0, m.port)
        msgType = type(msg)
        
        if msgType = "roSGScreenEvent"
            if msg.isScreenClosed() then return
        end if
    end while
end sub

' Utility function for debugging
sub logDebug(message as string)
    print "RISA: " + message
end sub
