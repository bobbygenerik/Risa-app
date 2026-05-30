sub Init()
    m.sidebarBg = m.top.findNode("sidebarBg")
    m.menuList = m.top.findNode("menuList")
    m.logoIcon = m.top.findNode("logoIcon")
    m.logoFull = m.top.findNode("logoFull")
    m.settingsList = m.top.findNode("settingsList")

    ' Nav items matching Flutter sidebar exactly
    menuItems = ["Search", "Guide", "Live TV", "Favorites", "Downloads"]
    content = CreateObject("roSGNode", "ContentNode")
    for each item in menuItems
        node = content.createChild("ContentNode")
        node.title = item
    end for
    m.menuList.content = content
    m.menuList.jumpToItem = 2 ' Default: Live TV

    ' Settings entry at bottom
    settingsContent = CreateObject("roSGNode", "ContentNode")
    sNode = settingsContent.createChild("ContentNode")
    sNode.title = "Settings"
    m.settingsList.content = settingsContent

    m.menuList.observeField("itemSelected", "onItemSelected")
    m.settingsList.observeField("itemSelected", "onSettingsSelected")
end sub

sub onItemSelected()
    m.top.itemSelected = m.menuList.itemSelected
end sub

sub onSettingsSelected()
    m.top.itemSelected = 5
end sub

sub onExpandedChange()
    expanded = m.top.isExpanded
    w = 56
    if expanded then w = 200
    m.sidebarBg.width = w
    if m.logoIcon <> invalid then m.logoIcon.visible = not expanded
    if m.logoFull <> invalid then m.logoFull.visible = expanded
end sub

function onKeyEvent(key as string, press as boolean) as boolean
    if not press then return false
    if key = "right"
        m.top.isExpanded = false
        return false
    else if key = "left"
        if m.top.isExpanded
            m.top.isExpanded = false
        end if
        return true
    end if
    return false
end function
