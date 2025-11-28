' M3UParser.brs - Parse M3U playlist format with EXTINF metadata
' Supports extended M3U format with channel info (logo, EPG ID, group, etc.)

function ParseM3U(url as string) as object
    ' Fetch M3U file from URL
    content = FetchM3UFromURL(url)
    if content = invalid
        return []
    end if
    
    channels = []
    lines = content.split(chr(10))
    
    i = 0
    while i < lines.count()
        line = lines[i].trim()
        
        if line = ""
            i = i + 1
            continue while
        end if
        
        if left(line, 7) = "#EXTINF"
            channel = ParseExtInf(line)
            
            i = i + 1
            while i < lines.count()
                urlLine = lines[i].trim()
                if urlLine <> "" and left(urlLine, 1) <> "#"
                    channel.url = urlLine
                    channels.push(channel)
                    exit while
                end if
                i = i + 1
            end while
        end if
        
        i = i + 1
    end while
    
    return channels
end function

function ParseExtInf(extinf as string) as object
    ' Parse: #EXTINF:-1 tvg-id="..." tvg-logo="..." group-title="..." tvg-name="...",Channel Name
    
    channel = CreateObject("roAssociativeArray")
    channel.tvgId = ""
    channel.logo = ""
    channel.group = ""
    channel.title = ""
    channel.url = ""
    
    ' Extract attributes using regex-like parsing
    ' Parse tvg-id
    tvgIdMatch = ExtractAttribute(extinf, "tvg-id")
    if tvgIdMatch <> ""
        channel.tvgId = tvgIdMatch
    end if
    
    ' Parse tvg-logo
    logoMatch = ExtractAttribute(extinf, "tvg-logo")
    if logoMatch <> ""
        channel.logo = logoMatch
    end if
    
    ' Parse group-title
    groupMatch = ExtractAttribute(extinf, "group-title")
    if groupMatch <> ""
        channel.group = groupMatch
    end if
    
    ' Extract channel name (after last comma)
    commaIndex = extinf.instr(",")
    if commaIndex > 0
        channel.title = mid(extinf, commaIndex + 1).trim()
    else
        channel.title = extinf
    end if
    
    return channel
end function

function ExtractAttribute(line as string, attributeName as string) as string
    ' Extract attribute value from line
    ' Example: tvg-id="12345"
    
    searchStr = attributeName + "=" + chr(34)
    startIndex = line.instr(searchStr)
    
    if startIndex = 0
        return ""
    end if
    
    startIndex = startIndex + len(searchStr)
    endIndex = line.instr(chr(34), startIndex)
    
    if endIndex > 0
        return mid(line, startIndex, endIndex - startIndex)
    end if
    
    return ""
end function

function FetchM3UFromURL(url as string) as string
    ' Fetch M3U file from URL using HTTP
    
    http = CreateObject("roUrlTransfer")
    http.setUrl(url)
    http.addHeader("User-Agent", "IPTV-Player/1.0")
    http.setCertificatesFile("common:/certs/ca-bundle.crt")
    http.initClientCertificates()
    
    ' Set timeout to 30 seconds
    http.setConnectionTimeout(30)
    http.setReadTimeout(30)
    
    response = http.getToString()
    
    if response = ""
        print "Failed to fetch M3U from: "; url
        return invalid
    end if
    
    return response
end function
