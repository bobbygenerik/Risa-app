function SavePlaybackPosition(channelUrl as string, position as integer) as void
    registry = CreateObject("roRegistrySection", "Resume")
    registry.Write(GetUrlHash(channelUrl), position.toStr())
    registry.Flush()
end function

function GetPlaybackPosition(channelUrl as string) as integer
    registry = CreateObject("roRegistrySection", "Resume")
    hashKey = GetUrlHash(channelUrl)
    posStr = registry.Read(hashKey)
    if posStr = "" or posStr = invalid
        return 0
    end if
    return val(posStr)
end function

function ClearPlaybackPosition(channelUrl as string) as void
    registry = CreateObject("roRegistrySection", "Resume")
    registry.Delete(GetUrlHash(channelUrl))
    registry.Flush()
end function

function GetUrlHash(url as string) as string
    ba = CreateObject("roByteArray")
    ba.FromAsciiString(url)
    digest = CreateObject("roEVPDigest")
    digest.Setup("md5")
    digest.Update(ba)
    return digest.Final()
end function
