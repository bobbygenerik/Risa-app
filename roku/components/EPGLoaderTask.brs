sub init()
    m.top.functionName = "loadEPG"
end sub

sub loadEPG()
    url = m.top.url
    if url = "" then return
    
    ' Call function from EPGService.brs
    epgData = FetchEPG(url)
    m.top.epgData = epgData
end sub
