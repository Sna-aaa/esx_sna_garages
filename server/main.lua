ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

-- Make sure all Vehicles are Stored on restart
MySQL.ready(function()
	for k,v in pairs(Config.Parkings) do
		if v.ParkVehicles then
			--ParkVehicles()
			MySQL.Async.execute('UPDATE owned_vehicles SET `stored` = true WHERE `stored` = @stored and `job` = @job' , {
				['@stored'] = false,
				['@job'] = v.Job
			}, function(rowsChanged)
				if rowsChanged > 0 then
					print(('esx_sna_garages: %s vehicle(s) have been stored for '..v.Job):format(rowsChanged))
				end
			end)
		else
			if v.Job ~= 'civ' then
				print('esx_sna_garages: Parking Vehicles on restart is currently set to false for '..v.Job)
			end
		end
	end
end)

-- Store Vehicles
ESX.RegisterServerCallback('esx_sna_garages:storeVehicle', function (source, cb, vehicleProps, job)
	local ownedCars = {}
	local vehplate = vehicleProps.plate:match("^%s*(.-)%s*$")
	local vehiclemodel = vehicleProps.model
	local xPlayer = ESX.GetPlayerFromId(source)

	MySQL.Async.fetchAll('SELECT * FROM owned_vehicles WHERE owner = @owner AND plate = @plate', {
		['@owner'] = xPlayer.identifier,
		['@plate'] = vehicleProps.plate
	}, function (result)
		if result[1] ~= nil then
			local originalvehprops = json.decode(result[1].vehicle)
			if originalvehprops.model == vehiclemodel then
				MySQL.Async.execute('UPDATE owned_vehicles SET vehicle = @vehicle WHERE owner = @owner AND plate = @plate', {
					['@owner'] = xPlayer.identifier,
					['@vehicle'] = json.encode(vehicleProps),
					['@plate'] = vehicleProps.plate
				}, function (rowsChanged)
					if rowsChanged == 0 then
						print(('esx_sna_garages: %s attempted to store an vehicle they don\'t own!'):format(xPlayer.identifier))
					end
					cb(true)
				end)
			else
				if Config.Main.KickCheaters then
					print(('esx_sna_garages: %s attempted to Cheat! Tried Storing: %s | Original Vehicle: %s '):format(xPlayer.identifier, vehiclemodel, originalvehprops.model))
					DropPlayer(source, 'You have been Kicked from the Server for Possible Garage Cheating!!!')
					cb(false)
				else
					print(('esx_sna_garages: %s attempted to Cheat! Tried Storing: %s | Original Vehicle: %s '):format(xPlayer.identifier, vehiclemodel, originalvehprops.model))
					cb(false)
				end
			end
		else
			print(('esx_sna_garages: %s attempted to store an vehicle they don\'t own!'):format(xPlayer.identifier))
			cb(false)
		end
	end)
end)

-- Start of Impound Fetch Vehicles
ESX.RegisterServerCallback('esx_sna_garages:getOwnedVehicles', function(source, cb, job, type, stored)
	local xPlayer = ESX.GetPlayerFromId(source)
	local outVehs = {}
	local Type = ''
	
	if type == 0 then
		Type = 'car'
	elseif type == 1 then
		Type = 'boat'
	elseif type == 2 then
		Type = 'aircraft'
	end
	if job == 'civ' then
		MySQL.Async.fetchAll('SELECT * FROM owned_vehicles WHERE owner = @owner AND type = @Type AND job = @job AND stored = @stored', {
			['@owner'] = xPlayer.identifier,
			['@Type'] = Type,
			['@job'] = job,
			['@stored'] = stored
		}, function(data)
			for _,v in pairs(data) do
				local vehicle = json.decode(v.vehicle)
				if type == 0 then
					table.insert(outVehs, {type = v.type, vehicle = vehicle, plate = v.plate, vehName = v.name, fuel = v.fuel, stored = v.stored})
				else
					table.insert(outVehs, {type = v.category, vehicle = vehicle, plate = v.plate, vehName = v.name, fuel = v.fuel, stored = v.stored})
				end
			end
			cb(outVehs)
		end)
	else
		MySQL.Async.fetchAll('SELECT * FROM owned_vehicles WHERE type = @Type AND job = @job AND stored = @stored', {
			['@Type'] = Type,
			['@job'] = job,
			['@stored'] = stored
		}, function(data) 
			for _,v in pairs(data) do
				local vehicle = json.decode(v.vehicle)
				table.insert(outVehs, {type = v.type, vehicle = vehicle, plate = v.plate, vehName = v.name, fuel = v.fuel, stored = v.stored})
			end
			cb(outVehs)
		end)
	end
end)

