' MoviesScreen.brs - Movies browsing screen logic

sub Init()
    m.movieGrid = m.top.findNode("movieGrid")
    m.heroSection = m.top.findNode("heroSection")
    m.heroImage = m.top.findNode("heroImage")
    m.heroTitle = m.top.findNode("heroTitle")
    m.heroYear = m.top.findNode("heroYear")
    m.heroRating = m.top.findNode("heroRating")
    m.heroGenre = m.top.findNode("heroGenre")
    m.loadingGroup = m.top.findNode("loadingGroup")
    m.errorLabel = m.top.findNode("errorLabel")
    m.categoryMenu = m.top.findNode("categoryMenu")
    m.categoryList = m.top.findNode("categoryList")
    
    m.movieGrid.observeField("itemSelected", "onMovieSelected")
    m.movieGrid.observeField("itemFocused", "onMovieFocused")
    m.categoryList.observeField("itemSelected", "onCategorySelected")
    
    m.movies = []
    m.allMovies = []
    m.categories = []
    m.currentCategory = "All"
    m.moviesByCategory = {}
    m.currentHeroIndex = 0
    m.currentView = "grid"
    m.isLoaded = false
    
    ' Hero auto-scroll timer
    m.heroTimer = CreateObject("roSGNode", "Timer")
    m.heroTimer.duration = 8
    m.heroTimer.repeat = true
    m.heroTimer.observeField("fire", "onHeroTimerFire")
end sub

sub onVisibleChange()
    if m.top.visible and not m.isLoaded
        LoadMovies()
    end if
    
    if m.top.visible
        m.heroTimer.control = "start"
    else
        m.heroTimer.control = "stop"
    end if
end sub

sub LoadMovies()
    m.loadingGroup.visible = true
    m.movieGrid.visible = false
    m.heroSection.visible = false
    
    m.loaderTask = CreateObject("roSGNode", "MovieLoaderTask")
    m.loaderTask.server = m.top.xtreamServer
    m.loaderTask.username = m.top.xtreamUsername
    m.loaderTask.password = m.top.xtreamPassword
    m.loaderTask.observeField("movies", "onMoviesLoaded")
    m.loaderTask.observeField("error", "onLoadError")
    m.loaderTask.control = "RUN"
end sub

sub onMoviesLoaded()
    result = m.loaderTask.movies
    if result = invalid
        ShowError("Failed to load movies")
        return
    end if
    
    m.moviesByCategory = result.moviesByCategory
    m.categories = ["All"]
    
    ' Build category list
    for each catName in m.moviesByCategory
        m.categories.Push(catName)
    end for
    
    ' Build flat list of all movies
    m.allMovies = []
    for each catName in m.moviesByCategory
        for each movie in m.moviesByCategory[catName]
            m.allMovies.Push(movie)
        end for
    end for
    
    m.movies = m.allMovies
    m.isLoaded = true
    
    DisplayMovies()
end sub

sub onLoadError()
    error = m.loaderTask.error
    ShowError(error)
end sub

sub ShowError(message as string)
    m.loadingGroup.visible = false
    m.errorLabel.text = message
    m.errorLabel.visible = true
end sub

sub DisplayMovies()
    m.loadingGroup.visible = false
    m.errorLabel.visible = false
    
    if m.movies.Count() > 0
        UpdateHeroBanner(0)
        m.heroSection.visible = true
        m.heroTimer.control = "start"
    end if
    
    ' Create content for RowList
    content = CreateObject("roSGNode", "ContentNode")
    
    if m.currentCategory = "All"
        ' Show movies grouped by category
        for each catName in m.moviesByCategory
            row = content.createChild("ContentNode")
            row.title = catName
            
            movies = m.moviesByCategory[catName]
            maxPerRow = 20
            if movies.Count() < maxPerRow then maxPerRow = movies.Count()
            
            for i = 0 to maxPerRow - 1
                movie = movies[i]
                item = row.createChild("ContentNode")
                item.title = movie.title
                item.hdPosterUrl = movie.imageUrl
                item.rating = movie.rating
                item.url = movie.url
                item.addFields({movieData: movie})
            end for
        end for
    else
        ' Show single category
        movies = m.moviesByCategory[m.currentCategory]
        if movies <> invalid and movies.Count() > 0
            row = content.createChild("ContentNode")
            row.title = m.currentCategory
            
            for each movie in movies
                item = row.createChild("ContentNode")
                item.title = movie.title
                item.hdPosterUrl = movie.imageUrl
                item.rating = movie.rating
                item.url = movie.url
                item.addFields({movieData: movie})
            end for
        end if
    end if
    
    m.movieGrid.content = content
    m.movieGrid.visible = true
    m.movieGrid.setFocus(true)
    m.currentView = "grid"
