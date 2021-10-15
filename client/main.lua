local CurrentActionData, PlayerData, userProperties, this_Garage, vehInstance, BlipList, PrivateBlips, JobBlips = {}, {}, {}, {}, {}, {}, {}, {}
local HasAlreadyEnteredMarker = false
local LastZone, CurrentAction, CurrentActionMsg
local isInMarker, letSleep, currentZone = false, true

ESX = nil

-- Initialization
Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end
	ESX.PlayerData = ESX.GetPlayerData()
	CreateBlips()
end)

local function has_value (tab, val)
	for index, value in ipairs(tab) do
		if value == val then
			return true
		end
	end
	return false
end

-- Job Change Event
RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
    ESX.PlayerData.job = job
	DeleteBlips()
	CreateBlips()
end)

--Player Loaded Event
RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    RefreshPrivateBlips()
end)

--Get Garages Command
RegisterNetEvent('esx_sna_garages:getGarages')
AddEventHandler('esx_sna_garages:getGarages', function(xPlayer)
    RefreshPrivateBlips()
end)

-- Enter / Exit marker events & Draw Markers
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
        isInMarker, letSleep = false, true
--		local isInMarker, letSleep, currentZone = false, true
        for _, v in pairs(Config.Parkings) do
            if v.Job == 'civ' then
                DessMarker(v.Locations.Marker, Config.Main.Markers.Points, 'gar', v.Job, v)
                DessMarker(v.Locations.Deleter, Config.Main.Markers.Delete, 'sto', v.Job, v)
                if v.UsePounds then
                    DessMarker(v.Pound.Marker, Config.Main.Markers.Pounds, 'pou', v.Job, v)
                end
            else
                if ESX.PlayerData.job and ESX.PlayerData.job.name == v.Job then
                    DessMarker(v.Locations.Marker, Config.Main.Markers.Points, 'gar', v.Job, v)
                    DessMarker(v.Locations.Deleter, Config.Main.Markers.Delete, 'sto', v.Job, v)
                    if v.UsePounds then
                        DessMarker(v.Pound.Marker, Config.Main.Markers.Pounds, 'pou', v.Job, v)
                    end
                end
            end
        end   
        for _, v in pairs(Config.PrivateGarages) do
            if not v.Private or has_value(userProperties, v.Private) then
                DessMarker(v.Locations.Marker, Config.Main.Markers.Points, 'gar', 'civ', v)
                DessMarker(v.Locations.Deleter, Config.Main.Markers.Delete, 'sto', 'civ', v)
           end
        end   

		if (isInMarker and not HasAlreadyEnteredMarker) or (isInMarker and LastZone ~= currentZone) then
			HasAlreadyEnteredMarker, LastZone = true, currentZone
			LastZone = currentZone
			TriggerEvent('esx_sna_garages:hasEnteredMarker', currentZone)
		end

		if not isInMarker and HasAlreadyEnteredMarker then
			HasAlreadyEnteredMarker = false
			TriggerEvent('esx_sna_garages:hasExitedMarker', LastZone)
		end

		if letSleep then
			Citizen.Wait(500)
		end
    end
end)

function DessMarker(location, marker, type, job, data)
    local playerCoords = GetEntityCoords(PlayerPedId())
    local distance = GetDistanceBetweenCoords(playerCoords, location.x, location.y, location.z, true)

    if distance < Config.Main.DrawDistance then
        letSleep = false
        if marker.Type ~= -1 then
            DrawMarker(marker.Type, location, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, marker.x, marker.y, marker.z, marker.r, marker.g, marker.b, 100, false, true, 2, false, nil, nil, false)
        end
        if distance < marker.x then
            isInMarker, this_Garage, currentZone = true, data, type..'_'..job
        end
    end
end

-- Check Vehicles
function DoesAPlayerDrivesVehicle(plate)
	local isVehicleTaken = false
	local players = ESX.Game.GetPlayers()
	for i=1, #players, 1 do
		local target = GetPlayerPed(players[i])
		if target ~= PlayerPedId() then
			local plate1 = GetVehicleNumberPlateText(GetVehiclePedIsIn(target, true))
			local plate2 = GetVehicleNumberPlateText(GetVehiclePedIsIn(target, false))
			if plate == plate1 or plate == plate2 then
				isVehicleTaken = true
				break
			end
		end
	end
	return isVehicleTaken
end

