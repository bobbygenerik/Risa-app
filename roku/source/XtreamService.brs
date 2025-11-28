function XtreamLogin(server as string, username as string, password as string) as object
    url = server + "/player_api.php?username=" + username + "&password=" + password
    
    http = CreateObject("roUrlTransfer")
    http.setUrl(url)
    http.setCertificatesFile("common:/certs/ca-bundle.crt")
    http.setConnectionTimeout(30)
    
    response = http.getToString()
    if response = "" then return invalid
    
    json = ParseJson(response)
    return json
end function

function XtreamGetLiveStreams(server as string, username as string, password as string) as object
    url = server + "/player_api.php?username=" + username + "&password=" + password + "&action=get_live_streams"
    
    http = CreateObject("roUrlTransfer")
    http.setUrl(url)
    http.setCertificatesFile("common:/certs/ca-bundle.crt")
    http.setConnectionTimeout(30)
    
    response = http.getToString()
    if response = "" then return []
    
    json = ParseJson(response)
    if json = invalid then return []
    
    channels = []
    for each stream in json
        channel = CreateObject("roAssociativeArray")
        channel.title = stream.name
        channel.url = server + "/live/" + username + "/" + password + "/" + stream.stream_id.toStr() + ".m3u8"
        channel.logo = stream.stream_icon
        channel.group = stream.category_name
        channel.tvgId = stream.epg_channel_id
        channels.push(channel)
    end for
    
    return channels
end function

function XtreamGetCategories(server as string, username as string, password as string) as object
    url = server + "/player_api.php?username=" + username + "&password=" + password + "&action=get_live_categories"
    
    http = CreateObject("roUrlTransfer")
    http.setUrl(url)
    http.setCertificatesFile("common:/certs/ca-bundle.crt")
    http.setConnectionTimeout(30)
    
    response = http.getToString()
    if response = "" then return []
    
    return ParseJson(response)
end function