end sub

sub UpdateHeroBanner(index as integer)
    if m.movies.Count() = 0 then return
    if index < 0 or index >= m.movies.Count() then index = 0
    
    movie = m.movies[index]
    m.heroTitle.text = movie.title
    m.heroYear.text = movie.year
    if movie.rating <> invalid and movie.rating <> ""
        m.heroRating.text = "★ " + movie.rating
    else
        m.heroRating.text = ""
    end if
    m.heroGenre.text = movie.categoryName
    
    if movie.imageUrl <> invalid and movie.imageUrl <> ""
        m.heroImage.uri = movie.imageUrl
    end if
    
    m.currentHeroIndex = index
end sub

sub onHeroTimerFire()
    if m.movies.Count() > 0 and m.currentView = "grid"
        m.currentHeroIndex = (m.currentHeroIndex + 1) mod m.movies.Count()
        UpdateHeroBanner(m.currentHeroIndex)
    end if
end sub

sub onMovieFocused(event as object)
    focusedIndex = event.getData()
    if type(focusedIndex) = "roArray" and focusedIndex.Count() >= 2
        rowIndex = focusedIndex[0]
        itemIndex = focusedIndex[1]
        
        ' Calculate overall index for hero
        content = m.movieGrid.content
        if content <> invalid and rowIndex >= 0 and rowIndex < content.getChildCount()
            row = content.getChild(rowIndex)
            if row <> invalid and itemIndex >= 0 and itemIndex < row.getChildCount()
                item = row.getChild(itemIndex)
                if item <> invalid
                    ' Update hero to focused movie
                    for i = 0 to m.movies.Count() - 1
                        if m.movies[i].title = item.title
                            UpdateHeroBanner(i)
                            exit for
                        end if
                    end for
                end if
            end if
        end if
    end if
end sub

sub onMovieSelected(event as object)
    selection = event.getData()
    if type(selection) = "roArray" and selection.Count() >= 2
        rowIndex = selection[0]
        itemIndex = selection[1]
        
        content = m.movieGrid.content
        if content <> invalid and rowIndex >= 0 and rowIndex < content.getChildCount()
            row = content.getChild(rowIndex)
            if row <> invalid and itemIndex >= 0 and itemIndex < row.getChildCount()
                item = row.getChild(itemIndex)
                if item <> invalid
                    m.top.movieSelected = item.movieData
                end if
            end if
        end if
    end if
end sub

sub ShowCategories()
    m.categoryMenu.visible = true
    
    content = CreateObject("roSGNode", "ContentNode")
    for each cat in m.categories
        item = content.createChild("ContentNode")
        item.title = cat
    end for
    
    m.categoryList.content = content
    m.categoryList.setFocus(true)
    m.currentView = "categories"
end sub

sub HideCategories()
    m.categoryMenu.visible = false
    m.movieGrid.setFocus(true)
    m.currentView = "grid"
end sub

sub onCategorySelected(event as object)
    index = event.getData()
    if index >= 0 and index < m.categories.Count()
        m.currentCategory = m.categories[index]
        
        if m.currentCategory = "All"
            m.movies = m.allMovies
        else
            m.movies = m.moviesByCategory[m.currentCategory]
            if m.movies = invalid then m.movies = []
        end if
        
        HideCategories()
        DisplayMovies()
    end if
end sub

function onKeyEvent(key as string, press as boolean) as boolean
    if not press then return false
    
    if m.currentView = "categories"
        if key = "back"
            HideCategories()
            return true
        end if
    else if m.currentView = "grid"
        if key = "replay"
            ShowCategories()
            return true
        end if
    end if
    
    return false
end function
