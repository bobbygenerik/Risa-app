function init()
  m.video = m.top.findNode("video")
  m.port = CreateObject("roMessagePort")
  m.video.observeField("state", m.port)
  m.video.observeField("position", m.port)
end function

sub onContentChange()
  if m.top.videoContent = invalid
    return
  end if

  content = CreateObject("roSGNode", "ContentNode")
  content.url = m.top.videoContent.description
  content.title = m.top.videoContent.title
  content.streamFormat = "hls"
  
  m.video.content = content
  m.video.play()
end sub

function play()
  m.video.play()
end function

function pause()
  m.video.pause()
end function

function stop()
  m.video.stop()
end function
