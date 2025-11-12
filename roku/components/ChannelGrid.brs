function init()
  m.rowList = m.top.findNode("rowList")
  m.rowList.numRows = 1
  m.rowList.visible = true
  m.top.setFocus(true)
end function

sub onChannelsChange()
  if m.top.channels = invalid
    return
  end if
  
  content = CreateObject("roSGNode", "ContentNode")
  
  for each channel in m.top.channels
    item = CreateObject("roSGNode", "ContentNode")
    item.title = channel.title
    item.description = channel.url
    if channel.logo <> invalid
      item.hdPosterUrl = channel.logo
    end if
    content.appendChild(item)
  end for
  
  m.rowList.content = content
end sub

sub onSelectionChange()
  m.rowList.jumpToItem = m.top.selectedIndex
end sub
