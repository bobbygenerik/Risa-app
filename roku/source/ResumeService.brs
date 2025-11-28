function SavePlaybackPosition(channelUrl as string, position as integer) as void
    registry = CreateObject("roRegistrySection", "Resume")
    registry.Write(channelUrl.md5(), position.toStr())
    registry.Flush()
end function

function GetPlaybackPosition(channelUrl as string) as integer
    registry = CreateObject("roRegistrySection", "Resume")
    pos = registry.Read(channelUrl.md5())
    if pos = "" or pos = invalid then return 0
    return pos.toInt()
end function

function ClearPlaybackPosition(channelUrl as string) as void
    registry = CreateObject("roRegistrySection", "Resume")
    registry.Delete(channelUrl.md5())
    registry.Flush()
end function