-- Entered Marker
AddEventHandler('esx_sna_garages:hasEnteredMarker', function(zone)
    local loc = string.sub(zone, 1, 3)
    if loc == 'gar' then
        CurrentActionMsg = _U('press_to_enter')
    elseif loc == 'sto' then
        CurrentActionMsg = _U('press_to_delete')
    elseif loc == 'pou' then
        CurrentActionMsg = _U('press_to_impound')
    end
    CurrentAction = zone
end)
-- Exited Marker
AddEventHandler('esx_sna_garages:hasExitedMarker', function()
	ESX.UI.Menu.CloseAll()
	CurrentAction = nil
end)
-- Resource Stop
AddEventHandler('onResourceStop', function(resource)
	if resource == GetCurrentResourceName() then
		ESX.UI.Menu.CloseAll()
	end
end)

-- Key Controls
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		local playerPed = GetPlayerPed(-1)
		local playerVeh = GetVehiclePedIsIn(playerPed, false)
		local model = GetEntityModel(playerVeh)

		if CurrentAction then
			ESX.ShowHelpNotification(CurrentActionMsg)

			if IsControlJustReleased(0, 38) then
                local loc = string.sub(CurrentAction, 1, 3)
                local job = string.sub(CurrentAction, 5, string.len(CurrentAction))
                if ESX.PlayerData.job and ESX.PlayerData.job.name == job or job == 'civ' then
                    if loc == 'gar' then
						if not IsPedSittingInAnyVehicle(PlayerPedId()) then
							OpenGarageMenu(job)
						else
							ESX.ShowNotification(_U('cant_in_veh'))
						end
                    elseif loc == 'sto' then
                        if (GetPedInVehicleSeat(playerVeh, -1) == playerPed) then
                            if this_Garage.VehicleType == 0 then
                                if IsThisModelACar(model) or IsThisModelABicycle(model) or IsThisModelABike(model) then
                                    StoreOwnedMenu(job)
                                else
                                    ESX.ShowNotification(_U('not_correct_veh'))
                                end
                            elseif this_Garage.VehicleType == 1 then
                                if  not IsThisModelACar(model) and 
                                    not IsThisModelABicycle(model) and 
                                    not IsThisModelABike(model) and 
                                    not IsThisModelAPlane(model) and 
                                    not IsThisModelAHeli(model) then
                                    StoreOwnedMenu(job)
                                else
                                    ESX.ShowNotification(_U('not_correct_veh'))
                                end
                            else
                                if IsThisModelAPlane(model) or IsThisModelAHeli(model) then
                                    StoreOwnedMenu(job)
                                else
                                    ESX.ShowNotification(_U('not_correct_veh'))
                                end
                            end
                        else
                            ESX.ShowNotification(_U('driver_seat'))
                        end
                    elseif loc == 'pou' then
						if not IsPedSittingInAnyVehicle(PlayerPedId()) then
							OpenImpoundMenu(job)
						else
							ESX.ShowNotification(_U('cant_in_veh'))
						end
                    end
                end
            end
        end
    end
end)

-- Store menu
function StoreOwnedMenu(job)
	local playerPed  = GetPlayerPed(-1)

	if IsPedInAnyVehicle(playerPed,  false) then
		local playerPed = GetPlayerPed(-1)
		local coords = GetEntityCoords(playerPed)
		local vehicle = GetVehiclePedIsIn(playerPed, false)
		local vehicleProps = ESX.Game.GetVehicleProperties(vehicle)
		local current = GetPlayersLastVehicle(GetPlayerPed(-1), true)
		local engineHealth = GetVehicleEngineHealth(current)
		local plate = vehicleProps.plate

		ESX.TriggerServerCallback('esx_sna_garages:storeVehicle', function(valid)
			if valid then
				if engineHealth < 990 and not this_Garage.StoreDamaged then
					local apprasial = math.floor((1000 - engineHealth)/1000*this_Garage.PoundPrice*this_Garage.MultAmount)
					RepairVehicle(apprasial, vehicle, vehicleProps)
				else
					StoreVehicle(vehicle, vehicleProps)
				end	
			else
				ESX.ShowNotification(_U('cannot_store_vehicle'))
			end
		end, vehicleProps, job)
	else
		ESX.ShowNotification(_U('no_vehicle_to_enter'))
	end
end

