sub Init()
    m.epgGrid = m.top.findNode("epgGrid")
end sub

sub onEPGDataLoaded()
    epgData = m.top.epgData
    if epgData = invalid or epgData.channels = invalid then return
    
    content = CreateObject("roSGNode", "ContentNode")
    
    for each channel in epgData.channels
        channelNode = content.createChild("ContentNode")
        channelNode.title = channel.displayName
        
        ' Find programs for this channel
        for each prog in epgData.programs
            if prog.channelId = channel.id
                programNode = channelNode.createChild("ContentNode")
                programNode.title = prog.title
                programNode.description = prog.description
                
                dt = CreateObject("roDateTime")
                dt.fromISO8601String(left(prog.start, 14))
                if dt.asSeconds() > 0
                    programNode.playStart = dt.asSeconds()
                    
                    dtEnd = CreateObject("roDateTime")
                    dtEnd.fromISO8601String(left(prog.stop, 14))
                    if dtEnd.asSeconds() > 0
                        programNode.playDuration = dtEnd.asSeconds() - dt.asSeconds()
                    else
                        programNode.playDuration = 3600
                    end if
                else
                    programNode.playStart = CreateObject("roDateTime").asSeconds()
                    programNode.playDuration = 3600
                end if
            end if
        end for
    end for
    
    m.epgGrid.content = content
end sub
