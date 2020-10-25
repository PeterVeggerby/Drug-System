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

NpcSpawn1 = false
MissionIgang1 = false

TriggerServerEvent('VR:TjekkerStatus1')

-- Citizen.CreateThread(function()
-- 	while true do
-- 		Citizen.Wait(1)
-- 		if GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), cfg.BilMandCords.x, cfg.BilMandCords.y, cfg.BilMandCords.z, true ) < 1 then
-- 			if MissionIgang1 == false then
-- 				DrawText3D(cfg.BilMandCords.x, cfg.BilMandCords.y, cfg.BilMandCords.z+0.4, "[~g~E~w~] Køb BilGps")
-- 				if(IsControlJustReleased(1, 38))then
-- 					TriggerServerEvent('VR:Startet')
-- 					Citizen.Wait(200)
-- 				end
-- 			end
-- 		end
-- 	end
-- end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		if GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), cfg.GpsCords.x, cfg.GpsCords.y, cfg.GpsCords.z, true ) < 1 then
			if MissionIgang1 == false then
				DrawText3D(cfg.GpsCords.x, cfg.GpsCords.y, cfg.GpsCords.z+0.4, "[~g~E~w~] Køb GPS")
				if(IsControlJustReleased(1, 38))then
					TriggerServerEvent('VR:Startet1')
					Citizen.Wait(200)
				end
			else
				MissionIgang1 = true
				DrawText3D(cfg.GpsCords.x, cfg.GpsCords.y, cfg.GpsCords.z+0.4, "~r~Optaget")
			end
		end
	end
end)

NpcSpawn2 = false

--Citizen.CreateThread(function()
--	if NpcSpawn2 == false then
--	RequestModel(GetHashKey('s_m_y_dealer_01'))
--	while not HasModelLoaded('s_m_y_dealer_01') do
--		Citizen.Wait(100)
--	end
--	QuestGiver = CreatePed(4, 0xE497BBEF, cfg.JointMan.x, cfg.JointMan.y, cfg.JointMan.z-1.0, cfg.JointMan.h, false, true)
--	SetEntityHeading(QuestGiver, cfg.JointMan.h)
--	FreezeEntityPosition(QuestGiver, true) -- Fryser postion 
--	SetEntityInvincible(QuestGiver, true) -- Godmode
--	SetBlockingOfNonTemporaryEvents(QuestGiver, true) -- Jeg Ved Det Ikke...
--	RequestAnimDict('mini@strip_club@idles@bouncer@base') -- mini@strip_club@idles@bouncer@base
--	while not HasAnimDictLoaded('mini@strip_club@idles@bouncer@base') do
--		Citizen.Wait(100)
--	end
--	TaskPlayAnim(QuestGiver, 'mini@strip_club@idles@bouncer@base', 'base', 8.0, 8.0, -1, 1, 0, 0, 0, 0)
--	NpcSpawn2 = true
--end
--end)

Citizen.CreateThread(function()
	if NpcSpawn1 == false then
	RequestModel(GetHashKey('ig_ballasog'))
	while not HasModelLoaded('ig_ballasog') do
		Citizen.Wait(100)
	end
	QuestGiver = CreatePed(4, 0xA70B4A92, cfg.GpsCords.x, cfg.GpsCords.y, cfg.GpsCords.z-1.0, cfg.GpsCords.h, false, true)
	SetEntityHeading(QuestGiver, cfg.GpsCords.h)
	FreezeEntityPosition(QuestGiver, true) -- Fryser postion 
	SetEntityInvincible(QuestGiver, true) -- Godmode
	SetBlockingOfNonTemporaryEvents(QuestGiver, true) -- Jeg Ved Det Ikke...
	RequestAnimDict('mini@strip_club@idles@bouncer@base') -- mini@strip_club@idles@bouncer@base
	while not HasAnimDictLoaded('mini@strip_club@idles@bouncer@base') do
		Citizen.Wait(100)
	end
	TaskPlayAnim(QuestGiver, 'mini@strip_club@idles@bouncer@base', 'base', 8.0, 8.0, -1, 1, 0, 0, 0, 0)
	NpcSpawn1 = true
end
end)