-- Garage Menu
function OpenGarageMenu(job)
	local elements = {}
	local NoVeh = true
    local elements = {head = {_U('veh_type'), _U('veh_plate'), _U('veh_name'), _U('veh_fuel'), _U('actions')}, rows = {}}
    local Num = 0
    if job ~= 'civ' then
        Num = '1'
    else
        Num = this_Garage.Number
    end
    ESX.TriggerServerCallback('esx_sna_garages:getOwnedVehicles', function(ownedVehs)
		if #ownedVehs == 0 then
			ESX.ShowNotification(_U('garage_no_veh'))
		else
            for _,v in pairs(ownedVehs) do
                table.insert(elements.rows, {data = v, cols = {_U(v.type), v.plate, v.vehName, v.fuel, '{{' .. _U('spawn') .. '|spawn}} {{' .. _U('rename') .. '|rename}}'}})
            end
            Citizen.Wait(500)
            ESX.UI.Menu.CloseAll()
            ESX.UI.Menu.Open('list', GetCurrentResourceName(), 'owned_vehicles_list', elements, function(data2, menu2)
                local vehVehicle, vehPlate, vehStored, vehFuel = data2.data.vehicle, data2.data.plate, data2.data.stored, data2.data.fuel
                if data2.value == 'spawn' then
                    if vehStored then
                        if ESX.Game.IsSpawnPointClear(this_Garage.Locations.Spawner, 5.0) then
                            SpawnVehicle(vehVehicle, vehPlate, vehFuel, this_Garage.Locations.Spawner, this_Garage.Locations.Heading)
                            ESX.UI.Menu.CloseAll()
                        else
                            ESX.ShowNotification(_U('spawnpoint_blocked'))
                        end
                    else
                        ESX.ShowNotification(_U('veh_not_here'))
                    end
                elseif data2.value == 'rename' then
                    if Config.Main.RenameVehs then
                        ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'renamevehicle', {
                            title = _U('veh_rename', Config.Main.RenameMin, Config.Main.RenameMax - 1)
                        }, function(data3, menu3)
                            if string.len(data3.value) >= Config.Main.RenameMin and string.len(data3.value) < Config.Main.RenameMax then
                                TriggerServerEvent('esx_sna_garages:renameVehicle', vehPlate, data3.value)
                                ESX.UI.Menu.CloseAll()
                            else
                                ESX.ShowNotification(_U('veh_rename_empty', Config.Main.RenameMin, Config.Main.RenameMax - 1))
                            end
                        end, function(data3, menu3)
                            menu3.close()
                        end)
                    else
                        ESX.ShowNotification(_U('veh_rename_no'))
                    end
                end
            end, function(data2, menu2)
                menu2.close()
            end)
        end
    end, job, this_Garage.VehicleType, Num)
end

-- Impound Menu
function OpenImpoundMenu(job)
	local elements = {head = {_U('veh_type'), _U('veh_plate'), _U('veh_name'), _U('impound_fee'), _U('actions')}, rows = {}}
    ESX.TriggerServerCallback('esx_sna_garages:getOwnedVehicles', function(outVehs)
		if #outVehs == 0 then
			ESX.ShowNotification(_U('impound_no'))
		else
			for _,v in pairs(outVehs) do
				table.insert(elements.rows, {data = v, cols = {v.type, v.plate, v.vehName, _U('impound_fee_value', ESX.Math.GroupDigits(this_Garage.PoundPrice)), '{{' .. _U('return') .. '|return}}'}})
			end

			ESX.UI.Menu.Open('list', GetCurrentResourceName(), 'out_owned_vehicles_list', elements, function(data2, menu2)
				local vehVehicle, vehPlate, vehFuel = data2.data.vehicle, data2.data.plate, data2.data.fuel
				local doesVehicleExist = false

				if data2.value == 'return' then
					for k,v in pairs (vehInstance) do
						if ESX.Math.Trim(v.plate) == ESX.Math.Trim(vehPlate) then
							if DoesEntityExist(v.vehicleentity) then
								doesVehicleExist = true
							else
								table.remove(vehInstance, k)
								doesVehicleExist = false
							end
						end
					end

					if not doesVehicleExist and not DoesAPlayerDrivesVehicle(vehPlate) then
						if ESX.Game.IsSpawnPointClear(this_Garage.Pound.Spawner, 5.0) then
							ESX.TriggerServerCallback('esx_sna_garages:payImpound', function(hasEnoughMoney)
								if hasEnoughMoney then
									ESX.TriggerServerCallback('esx_sna_garages:payImpound', function()
										SpawnVehicle(vehVehicle, vehPlate, vehFuel, this_Garage.Pound.Spawner, this_Garage.Pound.Heading)
										ESX.UI.Menu.CloseAll()
									end, this_Garage.PoundPrice, 'pay', this_Garage.PoundsAccount)
								else
									ESX.ShowNotification(_U('not_enough_money'))
								end
							end, this_Garage.PoundPrice, 'check', this_Garage.PoundsAccount)
						else
							ESX.ShowNotification(_U('spawnpoint_blocked'))
						end
					else
						ESX.ShowNotification(_U('veh_out_world'))
					end
				end
			end, function(data2, menu2)
				menu2.close()
			end)
		end
	end, job, this_Garage.VehicleType, 0)
