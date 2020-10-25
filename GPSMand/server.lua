--[[

██████		██████		███████████████████████
██████		██████		███████████████████████
██████		██████				██████
██████		██████				██████	
██████████████████				██████
██████████████████				██████
██████		██████				██████
██████		██████				██████
██████		██████				██████
██████		██████				██████
██████		██████				██████
██████		██████				██████

]]--

local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP", "Silencer")

MissionIgang1 = false

RegisterNetEvent('VR:TjekkerStatus1')
RegisterNetEvent('VR:Startet1')
RegisterNetEvent('VR:Startet2')
RegisterNetEvent('VR:Startet3')

AddEventHandler('VR:TjekkerStatus1', function()
    local source = source
    TriggerClientEvent("VR:okay1", source)
    TriggerClientEvent("VR:silencer", source)
    TriggerClientEvent('VR:StatusUpdate1', source, MissionIgang1)
    TriggerClientEvent('VR:StatusUpdate3', source, MissionIgang1)
end)

AddEventHandler('VR:Startet1', function()
    local source = source
    local user_id = vRP.getUserId({source})
	MissionIgang1 = true
    TriggerClientEvent('VR:StatusUpdate1', -1, MissionIgang1)
    vRP.request({source, "Vil du købe en GPS " .. cfg.gps1 .. "kr?" ,8,function(source,ok)
		if ok then
            if vRP.tryFullPayment({user_id,cfg.gps1}) then
                TriggerClientEvent('VR:Spawnlev1', -1)
                -- TriggerClientEvent('VR:LevStartBuy1', source)
                vRP.giveInventoryItem({user_id,"gps8",1,true})
            end
            MissionIgang1 = false
            TriggerClientEvent('VR:StatusUpdate1', -1, MissionIgang1)
        else
            MissionIgang1 = false
            TriggerClientEvent('VR:StatusUpdate1', -1, MissionIgang1)
        end
	end})
end)

vRP.defInventoryItem({"gps8","Gps", "Gps til en mand", function()
	
	local choices = {}
	
	choices["> Brug"] = {function(player,choice,mod)
		local user_id = vRP.getUserId({player})
        if user_id ~= nil then
            TriggerClientEvent("VR:LevStartBuy1", player)
            if vRP.tryGetInventoryItem({user_id,"gps8", 1}) then
                vRP.closeMenu({player})
            else
            end
        end
    end}
	return choices
end, 1.50})

-- GPS

MissionIgang = false

RegisterNetEvent('VR:TjekkerStatus')
RegisterNetEvent('VR:Startet')

AddEventHandler('VR:TjekkerStatus', function()
    local source = source
    TriggerClientEvent("VR:okay", source)
    TriggerClientEvent('VR:StatusUpdate', source, MissionIgang)
end)

AddEventHandler('VR:Startet', function()
    local source = source
    local user_id = vRP.getUserId({source})
	MissionIgang1 = true
    TriggerClientEvent('VR:StatusUpdate1', -1, MissionIgang1)
    vRP.request({source, "Vil du købe GPS til en bil " .. cfg.gps2 .. "kr?" ,8,function(source,ok)
		if ok then
            if vRP.tryFullPayment({user_id,cfg.gps2}) then
                TriggerClientEvent('VR:Spawnlev', -1)
                -- TriggerClientEvent('VR:LevStartBuy', source)
                vRP.giveInventoryItem({user_id,"bilgps",1,true})
            end
            MissionIgang1 = false
            TriggerClientEvent('VR:StatusUpdate1', -1, MissionIgang1)
        else
            MissionIgang1 = false
            TriggerClientEvent('VR:StatusUpdate1', -1, MissionIgang1)
        end
	end})
end)

AddEventHandler('VR:Startet3', function()
    local source = source
    local user_id = vRP.getUserId({source})
	MissionIgang1 = true
    TriggerClientEvent('VR:StatusUpdate3', -1, MissionIgang1)
    vRP.request({source, "Vil du 100 Joints For:  " .. cfg.jointpsris .. "kr?" ,8,function(source,ok)
		if ok then
            if vRP.tryFullPayment({user_id,cfg.jointpsris}) then
                TriggerClientEvent('VR:Spawnlev3', -1)
                -- TriggerClientEvent('VR:LevStartBuy3', source)
                vRP.giveInventoryItem({user_id,"joint",100,true})
            end
            MissionIgang1 = false
            TriggerClientEvent('VR:StatusUpdate3', -1, MissionIgang1)
        else
            MissionIgang1 = false
            TriggerClientEvent('VR:StatusUpdate3', -1, MissionIgang1)
        end
	end})
end)


vRP.defInventoryItem({"bilgps","BilGps", "En GPS til en bil", function()
	
	local choices = {}
	
	choices["> Brug"] = {function(player,choice,mod)
		local user_id = vRP.getUserId({player})
        if user_id ~= nil then
            TriggerClientEvent("VR:LevStartBuy3", player)
            if vRP.tryGetInventoryItem({user_id,"bilgps", 1}) then
                vRP.closeMenu({player})
            else
            end
        end
    end}
	return choices
end, 1.50})