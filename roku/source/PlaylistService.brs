function SavePlaylist(name as string, url as string) as boolean
    registry = CreateObject("roRegistrySection", "Playlists")
    
    playlists = GetPlaylists()
    id = playlists.count().toStr()
    
    registry.Write("pl_" + id + "_name", name)
    registry.Write("pl_" + id + "_url", url)
    registry.Flush()
    
    return true
end function

function GetPlaylists() as object
    registry = CreateObject("roRegistrySection", "Playlists")
    playlists = []
    
    keys = registry.GetKeyList()
    nameKeys = []
    
    for each key in keys
        if key.instr("_name") > 0
            nameKeys.push(key)
        end if
    end for
    
    for each nameKey in nameKeys
        prefix = nameKey.left(nameKey.instr("_name"))
        name = registry.Read(nameKey)
        url = registry.Read(prefix + "_url")
        
        if name <> "" and url <> ""
            playlists.push({name: name, url: url, id: prefix})
        end if
    end for
    
    return playlists
end function

function DeletePlaylist(id as string) as boolean
    registry = CreateObject("roRegistrySection", "Playlists")
    registry.Delete(id + "_name")
    registry.Delete(id + "_url")
    registry.Flush()
    return true
end function

function GetActivePlaylist() as string
    registry = CreateObject("roRegistrySection", "Config")
    return registry.Read("active_playlist")
end function

function SetActivePlaylist(id as string) as void
    registry = CreateObject("roRegistrySection", "Config")
    registry.Write("active_playlist", id)
    registry.Flush()
end function