-- Start of Impound Pay
ESX.RegisterServerCallback('esx_sna_garages:payImpound', function(source, cb, price, attempt, account)
	local xPlayer = ESX.GetPlayerFromId(source)
	if attempt == 'check' then
		if xPlayer.getMoney() >= price then
			cb(true)
		else
			cb(false)
		end
	else
		xPlayer.removeMoney(price)
		TriggerClientEvent('esx:showNotification', source, _U('you_paid') .. price)
		if Config.Main.GiveSocMoney then
			TriggerEvent('esx_addonaccount:getSharedAccount', account, function(account)
				account.addMoney(price)
			end)
		end
		cb()
	end
end)

-- Get Owned Properties
ESX.RegisterServerCallback('esx_sna_garages:getOwnedProperties', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)
	local properties = {}
	MySQL.Async.fetchAll('SELECT * FROM owned_properties WHERE owner = @owner', {
		['@owner'] = xPlayer.identifier
	}, function(data)
		for _,v in pairs(data) do
			table.insert(properties, v.name)
		end
		cb(properties)
	end)
end)

-- Set Fuel Level
RegisterServerEvent('esx_sna_garages:setVehicleFuel')
AddEventHandler('esx_sna_garages:setVehicleFuel', function(plate, fuel)
	local xPlayer = ESX.GetPlayerFromId(source)

	MySQL.Async.execute('UPDATE owned_vehicles SET fuel = @fuel WHERE plate = @plate', {
		['@fuel'] = fuel,
		['@plate'] = plate
	}, function(rowsChanged)
		if rowsChanged == 0 then
			print(('esx_sna_garages: %s exploited the garage!'):format(xPlayer.identifier))
		end
	end)
end)

-- Modify State of Vehicles
RegisterServerEvent('esx_sna_garages:setVehicleState')
AddEventHandler('esx_sna_garages:setVehicleState', function(plate, state)
	local xPlayer = ESX.GetPlayerFromId(source)

	MySQL.Async.execute('UPDATE owned_vehicles SET `stored` = @stored WHERE plate = @plate', {
		['@stored'] = state,
		['@plate'] = plate
	}, function(rowsChanged)
		if rowsChanged == 0 then
			print(('esx_sna_garages: %s exploited the garage!'):format(xPlayer.identifier))
		end
	end)
end)

-- Pay to Return Broken Vehicles
RegisterServerEvent('esx_sna_garages:payhealth')
AddEventHandler('esx_sna_garages:payhealth', function(price)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeMoney(price)
	TriggerClientEvent('esx:showNotification', source, _U('you_paid') .. price)

	if Config.Main.GiveSocMoney then
		TriggerEvent('esx_addonaccount:getSharedAccount', 'society_mechanic', function(account)
			account.addMoney(price)
		end)
	end
end)

-- Add Command for Getting Properties
if Config.Main.Command then
	ESX.RegisterCommand('getgarages', 'user', function(xPlayer, args, showError)
		xPlayer.triggerEvent('esx_sna_garages:getGarages')
	end, true, {help = 'Get Private Garages', validate = false})
end


