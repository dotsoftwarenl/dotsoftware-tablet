 -- // Event \\ --
 RegisterNetEvent('dotsoftware:meos:trigger')
 AddEventHandler('dotsoftware:meos:trigger', function()
    if Config["Tablet"]["EnableMeos"] then
        if not tabletOpen then
            OpenTablet('Police')
            tabletOpen = true
        else
            CloseTablet()
            tabletOpen = false
        end
    end
 end)

 RegisterNetEvent('dotsoftware:epd:trigger')
 AddEventHandler('dotsoftware:epd:trigger', function()
    if Config["Tablet"]["EnableEpd"] then
        if not tabletOpen then
            OpenTablet('Epd')
            tabletOpen = true
        else
            CloseTablet()
            tabletOpen = false
        end
    end
 end)