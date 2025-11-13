function Main() as void
    print "=== IPTV Player Starting ==="
    
    ' Create screen - this is the most basic Roku object
    screen = CreateObject("roScreen", true, 1920, 1080)
    if screen = invalid
        print "ERROR: Failed to create roScreen"
        return
    end if
    print "SUCCESS: roScreen created"
    
    ' Create message port
    port = CreateObject("roMessagePort")
    if port = invalid
        print "ERROR: Failed to create roMessagePort"
        return
    end if
    print "SUCCESS: roMessagePort created"
    
    ' Set port on screen
    screen.SetPort(port)
    print "SUCCESS: SetPort called"
    
    ' Try to create input - this is where it might fail
    input = CreateObject("roInput")
    if input = invalid
        print "WARNING: roInput not available, trying alternative"
    else
        print "SUCCESS: roInput created"
        ' roInput does not support SetPort on all Roku firmware. Events are delivered
        ' to the screen's message port (set above) so do not call SetPort here.
    end if
    
    ' Draw something to verify screen works
    screen.Clear(&h000000FF)
    ' Use default font (omit the font parameter) to avoid invalid font errors on some Roku models
    screen.DrawText("RISA IPTV", 100, 100, &hFFFFFFFF)
    screen.DrawText("Menu", 100, 250, &hFFFFFFFF)
    screen.DrawText("Settings", 100, 350, &hFFFFFFFF)
    screen.DrawText("Exit", 100, 450, &hFFFFFFFF)
    screen.SwapBuffers()
    
    print "SUCCESS: Screen drawn, waiting 10 seconds..."
    wait(10000, port)
    
    screen.Close()
    print "=== IPTV Player Exiting ==="
end function