end

-- Spawn Vehicles
function SpawnVehicle(vehicle, plate, fuel, spawner, heading)
	ESX.Game.SpawnVehicle(vehicle.model, spawner, heading, function(callback_vehicle)
		ESX.Game.SetVehicleProperties(callback_vehicle, vehicle)
		SetVehRadioStation(callback_vehicle, "OFF")
		SetVehicleFixed(callback_vehicle)
		SetVehicleDeformationFixed(callback_vehicle)
		SetVehicleUndriveable(callback_vehicle, false)
		SetVehicleEngineOn(callback_vehicle, true, true)
		local carplate = GetVehicleNumberPlateText(callback_vehicle)
		table.insert(vehInstance, {vehicleentity = callback_vehicle, plate = carplate})
		if Config.Main.LegacyFuel then
			exports['LegacyFuel']:SetFuel(callback_vehicle, fuel)
		end
		TaskWarpPedIntoVehicle(GetPlayerPed(-1), callback_vehicle, -1)

		Citizen.Wait(2000)
        --SetVehicleEngineHealth(callback_vehicle, vehicle.engineHealth) -- Might not be needed
		--SetVehicleBodyHealth(callback_vehicle, vehicle.bodyHealth) -- Might not be needed
        --SetVehicleDamage(callback_vehicle, 0.0, 0.0, 0.33, 1000.0 - vehicle.bodyHealth, 100.0, true)
        SetVehicleDamage(callback_vehicle, 0.0, 0.0, 0.66, 200.0, 100.0, true)
        SmashVehicleWindow(callback_vehicle, 0)
        SmashVehicleWindow(callback_vehicle, 1)
        SmashVehicleWindow(callback_vehicle, 2)
        SmashVehicleWindow(callback_vehicle, 3)
        SmashVehicleWindow(callback_vehicle, 4)
        SmashVehicleWindow(callback_vehicle, 5)

        SetVehicleDoorBroken(callback_vehicle, 0, true)
        SetVehicleDoorBroken(callback_vehicle, 1, true)
        SetVehicleDoorBroken(callback_vehicle, 2, true)
        SetVehicleDoorBroken(callback_vehicle, 3, true)
        SetVehicleDoorBroken(callback_vehicle, 4, true)
        SetVehicleDoorBroken(callback_vehicle, 5, true)

	end)

	TriggerServerEvent('esx_sna_garages:setVehicleState', plate, '0')
end

-- Store Vehicles
function StoreVehicle(vehicle, vehicleProps)
	for k,v in pairs (vehInstance) do
		if ESX.Math.Trim(v.plate) == ESX.Math.Trim(vehicleProps.plate) then
			table.remove(vehInstance, k)
		end
	end

	if Config.Main.LegacyFuel then
		currentFuel = exports['LegacyFuel']:GetFuel(vehicle)
		TriggerServerEvent('esx_sna_garages:setVehicleFuel', vehicleProps.plate, currentFuel)
	end
	TriggerEvent('persistent-vehicles/forget-vehicle', vehicle)

	DeleteEntity(vehicle)
    if this_Garage.Job == 'civ' or this_Garage.Job == nil then
	    TriggerServerEvent('esx_sna_garages:setVehicleState', vehicleProps.plate, this_Garage.Number)
    else
	    TriggerServerEvent('esx_sna_garages:setVehicleState', vehicleProps.plate, '1')
    end
	ESX.ShowNotification(_U('vehicle_in_garage'))
end