NpcSpawn = false
VehSpawn = false
NpcSpawn4 = false

AddEventHandler('VR:LevStartBuy1', function()
	if NpcSpawn4 == false then
		RequestModel(GetHashKey('s_m_y_dealer_01'))
		while not HasModelLoaded('s_m_y_dealer_01') do
			Citizen.Wait(100)
		end
		QuestGiver = CreatePed(4, 0xE497BBEF, cfg.JointMan.x, cfg.JointMan.y, cfg.JointMan.z-1.0, cfg.JointMan.h, false, true)
		SetEntityHeading(QuestGiver, cfg.JointMan.h)
		FreezeEntityPosition(QuestGiver, true) -- Fryser postion 
		SetEntityInvincible(QuestGiver, true) -- Godmode
		SetBlockingOfNonTemporaryEvents(QuestGiver, true) -- Jeg Ved Det Ikke...
		RequestAnimDict('mini@strip_club@idles@bouncer@base') -- mini@strip_club@idles@bouncer@base
		while not HasAnimDictLoaded('mini@strip_club@idles@bouncer@base') do
			Citizen.Wait(100)
		end
		TaskPlayAnim(QuestGiver, 'mini@strip_club@idles@bouncer@base', 'base', 8.0, 8.0, -1, 1, 0, 0, 0, 0)
		NpcSpawn4 = true
	end
end)

AddEventHandler('VR:LevStartBuy1', function()
	while true do
		Citizen.Wait(1)
		if GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), cfg.JointMan.x, cfg.JointMan.y, cfg.JointMan.z, true ) < 1 then
			if MissionIgang1 == false then
				DrawText3D(cfg.JointMan.x, cfg.JointMan.y, cfg.JointMan.z+0.4, "[~g~E~w~] Køb Joints ~r~60.000~w~ Stk")
				if(IsControlJustReleased(1, 38))then
					TriggerServerEvent('VR:Startet3')
					Citizen.Wait(200)
				end
			end
		end
	end
end)

AddEventHandler("VR:LevStartBuy", function()
	local car = {1475773103}
	local spiller = PlayerPedId()
	if VehSpawn == false then
		RequestModel(GetHashKey('Rumpo'))
		while not HasModelLoaded('Rumpo') do
			Citizen.Wait(100)
		end
	vehicle = CreateVehicle(1162065741, cfg.BilCords.x, cfg.BilCords.y, cfg.BilCords.z, cfg.BilCords.h, true, false)
	SetEntityHeading(vehicle, cfg.BilCords.h)
	SetVehicleOnGroundProperly(vehicle)
	SetEntityInvincible(vehicle,false)
	SetVehicleNumberPlateText(vehicle, "")
	SetEntityAsMissionEntity(vehicle, true, true) 
	SetModelAsNoLongerNeeded(car)
	-- SetPedIntoVehicle(GetPlayerPed(-1),vehicle,-1)
	SetEntityVisible(vehicle, true, false)	
	FreezeEntityPosition(spiller, false)
	Citizen.Wait(200)
	-- SetVehicleNumberPlateText(vehicle, "Rental")
	VehSpawn = true
	end
end)

AddEventHandler('VR:LevStartBuy1', function()
	while true do
		Citizen.Wait(1)
		if GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), cfg.BilMandCords.x, cfg.BilMandCords.y, cfg.BilMandCords.z, true ) < 1 then
			if MissionIgang1 == false then
				DrawText3D(cfg.BilMandCords.x, cfg.BilMandCords.y, cfg.BilMandCords.z+0.4, "[~g~E~w~] Køb BilGps")
				if(IsControlJustReleased(1, 38))then
					TriggerServerEvent('VR:Startet')
					Citizen.Wait(200)
				end
			end
		end
	end
