function GetCategories(channels as object) as object
    categories = CreateObject("roAssociativeArray")
    
    for each channel in channels
        group = channel.group
        if group = "" or group = invalid then group = "Uncategorized"
        
        if categories[group] = invalid
            categories[group] = []
        end if
        
        categories[group].push(channel)
    end for
    
    return categories
end function

function GetCategoryNames(categories as object) as object
    names = []
    for each key in categories
        names.push(key)
    end for
    return names
end function

function FilterChannelsByCategory(channels as object, category as string) as object
    filtered = []
    
    for each channel in channels
        group = channel.group
        if group = "" or group = invalid then group = "Uncategorized"
        
        if group = category
            filtered.push(channel)
        end if
    end for
    
    return filtered
end function

function GetCategoryCount(channels as object, category as string) as integer
    count = 0
    
    for each channel in channels
        group = channel.group
        if group = "" or group = invalid then group = "Uncategorized"
        
        if group = category then count = count + 1
    end for
    
    return count
end function
