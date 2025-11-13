function Init()
    ' Minimal SceneGraph-friendly Init
    print "MainScene.Init() - SceneGraph entry"
    m.top.setFocus(true)
    debugNode = m.top.findNode("debugLabel")
    if debugNode <> invalid then
        debugNode.text = "RISA IPTV DEV\n\nREADY - Press OK"
        print "DEBUG: debugLabel set"
    else
        print "DEBUG: debugLabel NOT found"
    end if
end function

function onKeyEvent(key as Object) as Void
    ' Optional: handle OK press to dismiss overlay
    if type(key) = "roKeyEvent" then
        k = key.GetKey()
        ' Roku OK key is usually "OK"
        if k = "OK" then
            debugNode = m.top.findNode("debugLabel")
            if debugNode <> invalid then
                debugNode.text = "RISA IPTV DEV\n\nLaunched"
            end if
        end if
    end if
end function
