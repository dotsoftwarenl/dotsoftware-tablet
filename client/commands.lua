Citizen.CreateThread(function()
    if Config["Tablet"]["EnableMeos"] and Config["Commands"]["Meos"]["Enabled"] then
        RegisterCommand(Config["Commands"]["Meos"]["command"], function(source, args, rawCommand)
            if not tabletOpen then
                OpenTablet('Police')
            end
        end, false)
    end
    if Config["Tablet"]["EnableEpd"] and Config["Commands"]["Epd"]["Enabled"] then
        RegisterCommand(Config["Commands"]["Epd"]["command"], function(source, args, rawCommand)
            if not tabletOpen then
                OpenTablet('Epd')
            end
        end, false)
    end
end)

