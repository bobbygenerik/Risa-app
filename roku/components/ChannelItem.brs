function init()
  m.poster = m.top.findNode("poster")
  m.label = m.top.findNode("label")
end function

sub updateContent()
  if m.top.itemContent = invalid
    return
  end if

  m.label.text = m.top.itemContent.title
  if m.top.itemContent.hdPosterUrl <> invalid
    m.poster.uri = m.top.itemContent.hdPosterUrl
  end if
end sub

sub updateFocus()
  scale = 1.0 + (m.top.focusPercent * 0.2)
  m.poster.scale = [scale, scale]
end sub
