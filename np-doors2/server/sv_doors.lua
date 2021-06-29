ESX = nil
local doorState = {}

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('shx-doors:alterlockstate')
AddEventHandler('shx-doors:alterlockstate', function(alterNum)
    if NP.DoorCoords[alterNum]["lock"] == 0 then
        NP.DoorCoords[alterNum]["lock"] = 1
    else
        NP.DoorCoords[alterNum]["lock"] = 0
    end
    TriggerClientEvent("shx-door:alterState",-1,alterNum,NP.DoorCoords[alterNum]["lock"])
end)