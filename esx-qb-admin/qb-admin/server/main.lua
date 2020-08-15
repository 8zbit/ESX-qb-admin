-- For Help - ilAn#9613
-- For Help - ilAn#9613
-- For Help - ilAn#9613
-- For Help - ilAn#9613
-- For Help - ilAn#9613
-- For Help - ilAn#9613
-- For Help - ilAn#9613


ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local permissions = {
    ["kick"] = "admin",
    ["ban"] = "admin",
    ["noclip"] = "admin",
    ["kickall"] = "admin",
}

RegisterServerEvent('qb-admin:server:togglePlayerNoclip')
AddEventHandler('qb-admin:server:togglePlayerNoclip', function(playerId, reason)
    local src = source
        TriggerClientEvent("qb-admin:client:toggleNoclip", playerId)
end)

RegisterServerEvent('qb-admin:server:killPlayer')
AddEventHandler('qb-admin:server:killPlayer', function(playerId)
    TriggerClientEvent('hospital:client:KillPlayer', playerId)
end)

RegisterServerEvent('qb-admin:server:Freeze')
AddEventHandler('qb-admin:server:Freeze', function(playerId, toggle)
    TriggerClientEvent('qb-admin:client:Freeze', playerId, toggle)
end)

RegisterServerEvent('qb-admin:server:revivePlayer')
AddEventHandler('qb-admin:server:revivePlayer', function(target)
	TriggerClientEvent('hospital:client:Revive', target)
end)

RegisterServerEvent('qb-admin:server:bringTp')
AddEventHandler('qb-admin:server:bringTp', function(targetId, coords)
    TriggerClientEvent('qb-admin:client:bringTp', targetId, coords)
end)

TriggerEvent('es:addGroupCommand', 'menu', "superadmin", function(source, args, user)
    TriggerClientEvent('qb-admin:client:openMenu', source, group, dealers)
end)