end)

AddEventHandler('VR:LevStartBuy1', function()
	if NpcSpawn == false then
	RequestModel(GetHashKey('hc_gunman'))
	while not HasModelLoaded('hc_gunman') do
		Citizen.Wait(100)
	end
	QuestGiver = CreatePed(4, 0x0B881AEE, cfg.BilMandCords.x, cfg.BilMandCords.y, cfg.BilMandCords.z-0.8, cfg.BilMandCords.h, false, true)
	SetEntityHeading(QuestGiver, cfg.BilMandCords.h)
	FreezeEntityPosition(QuestGiver, true) -- Fryser postion 
	SetEntityInvincible(QuestGiver, true) -- Godmode
	SetBlockingOfNonTemporaryEvents(QuestGiver, true) -- Jeg Ved Det Ikke...
	RequestAnimDict('mini@strip_club@idles@bouncer@base') -- mini@strip_club@idles@bouncer@base
	while not HasAnimDictLoaded('mini@strip_club@idles@bouncer@base') do
		Citizen.Wait(100)
	end
	TaskPlayAnim(QuestGiver, 'mini@strip_club@idles@bouncer@base', 'base', 8.0, 8.0, -1, 1, 0, 0, 0, 0)
	NpcSpawn = true
end
end)

RegisterNetEvent('VR:okay1')
RegisterNetEvent('VR:silencer')
RegisterNetEvent('VR:LevStartBuy1')
RegisterNetEvent('VR:Spawnlev1')
RegisterNetEvent('VR:Spawnlev3')
RegisterNetEvent('VR:Spawnlev4')

RegisterCommand("test", function()
	TriggerServerEvent("VR:Startet")
end)
RegisterCommand("test1", function()
	TriggerServerEvent("VR:Startet1")
end)

NpcSpawn = false
MissionIgang = false

TriggerServerEvent('VR:TjekkerStatus')

RegisterNetEvent('VR:okay')
RegisterNetEvent('VR:LevStartBuy')
RegisterNetEvent('VR:Spawnlev')

AddEventHandler('VR:LevStartBuy', function()
	exports['kaz_progressbar']:startUI(5000, "Finder Gpsen")
	TaskStartScenarioInPlace(PlayerPedId(), 'WORLD_HUMAN_STAND_MOBILE', 0, true)
	Citizen.Wait(5000)
	ClearPedTasksImmediately(GetPlayerPed(-1))
	Citizen.Wait(1)
	SetNewWaypoint(cfg.JointMan.x, cfg.JointMan.y, cfg.JointMan.z-1.0)
end)

AddEventHandler('VR:LevStartBuy1', function()
	exports['kaz_progressbar']:startUI(5000, "Finder Gpsen")
	TaskStartScenarioInPlace(PlayerPedId(), 'WORLD_HUMAN_STAND_MOBILE', 0, true)
	Citizen.Wait(5000)
	ClearPedTasksImmediately(GetPlayerPed(-1))
	Citizen.Wait(1)
	SetNewWaypoint(cfg.BilMandCords.x, cfg.BilMandCords.y, cfg.BilMandCords.z-1.0, cfg.BilMandCords.h)
end)

function DrawText3D(x, y, z, text)
	local onScreen, _x, _y = World3dToScreen2d(x, y, z)
	local px, py, pz = table.unpack(GetGameplayCamCoords())
	SetTextScale(0.35, 0.35)
	SetTextFont(4)
	SetTextProportional(1)
	SetTextColour(255, 255, 255, 215)
	SetTextEntry("STRING")
	SetTextCentre(1)
	AddTextComponentString(text)
	DrawText(_x, _y)
	local factor = (string.len(text)) / 370
	DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 0, 0, 0, 100)
  end