-- Repair Vehicles
function RepairVehicle(apprasial, vehicle, vehicleProps)
	ESX.UI.Menu.CloseAll()
	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'delete_menu', {
		title = _U('damaged_vehicle'),
		align = GetConvar('esx_MenuAlign', 'top-left'),
		elements = {
			{label = _U('return_vehicle', apprasial), value = 'yes'},
			{label = _U('see_mechanic'), value = 'no'}
	}}, function(data, menu)
		menu.close()

		if data.current.value == 'yes' then
			TriggerServerEvent('esx_sna_garage:payhealth', apprasial)
			vehicleProps.bodyHealth = 1000.0 -- must be a decimal value!!!
			vehicleProps.engineHealth = 1000
			StoreVehicle(vehicle, vehicleProps)
		elseif data.current.value == 'no' then
			ESX.ShowNotification(_U('visit_mechanic'))
		end
	end, function(data, menu)
		menu.close()
	end)
end

-- BLIPS
-- Handles Private Blips
function RefreshPrivateBlips()
    ESX.TriggerServerCallback('esx_sna_garages:getOwnedProperties', function(properties)
        userProperties = properties
        DeletePrivateBlips()
        CreatePrivateBlips()
    end)
end

function DeletePrivateBlips()
	if PrivateBlips[1] ~= nil then
		for i=1, #PrivateBlips, 1 do
			RemoveBlip(PrivateBlips[i])
			PrivateBlips[i] = nil
		end
	end
end


function CreatePrivateBlips()
	for zoneKey,zoneValues in pairs(Config.PrivateGarages) do
        if zoneValues.Private and has_value(userProperties, zoneValues.Private) then
			local blip = AddBlipForCoord(zoneValues.Locations.Marker)

			SetBlipSprite (blip, Config.Main.PGarages.Sprite)
			SetBlipColour (blip, Config.Main.PGarages.Color)
			SetBlipDisplay(blip, Config.Main.PGarages.Display)
			SetBlipScale  (blip, Config.Main.PGarages.Scale)
			SetBlipAsShortRange(blip, true)

			BeginTextCommandSetBlipName("STRING")
			AddTextComponentString(_U('blip_garage_private'))
			EndTextCommandSetBlipName(blip)
			table.insert(PrivateBlips, blip)
		end
	end
end
-- Delete Blips
function DeleteBlips()
	if JobBlips[1] ~= nil then
		for i=1, #JobBlips, 1 do
			RemoveBlip(JobBlips[i])
			JobBlips[i] = nil
		end
	end
end

-- Create Blips
function CreateBlips()
    for k,v in pairs(Config.Parkings) do
        if v.UseBlips then
            if v.Job == 'civ' then
                CreateBlip(v.BlipsGStyle, v.Locations.Marker, 'garage', v.Job, CreateText(v, false))
                if v.UsePounds then
                    CreateBlip(v.BlipsPStyle, v.Pound.Marker, 'impound', v.Job, CreateText(v, true))
                end
            else
                if ESX.PlayerData.job and ESX.PlayerData.job.name == v.Job then
                    CreateBlip(v.BlipsGStyle, v.Locations.Marker, 'garage', v.Job, CreateText(v, false))
                    if v.UsePounds then
                        CreateBlip(v.BlipsPStyle, v.Pound.Marker, 'impound', v.Job, CreateText(v, true))
                    end
                end    
            end            
        end
    end
end

-- Create Blip
function CreateBlip(style, marker, type, job, text)
    local blip = AddBlipForCoord(marker)
    SetBlipSprite (blip, style.Sprite)
    SetBlipColour (blip, style.Color)
    SetBlipDisplay(blip, style.Display)
    SetBlipScale  (blip, style.Scale)
    SetBlipAsShortRange(blip, true)

    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(text)
    EndTextCommandSetBlipName(blip)
    table.insert(JobBlips, blip)
end

function CreateText(parking, impound)
    local Text = ''
    if impound then
        Text = _U('blip_impound')
    else
        if parking.VehicleType == 0 then
            Text = _U('blip_garage')
        elseif parking.VehicleType == 1 then
            Text = _U('blip_dock')
        else
            Text = _U('blip_hangar')
        end
    end

    if parking.Job ~= 'civ' then
        Text = Text.._U('blip_'..parking.Job)
    else
        if parking.Public then
            Text = Text.._U('blip_public')
        end
    end
    return Text
end
