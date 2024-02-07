require('windowmovements')

function reloadConfig(files)
    doReload = false
    for _,file in pairs(files) do
        if file:sub(-4) == ".lua" then
            doReload = true
        end
    end
    if doReload then
        hs.reload()
        hs.alert.show("Config loaded")
    end
end
myWatcher = hs.pathwatcher.new(os.getenv("HOME") .. "/.config/hammerspoon/", reloadConfig):start()

hs.application.enableSpotlightForNameSearches(true)

hs.loadSpoon("AppLauncher")
spoon.AppLauncher:bindHotkeys({
    c = "Calendar",
    n = "Notes",
    b = "Google Chrome",
    w = "Whatsapp",
    z = "Zoom.us",
    f = "Finder",
    o = "Obsidia",
    m = "Spotify",
  })
