' FavoritesService.brs - Manages favorite channels and content
' Stored in Roku registry for persistence (matches Android SharedPreferences)

function LoadFavoriteChannels() as object
    favorites = []
    registry = CreateObject("roRegistrySection", "Favorites")
    keys = registry.GetKeyList()
    for each key in keys
        if Left(key, 8) = "channel_"
            data = registry.Read(key)
            if data <> "" and data <> invalid
                fav = ParseJson(data)
                if fav <> invalid
                    favorites.Push(fav)
                end if
            end if
        end if
    end for
    return favorites
end function

function LoadFavoriteContent() as object
    favorites = []
    registry = CreateObject("roRegistrySection", "Favorites")
    keys = registry.GetKeyList()
    for each key in keys
        if Left(key, 8) = "content_"
            data = registry.Read(key)
            if data <> "" and data <> invalid
                fav = ParseJson(data)
                if fav <> invalid
                    favorites.Push(fav)
                end if
            end if
        end if
    end for
    return favorites
end function

sub SaveFavoriteChannel(channel as object)
    if channel = invalid or channel.url = invalid then return
    
    registry = CreateObject("roRegistrySection", "Favorites")
    key = "channel_" + GetMD5(channel.url)
    
    data = FormatJson({
        url: channel.url,
        title: channel.title,
        logo: channel.logo,
        group: channel.group,
        addedTime: CreateObject("roDateTime").AsSeconds()
    })
    
    registry.Write(key, data)
    registry.Flush()
end sub

sub SaveFavoriteContent(content as object)
    if content = invalid or content.id = invalid then return
    
    registry = CreateObject("roRegistrySection", "Favorites")
    key = "content_" + content.id
    
    data = FormatJson({
        id: content.id,
        title: content.title,
        imageUrl: content.imageUrl,
        contentType: content.contentType,
        addedTime: CreateObject("roDateTime").AsSeconds()
    })
    
    registry.Write(key, data)
    registry.Flush()
end sub

sub RemoveFavoriteChannel(channelUrl as string)
    registry = CreateObject("roRegistrySection", "Favorites")
    key = "channel_" + GetMD5(channelUrl)
    registry.Delete(key)
    registry.Flush()
end sub

sub RemoveFavoriteContent(contentId as string)
    registry = CreateObject("roRegistrySection", "Favorites")
    key = "content_" + contentId
    registry.Delete(key)
    registry.Flush()
end sub

function IsFavoriteChannel(channelUrl as string) as boolean
    registry = CreateObject("roRegistrySection", "Favorites")
    key = "channel_" + GetMD5(channelUrl)
    return registry.Exists(key)
end function

function IsFavoriteContent(contentId as string) as boolean
    registry = CreateObject("roRegistrySection", "Favorites")
    key = "content_" + contentId
    return registry.Exists(key)
end function

function ToggleFavoriteChannel(channel as object) as boolean
    if IsFavoriteChannel(channel.url)
        RemoveFavoriteChannel(channel.url)
        return false
    else
        SaveFavoriteChannel(channel)
        return true
    end if
end function

function ToggleFavoriteContent(content as object) as boolean
    if IsFavoriteContent(content.id)
        RemoveFavoriteContent(content.id)
        return false
    else
        SaveFavoriteContent(content)
        return true
    end if
end function

function GetFavoriteCount() as integer
    registry = CreateObject("roRegistrySection", "Favorites")
    return registry.GetKeyList().Count()
end function

sub ClearAllFavorites()
    registry = CreateObject("roRegistrySection", "Favorites")
    keys = registry.GetKeyList()
    for each key in keys
        registry.Delete(key)
    end for
    registry.Flush()
end sub

' Simple hash function for creating registry keys
function GetMD5(input as string) as string
    ba = CreateObject("roByteArray")
    ba.FromAsciiString(input)
    digest = CreateObject("roEVPDigest")
    digest.Setup("md5")
    digest.Update(ba)
    return digest.Final()
end function
