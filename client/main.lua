tabletOpen, CurrentProp = false, nil

RegisterCommand("meos", function(source, args, rawCommand)
    if not tabletOpen then
        OpenPoliceTablet()
    end
end, false)

RegisterNUICallback('CloseTablet', function(data)
    ClosePoliceTablet()
end)

-- // Functions \\ --
OpenPoliceTablet = function()
    AddPropToPed()
    loadAnimDict('amb@code_human_in_bus_passenger_idles@female@tablet@base')
    TaskPlayAnim(GetPlayerPed(-1), "amb@code_human_in_bus_passenger_idles@female@tablet@base", "base", 3.0, 3.0, -1, 49, 0, 0, 0, 0)
    tabletOpen = true
    SetNuiFocus(true, true)
    SendNUIMessage({
        action = 'OpenTablet',
    })
end

ClosePoliceTablet = function()
    DeleteEntity(CurrentProp)
    ClearPedTasks(GetPlayerPed(-1))
    SetNuiFocus(false, false)
    tabletOpen = false
end

AddPropToPed = function()
    RequestModelHash('prop_cs_tablet')
    CurrentProp = CreateObject(GetHashKey('prop_cs_tablet'), 0, 0, 0, true, false, false)
    local PropNetId = ObjToNet(CurrentProp)
    SetNetworkIdExistsOnAllMachines(PropNetId, true)
    SetNetworkIdCanMigrate(NetworkGetNetworkIdFromEntity(CurrentProp), true)
    AttachEntityToEntity(CurrentProp, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 60309), 0.03, 0.002, -0.0, 0.0, 160.0, 0.0, true, true, false, true, 1, true)
end

loadAnimDict = function(dict)
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        Citizen.Wait(1)
    end
end

RequestModelHash = function(Model)
    RequestModel(Model)
    while not HasModelLoaded(Model) do
        Citizen.Wait(1)
    end
 end

 -- // Event \\ --
 RegisterNetEvent('dotsoftware:meos:trigger')
 AddEventHandler('dotsoftware:meos:trigger', function()
    if not tabletOpen then
        OpenPoliceTablet()
        tabletOpen = true
    else
        ClosePoliceTablet()
        tabletOpen = false
    end
 end)