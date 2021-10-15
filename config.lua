Config = {}
Config.Locale = 'fr'

Config.Main = {
	DrawDistance = 20, -- Draw Distance to Markers.
	Command = true, -- Will allow players to do /getproperties instead of having to log out & back in to see Private Garages.
	KickCheaters = true, -- true = Kick Player that tries to Cheat Garage by changing Vehicle Hash/Plate.
	GiveSocMoney = true, -- true = Gives money to society_mechanic. Note: REQUIRES esx_mechanicjob.
	RenameVehs = true, -- true = Allows Players to Rename their Vehicles.
	RenameMin = 4, -- Minimum Characters
	RenameMax = 61, -- Max Characters + 1 (If you want Max Characters to be 45 then set it 46)
	LegacyFuel = true, -- ture = Using LegacyFuel & you want Fuel to Save
	PGarages = {Sprite = 290, Color = 53, Display = 2, Scale = 1.0}, -- Private Garage Blip.
	Markers = {
		Points = {Type = 1, r = 0, g = 255, b = 0, x = 1.5, y = 1.5, z = 1.0}, -- Green Color / Standard Size Circle.
		Delete = {Type = 1, r = 255, g = 0, b = 0, x = 5.0, y = 5.0, z = 1.0}, -- Red Color / Big Size Circle.
		Pounds = {Type = 1, r = 255, g = 0, b = 0, x = 1.5, y = 1.5, z = 1.0} -- Red Color / Standard Size Circle.
	}
}




Config.Parkings = {
	Los_Santos = {
		Number = '01',
		Job = 'civ',			-- Job name
		Public = true,
		UseBlips = true,		-- true = Use Blips.
		BlipsGStyle = {Sprite = 290, Color = 38, Display = 2, Scale = 1.0},	-- Blip Garage Style
		BlipsPStyle = {Sprite = 67, Color = 64, Display = 2, Scale = 1.0},	-- Blip Pound Style.
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		MultAmount = 0,			-- Higher Number = Higher Repair Price.
		UsePounds = true,		-- Allows use of Pounds.
		PoundsAccount = 'society_police',	-- Account to place pounds money
		PoundPrice = 500,		-- How much it Costs to get Vehicles from the Pound.
		ParkVehicles = false,	-- true = Automatically Park all Vehicles in Garage on Server/Script Restart | false = Opposite of true but players will have to go to Pound to get their Vehicle Back.
		Locations = {			-- Locations of the garage
			Marker = vector3(215.80, -810.06, 29.73),
			Spawner = vector3(229.70, -800.12, 29.57),
			Deleter = vector3(223.80, -760.42, 29.65),
			Heading = 157.84
		},
		Pound = {
			Marker = vector3(408.61, -1625.47, 28.29),
			Spawner = vector3(405.64, -1643.4, 27.61),
			Heading = 229.54
		}
	},
	Sandy_Shores = {
		Number = '02',
		Job = 'civ',			-- Job name
		Public = true,
		UseBlips = true,		-- true = Use Blips.
		BlipsGStyle = {Sprite = 290, Color = 38, Display = 2, Scale = 1.0},	-- Blip Garage Style
		BlipsPStyle = {Sprite = 67, Color = 64, Display = 2, Scale = 1.0},	-- Blip Pound Style.
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		MultAmount = 0,			-- Higher Number = Higher Repair Price.
		UsePounds = true,		-- Allows use of Pounds.
		PoundsAccount = 'society_police',	-- Account to place pounds money
		PoundPrice = 400,		-- How much it Costs to get Vehicles from the Pound.
		ParkVehicles = false,	-- true = Automatically Park all Vehicles in Garage on Server/Script Restart | false = Opposite of true but players will have to go to Pound to get their Vehicle Back.
		Locations = {			-- Locations of the garage
			Marker = vector3(1737.59, 3710.2, 33.14),
			Spawner = vector3(1737.84, 3719.28, 33.04),
			Deleter = vector3(1722.66, 3713.74, 33.21),
			Heading = 21.22
		},
		Pound = {
			Marker = vector3(1651.38, 3804.84, 37.65),
			Spawner = vector3(1627.84, 3788.45, 33.77),
			Heading = 308.53
		}
	},
	Paleto_Bay = {
		Number = '03',
		Job = 'civ',			-- Job name
		Public = true,
		UseBlips = true,		-- true = Use Blips.
		BlipsGStyle = {Sprite = 290, Color = 38, Display = 2, Scale = 1.0},	-- Blip Garage Style
		BlipsPStyle = {Sprite = 67, Color = 64, Display = 2, Scale = 1.0},	-- Blip Pound Style.
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		MultAmount = 0,			-- Higher Number = Higher Repair Price.
		UsePounds = true,		-- Allows use of Pounds.
		PoundsAccount = 'society_police',	-- Account to place pounds money
		PoundPrice = 300,		-- How much it Costs to get Vehicles from the Pound.
		ParkVehicles = false,	-- true = Automatically Park all Vehicles in Garage on Server/Script Restart | false = Opposite of true but players will have to go to Pound to get their Vehicle Back.
		Locations = {			-- Locations of the garage
			Marker = vector3(105.36, 6613.59, 31.40),
			Spawner = vector3(128.78, 6622.99, 30.78),
			Deleter = vector3(126.36, 6608.41, 30.86),
			Heading = 315.01
		},
		Pound = {
			Marker = vector3(-234.82, 6198.65, 30.94),
			Spawner = vector3(-230.08, 6190.24, 30.49),
			Heading = 140.24
		}
	},
	Los_SantosAir = {
		Number = '04',
		Job = 'civ',		-- Job name
		Public = true,
		UseBlips = true,		-- true = Use Blips.
		BlipsGStyle = {Sprite = 290, Color = 38, Display = 2, Scale = 1.0},	-- Blip Garage Style
		BlipsPStyle = {Sprite = 67, Color = 64, Display = 2, Scale = 1.0},	-- Blip Pound Style.
		VehicleType = 2,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		MultAmount = 0,			-- Higher Number = Higher Repair Price.
		UsePounds = true,		-- Allows use of Pounds.
		PoundsAccount = 'society_police',	-- Account to place pounds money
		PoundPrice = 2500,		-- How much it Costs to get Vehicles from the Pound.
		ParkVehicles = false,	-- true = Automatically Park all Vehicles in Garage on Server/Script Restart | false = Opposite of true but players will have to go to Pound to get their Vehicle Back.
		Locations = {			-- Locations of the garage
			Marker = vector3(-1617.14, -3145.52, 12.99),
			Spawner = vector3(-1657.99, -3134.38, 12.99),
			Deleter = vector3(-1642.12, -3144.25, 12.99),
			Heading = 330.11
		},
		Pound = {
			Marker = vector3(-1237.96, -3386.61, 12.94),
			Spawner = vector3(-1272.27, -3382.46, 12.94),
			Heading = 330.25
		}
	},
	Sandy_ShoresAir = {
		Number = '05',
		Job = 'civ',		-- Job name
		Public = true,
		UseBlips = true,		-- true = Use Blips.
		BlipsGStyle = {Sprite = 290, Color = 38, Display = 2, Scale = 1.0},	-- Blip Garage Style
		BlipsPStyle = {Sprite = 67, Color = 64, Display = 2, Scale = 1.0},	-- Blip Pound Style.
		VehicleType = 2,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		MultAmount = 0,			-- Higher Number = Higher Repair Price.
		UsePounds = false,		-- Allows use of Pounds.
		PoundsAccount = 'society_police',	-- Account to place pounds money
		PoundPrice = 2500,		-- How much it Costs to get Vehicles from the Pound.
		ParkVehicles = false,	-- true = Automatically Park all Vehicles in Garage on Server/Script Restart | false = Opposite of true but players will have to go to Pound to get their Vehicle Back.
		Locations = {			-- Locations of the garage
			Marker = vector3(1723.84, 3288.29, 40.16),
			Spawner = vector3(1710.85, 3259.06, 40.69),
			Deleter = vector3(1714.45, 3246.75, 40.07),
			Heading = 104.66
		},
		Pound = {
			--Marker = vector3(-1237.96, -3386.61, 12.94),
			--Spawner = vector3(-1272.27, -3382.46, 12.94),
			--Heading = 330.25
		}
	},
	GrapeseedAir = {
		Number = '06',
		Job = 'civ',		-- Job name
		Public = true,
		UseBlips = true,		-- true = Use Blips.
		BlipsGStyle = {Sprite = 290, Color = 38, Display = 2, Scale = 1.0},	-- Blip Garage Style
		BlipsPStyle = {Sprite = 67, Color = 64, Display = 2, Scale = 1.0},	-- Blip Pound Style.
		VehicleType = 2,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		MultAmount = 0,			-- Higher Number = Higher Repair Price.
		UsePounds = false,		-- Allows use of Pounds.
		PoundsAccount = 'society_police',	-- Account to place pounds money
		PoundPrice = 2500,		-- How much it Costs to get Vehicles from the Pound.
		ParkVehicles = false,	-- true = Automatically Park all Vehicles in Garage on Server/Script Restart | false = Opposite of true but players will have to go to Pound to get their Vehicle Back.
		Locations = {			-- Locations of the garage
			Marker = vector3(2152.83, 4797.03, 40.19),
			Spawner = vector3(2122.72, 4804.85, 40.78),
			Deleter = vector3(2082.36, 4806.06, 40.07),
			Heading = 115.04
		},
		Pound = {
			--Marker = vector3(-1237.96, -3386.61, 12.94),
			--Spawner = vector3(-1272.27, -3382.46, 12.94),
			--Heading = 330.25
		}
	},

	Los_SantosDock = {
		Number = '07',
		Job = 'civ',		-- Job name
		Public = true,
		UseBlips = true,		-- true = Use Blips.
		BlipsGStyle = {Sprite = 290, Color = 38, Display = 2, Scale = 1.0},	-- Blip Garage Style
		BlipsPStyle = {Sprite = 67, Color = 64, Display = 2, Scale = 1.0},	-- Blip Pound Style.
		VehicleType = 1,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		MultAmount = 0,			-- Higher Number = Higher Repair Price.
		UsePounds = true,		-- Allows use of Pounds.
		PoundsAccount = 'society_police',	-- Account to place pounds money
		PoundPrice = 800,		-- How much it Costs to get Vehicles from the Pound.
		ParkVehicles = false,	-- true = Automatically Park all Vehicles in Garage on Server/Script Restart | false = Opposite of true but players will have to go to Pound to get their Vehicle Back.
		Locations = {			-- Locations of the garage
			Marker = vector3(-735.87, -1325.08, 0.6),
			Spawner = vector3(-718.87, -1320.18, -0.47),
			Deleter = vector3(-731.15, -1334.71, -0.47),
			Heading = 45.0
		},
		Pound = {
			Marker = vector3(-738.67, -1400.43, 4.0),
			Spawner = vector3(-738.33, -1381.51, 0.12),
			Heading = 137.85
		}
	},
	Sandy_ShoresDock = {
		Number = '08',
		Job = 'civ',		-- Job name
		Public = true,
		UseBlips = true,		-- true = Use Blips.
		BlipsGStyle = {Sprite = 290, Color = 38, Display = 2, Scale = 1.0},	-- Blip Garage Style
		BlipsPStyle = {Sprite = 67, Color = 64, Display = 2, Scale = 1.0},	-- Blip Pound Style.
		VehicleType = 1,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		MultAmount = 0,			-- Higher Number = Higher Repair Price.
		UsePounds = false,		-- Allows use of Pounds.
		PoundsAccount = 'society_police',	-- Account to place pounds money
		PoundPrice = 800,		-- How much it Costs to get Vehicles from the Pound.
		ParkVehicles = false,	-- true = Automatically Park all Vehicles in Garage on Server/Script Restart | false = Opposite of true but players will have to go to Pound to get their Vehicle Back.
		Locations = {			-- Locations of the garage
			Marker = vector3(1333.2, 4269.92, 30.5),
			Spawner = vector3(1334.61, 4264.68, 29.86),
			Deleter = vector3(1323.73, 4269.94, 29.86),
			Heading = 87.0
		},
		Pound = {
			--Marker = vector3(-738.67, -1400.43, 4.0),
			--Spawner = vector3(-738.33, -1381.51, 0.12),
			--Heading = 137.85
		}
	},
	Paleto_BayDock = {
		Number = '09',
		Job = 'civ',		-- Job name
		Public = true,
		UseBlips = true,		-- true = Use Blips.
		BlipsGStyle = {Sprite = 290, Color = 38, Display = 2, Scale = 1.0},	-- Blip Garage Style
		BlipsPStyle = {Sprite = 67, Color = 64, Display = 2, Scale = 1.0},	-- Blip Pound Style.
		VehicleType = 1,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		MultAmount = 0,			-- Higher Number = Higher Repair Price.
		UsePounds = false,		-- Allows use of Pounds.
		PoundsAccount = 'society_police',	-- Account to place pounds money
		PoundPrice = 800,		-- How much it Costs to get Vehicles from the Pound.
		ParkVehicles = false,	-- true = Automatically Park all Vehicles in Garage on Server/Script Restart | false = Opposite of true but players will have to go to Pound to get their Vehicle Back.
		Locations = {			-- Locations of the garage
			Marker = vector3(-283.74, 6629.51, 6.3),
			Spawner = vector3(-290.46, 6622.72, -0.47),
			Deleter = vector3(-304.66, 6607.36, -0.47),
			Heading = 52.0
		},
		Pound = {
			--Marker = vector3(-738.67, -1400.43, 4.0),
			--Spawner = vector3(-738.33, -1381.51, 0.12),
			--Heading = 137.85
		}
	},


	Mechanic = {
		Number = '11',
		Job = 'mechanic',		-- Job name
		Public = false,
		UseBlips = true,		-- true = Use Blips.
		BlipsGStyle = {Sprite = 290, Color = 49, Display = 2, Scale = 1.0},	-- Blip Garage Style
		BlipsPStyle = {Sprite = 67, Color = 49, Display = 2, Scale = 1.0},	-- Blip Pound Style.
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = false,	-- true = store damages, false = repair before storage
		MultAmount = 5,			-- Higher Number = Higher Repair Price.
		UsePounds = true,		-- Allows use of Pounds.
		PoundsAccount = 'society_police',	-- Account to place pounds money
		PoundPrice = 150,		-- How much it Costs to get Vehicles from the Pound.
		ParkVehicles = true,	-- true = Automatically Park all Vehicles in Garage on Server/Script Restart | false = Opposite of true but players will have to go to Pound to get their Vehicle Back.
		Locations = {			-- Locations of the garage
			Marker = vector3(-344.25, -123.4, 38.01),
			Spawner = vector3(-370.1, -108.28, 37.68),
			Deleter = vector3(-370.1, -108.28, 37.68),
			Heading = 73.9
		},
		Pound = {
			Marker = vector3(374.42, -1620.68, 28.29),
			Spawner = vector3(391.74, -1619.0, 28.29),
			Heading = 318.34
		}
	},
	AmbulanceGround = {
		Number = '12',
		Job = 'ambulance',		-- Job name
		Public = false,
		UseBlips = true,		-- true = Use Blips.
		BlipsGStyle = {Sprite = 290, Color = 49, Display = 2, Scale = 1.0},	-- Blip Garage Style
		BlipsPStyle = {Sprite = 67, Color = 49, Display = 2, Scale = 1.0},	-- Blip Pound Style.
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = false,	-- true = store damages, false = repair before storage
		MultAmount = 5,			-- Higher Number = Higher Repair Price.
		UsePounds = true,		-- Allows use of Pounds.
		PoundsAccount = 'society_ambulance',	-- Account to place pounds money
		PoundPrice = 150,		-- How much it Costs to get Vehicles from the Pound.
		ParkVehicles = true,	-- true = Automatically Park all Vehicles in Garage on Server/Script Restart | false = Opposite of true but players will have to go to Pound to get their Vehicle Back.
		Locations = {			-- Locations of the garage
			Marker = vector3(302.95, -1453.5, 28.97),
			Spawner = vector3(300.33, -1431.91, 29.8),
			Deleter = vector3(300.33, -1431.91, 28.8),
			Heading = 226.71,
		},
		Pound = {
			Marker = vector3(374.42, -1620.68, 28.29),
			Spawner = vector3(391.74, -1619.0, 28.29),
			Heading = 318.34,
		}
	},
	AmbulanceAir = {
		Number = '13',
		Job = 'ambulance',		-- Job name
		Public = false,
		UseBlips = true,		-- true = Use Blips.
		BlipsGStyle = {Sprite = 290, Color = 49, Display = 2, Scale = 1.0},	-- Blip Garage Style
		BlipsPStyle = {Sprite = 67, Color = 49, Display = 2, Scale = 1.0},	-- Blip Pound Style.
		VehicleType = 2,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = false,	-- true = store damages, false = repair before storage
		MultAmount = 5,			-- Higher Number = Higher Repair Price.
		UsePounds = true,		-- Allows use of Pounds.
		PoundsAccount = 'society_ambulance',	-- Account to place pounds money
		PoundPrice = 150,		-- How much it Costs to get Vehicles from the Pound.
		ParkVehicles = true,	-- true = Automatically Park all Vehicles in Garage on Server/Script Restart | false = Opposite of true but players will have to go to Pound to get their Vehicle Back.
		Locations = {			-- Locations of the garage
			Marker = vector3(302.95, -1453.5, 28.97),
			Spawner = vector3(313.36, -1465.17, 46.51),
			Deleter = vector3(313.36, -1465.17, 45.51),
			Heading = 228.34
		},
		Pound = {
			Marker = vector3(374.42, -1620.68, 28.29),
			Spawner = vector3(362.75, -1598.33, 35.95),
			Heading = 311.87
		}
	}
}




















Config.Blips = {
	Garages = {Sprite = 290, Color = 38, Display = 2, Scale = 1.0}, -- Public Garage Blip.
	PGarages = {Sprite = 290, Color = 53, Display = 2, Scale = 1.0}, -- Private Garage Blip.
	Pounds = {Sprite = 67, Color = 64, Display = 2, Scale = 1.0}, -- Pound Blip.
	JGarages = {Sprite = 290, Color = 49, Display = 2, Scale = 1.0}, -- Job Garage Blip.
	JPounds = {Sprite = 67, Color = 49, Display = 2, Scale = 1.0}, -- Job Pound Blip.
}

Config.Ambulance = {
	Garages = true, -- true = Allows use of Ambulance Garages.
	Pounds = true, -- true = Allows use of Ambulance Pounds.
	Blips = false, -- true = Use Ambulance Blips.
	PoundP = 80, -- How much it Costs to get Vehicles from the Ambulance Pound.
	Markers = {
		Points = {Type = 1, r = 0, g = 255, b = 0, x = 1.5, y = 1.5, z = 1.0}, -- Green Color / Standard Size Circle.
		Delete = {Type = 1, r = 255, g = 0, b = 0, x = 5.0, y = 5.0, z = 1.0}, -- Red Color / Big Size Circle.
		Pounds = {Type = 1, r = 255, g = 0, b = 0, x = 1.5, y = 1.5, z = 1.0} -- Red Color / Standard Size Circle.
	}
}

Config.Police = {
	Garages = true, -- true = Allows use of Police Garages.
	Pounds = true, -- true = Allows use of Police Pounds.
	Blips = false, -- true = Use Police Blips.
	PoundP = 80, -- How much it Costs to get Vehicles from the Police Pound.
	Markers = {
		Points = {Type = 1, r = 0, g = 255, b = 0, x = 1.5, y = 1.5, z = 1.0}, -- Green Color / Standard Size Circle.
		Delete = {Type = 1, r = 255, g = 0, b = 0, x = 5.0, y = 5.0, z = 1.0}, -- Red Color / Big Size Circle.
		Pounds = {Type = 1, r = 255, g = 0, b = 0, x = 1.5, y = 1.5, z = 1.0} -- Red Color / Standard Size Circle.
	}
}

Config.Mechanic = {
	Garages = true, -- true = Allows use of Mechanic Garages.
	Pounds = true, -- true = Allows use of Mechanic Pounds.
	Blips = false, -- true = Use Mechanic Blips.
	PoundP = 150, -- How much it Costs to get Vehicles from the Mechanic Pound.
	Markers = {
		Points = {Type = 1, r = 0, g = 255, b = 0, x = 1.5, y = 1.5, z = 1.0}, -- Green Color / Standard Size Circle.
		Delete = {Type = 1, r = 255, g = 0, b = 0, x = 5.0, y = 5.0, z = 1.0}, -- Red Color / Big Size Circle.
		Pounds = {Type = 1, r = 255, g = 0, b = 0, x = 1.5, y = 1.5, z = 1.0} -- Red Color / Standard Size Circle.
	}
}

Config.Aircrafts = {
	Garages = true, -- true = Allows use of Aircraft Garages.
	Blips = true, -- true = Use Aircraft Blips.
	PoundP = 2500, -- How much it Costs to get Vehicles from the Aircraft Pound.
	Markers = {
		Points = {Type = 1, r = 0, g = 255, b = 0, x = 1.5, y = 1.5, z = 1.0}, -- Green Color / Standard Size Circle.
		Delete = {Type = 1, r = 255, g = 0, b = 0, x = 5.0, y = 5.0, z = 1.0}, -- Red Color / Big Size Circle.
		Pounds = {Type = 1, r = 0, g = 0, b = 100, x = 1.5, y = 1.5, z = 1.0} -- Blue Color / Standard Size Circle.
	}
}

Config.Boats = {
	Garages = true, -- true = Allows use of Boat Garages.
	Blips = true, -- true = Use Boat Blips.
	PoundP = 500, -- How much it Costs to get Vehicles from the Boat Pound.
	Markers = {
		Points = {Type = 1, r = 0, g = 255, b = 0, x = 1.5, y = 1.5, z = 1.0}, -- Green Color / Standard Size Circle.
		Delete = {Type = 1, r = 255, g = 0, b = 0, x = 5.0, y = 5.0, z = 1.0}, -- Red Color / Big Size Circle.
		Pounds = {Type = 1, r = 0, g = 0, b = 100, x = 1.5, y = 1.5, z = 1.0} -- Blue Color / Standard Size Circle.
	}
}

Config.Cars = {
	Garages = true, -- true = Allows use of Car Garages.
	Blips = true, -- true = Use Car Blips.
	PoundP = 300, -- How much it Costs to get Vehicles from the Car Pound.
	Markers = {
		Points = {Type = 1, r = 0, g = 255, b = 0, x = 1.5, y = 1.5, z = 1.0}, -- Green Color / Standard Size Circle.
		Delete = {Type = 1, r = 255, g = 0, b = 0, x = 5.0, y = 5.0, z = 1.0}, -- Red Color / Big Size Circle.
		Pounds = {Type = 1, r = 0, g = 0, b = 100, x = 1.5, y = 1.5, z = 1.0} -- Blue Color / Standard Size Circle.
	}
}

Config.Pvt = {
	Garages = true, -- Set to true if using esx_property & want Private Car Garages for Properties
	Markers = {
		Points = {Type = 1, r = 0, g = 255, b = 0, x = 1.5, y = 1.5, z = 1.0}, -- Green Color / Standard Size Circle.
		Delete = {Type = 1, r = 255, g = 0, b = 0, x = 5.0, y = 5.0, z = 1.0} -- Red Color / Big Size Circle.
	}
}

-- Marker = Enter Location | Spawner = Spawn Location | Spawner2 = Job Aircraft Spawn Location | Deleter = Delete Location
-- Deleter2 = Job Aircraft Delete Location | Heading = Spawn Heading | Heading2 = Job Aircraft Spawn Heading

-- Start of Ambulance
Config.AmbulanceGarages = {
	Los_Santos = {
		Marker = vector3(302.95, -1453.5, 28.97),
		Spawner = vector3(300.33, -1431.91, 29.8),
		Spawner2 = vector3(313.36, -1465.17, 46.51),
		Deleter = vector3(300.33, -1431.91, 28.8),
		Deleter2 = vector3(313.36, -1465.17, 45.51),
		Heading = 226.71,
		Heading2 = 228.34
	}
}

Config.AmbulancePounds = {
	Los_Santos = {
		Marker = vector3(374.42, -1620.68, 28.29),
		Spawner = vector3(391.74, -1619.0, 28.29),
		Spawner2 = vector3(362.75, -1598.33, 35.95),
		Heading = 318.34,
		Heading2 = 311.87
	}
}
-- End of Ambulance

-- Start of Police
Config.PoliceGarages = {
	Los_Santos = {
		Marker = vector3(425.41, -1003.43, 29.71),
		Spawner = vector3(434.28, -1015.8, 28.83),
		Spawner2 = vector3(449.21, -981.35, 43.69),
		Deleter = vector3(462.95, -1014.56, 27.07),
		Deleter2 = vector3(449.21, -981.35, 42.69),
		Heading = 90.46,
		Heading2 = 184.53
	}
}

Config.PolicePounds = {
	Los_Santos = {
		Marker = vector3(374.42, -1620.68, 28.29),
		Spawner = vector3(391.74, -1619.0, 28.29),
		Spawner2 = vector3(362.75, -1598.33, 35.95),
		Heading = 318.34,
		Heading2 = 311.87
	}
}
-- End of Police

-- Start of Mechanic
Config.MechanicGarages = {
	Los_Santos = {
		Marker = vector3(-344.25, -123.4, 38.01),
		Spawner = vector3(-370.1, -108.28, 37.68),
		Deleter = vector3(-370.1, -108.28, 37.68),
		Heading = 73.9
	}
}

Config.MechanicPounds = {
	Los_Santos = {
		Marker = vector3(374.42, -1620.68, 28.29),
		Spawner = vector3(391.74, -1619.0, 28.29),
		Heading = 318.34
	}
}
-- End of Mechanic

-- Start of Aircrafts
Config.AircraftGarages = {
	Los_Santos_Airport = {
		Marker = vector3(-1617.14, -3145.52, 12.99),
		Spawner = vector3(-1657.99, -3134.38, 12.99),
		Deleter = vector3(-1642.12, -3144.25, 12.99),
		Heading = 330.11
	},
	Sandy_Shores_Airport = {
		Marker = vector3(1723.84, 3288.29, 40.16),
		Spawner = vector3(1710.85, 3259.06, 40.69),
		Deleter = vector3(1714.45, 3246.75, 40.07),
		Heading = 104.66
	},
	Grapeseed_Airport = {
		Marker = vector3(2152.83, 4797.03, 40.19),
		Spawner = vector3(2122.72, 4804.85, 40.78),
		Deleter = vector3(2082.36, 4806.06, 40.07),
		Heading = 115.04
	},
	--[[Cayo_Airport = {
		Marker = vector3(4460.86, -4472.47, 3.27),
		Spawner = vector3(4485.77, -4462.86, 4.23),
		Deleter = vector3(4485.77, -4462.86, 3.23),
		Heading = 198.75
	}]]--
}

Config.AircraftPounds = {
	Los_Santos_Airport = {
		Marker = vector3(-1237.96, -3386.61, 12.94),
		Spawner = vector3(-1272.27, -3382.46, 12.94),
		Heading = 330.25
	}
}
-- End of Aircrafts

-- Start of Boats
Config.BoatGarages = {
	Los_Santos_Dock = {
		Marker = vector3(-735.87, -1325.08, 0.6),
		Spawner = vector3(-718.87, -1320.18, -0.47),
		Deleter = vector3(-731.15, -1334.71, -0.47),
		Heading = 45.0
	},
	Sandy_Shores_Dock = {
		Marker = vector3(1333.2, 4269.92, 30.5),
		Spawner = vector3(1334.61, 4264.68, 29.86),
		Deleter = vector3(1323.73, 4269.94, 29.86),
		Heading = 87.0
	},
	Paleto_Bay_Dock = {
		Marker = vector3(-283.74, 6629.51, 6.3),
		Spawner = vector3(-290.46, 6622.72, -0.47),
		Deleter = vector3(-304.66, 6607.36, -0.47),
		Heading = 52.0
	},
	--[[Cayo_Perico_Dock = {
		Marker = vector3(4877.95, -5169.9, 1.45),
		Spawner = vector3(4790.57, -5209.31, 1.02),
		Deleter = vector3(4790.57, -5209.31, 0.02),
		Heading = 0.64
	}]]--
}

Config.BoatPounds = {
	Los_Santos_Dock = {
		Marker = vector3(-738.67, -1400.43, 4.0),
		Spawner = vector3(-738.33, -1381.51, 0.12),
		Heading = 137.85
	}
}
-- End of Boats

-- Start of Cars
Config.CarGarages = {
	Los_Santos = {
		Marker = vector3(215.80, -810.06, 29.73),
		Spawner = vector3(229.70, -800.12, 29.57),
		Deleter = vector3(223.80, -760.42, 29.65),
		Heading = 157.84
	},
	Sandy_Shores = {
		Marker = vector3(1737.59, 3710.2, 33.14),
		Spawner = vector3(1737.84, 3719.28, 33.04),
		Deleter = vector3(1722.66, 3713.74, 33.21),
		Heading = 21.22
	},
	Paleto_Bay = {
		Marker = vector3(105.36, 6613.59, 31.40),
		Spawner = vector3(128.78, 6622.99, 30.78),
		Deleter = vector3(126.36, 6608.41, 30.86),
		Heading = 315.01
	},
	--[[Cayo_Perico = {
		Marker = vector3(4503.25, -4520.67, 3.41),
		Spawner = vector3(4511.52, -4517.73, 4.11),
		Deleter = vector3(4503.27, -4536.21, 3.13),
		Heading = 22.2
	}]]--
}

Config.CarPounds = {
	Los_Santos = {
		Marker = vector3(408.61, -1625.47, 28.29),
		Spawner = vector3(405.64, -1643.4, 27.61),
		Heading = 229.54
	},
	Sandy_Shores = {
		Marker = vector3(1651.38, 3804.84, 37.65),
		Spawner = vector3(1627.84, 3788.45, 33.77),
		Heading = 308.53
	},
	Paleto_Bay = {
		Marker = vector3(-234.82, 6198.65, 30.94),
		Spawner = vector3(-230.08, 6190.24, 30.49),
		Heading = 140.24
	}
}
-- End of Cars






















-- Start of Private Cars
Config.PrivateGarages = {
	-- Maze Bank Building Garages
	MazeBankBuilding_Main = {
		Private = "MazeBankBuilding",
		Number = '50',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-60.38, -790.31, 43.23),
			Spawner = vector3(-44.03, -787.36, 43.19),
			Deleter = vector3(-58.88, -778.63, 43.18),
			Heading = 254.322
		}
	},
	MazeBankBuilding_OldSpiceWarm = {
		Private = "OldSpiceWarm",
		Number = '51',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-60.38, -790.31, 43.23),
			Spawner = vector3(-44.03, -787.36, 43.19),
			Deleter = vector3(-58.88, -778.63, 43.18),
			Heading = 254.322
		}
	},
	MazeBankBuilding_OldSpiceClassical = {
		Private = "OldSpiceClassical",
		Number = '52',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-60.38, -790.31, 43.23),
			Spawner = vector3(-44.03, -787.36, 43.19),
			Deleter = vector3(-58.88, -778.63, 43.18),
			Heading = 254.322
		}
	},
	MazeBankBuilding_OldSpiceVintage = {
		Private = "OldSpiceVintage",
		Number = '53',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-60.38, -790.31, 43.23),
			Spawner = vector3(-44.03, -787.36, 43.19),
			Deleter = vector3(-58.88, -778.63, 43.18),
			Heading = 254.322
		}
	},
	MazeBankBuilding_ExecutiveRich = {
		Private = "ExecutiveRich",
		Number = '54',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-60.38, -790.31, 43.23),
			Spawner = vector3(-44.03, -787.36, 43.19),
			Deleter = vector3(-58.88, -778.63, 43.18),
			Heading = 254.322
		}
	},
	MazeBankBuilding_ExecutiveCool = {
		Private = "ExecutiveCool",
		Number = '55',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-60.38, -790.31, 43.23),
			Spawner = vector3(-44.03, -787.36, 43.19),
			Deleter = vector3(-58.88, -778.63, 43.18),
			Heading = 254.322
		}
	},
	MazeBankBuilding_ExecutiveContrast = {
		Private = "ExecutiveContrast",
		Number = '56',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-60.38, -790.31, 43.23),
			Spawner = vector3(-44.03, -787.36, 43.19),
			Deleter = vector3(-58.88, -778.63, 43.18),
			Heading = 254.322
		}
	},
	MazeBankBuilding_PowerBrokerIce = {
		Private = "PowerBrokerIce",
		Number = '57',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-60.38, -790.31, 43.23),
			Spawner = vector3(-44.03, -787.36, 43.19),
			Deleter = vector3(-58.88, -778.63, 43.18),
			Heading = 254.322
		}
	},
	MazeBankBuilding_PowerBrokerConservative = {
		Private = "PowerBrokerConservative",
		Number = '58',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-60.38, -790.31, 43.23),
			Spawner = vector3(-44.03, -787.36, 43.19),
			Deleter = vector3(-58.88, -778.63, 43.18),
			Heading = 254.322
		}
	},
	MazeBankBuilding_PowerBrokerPolished = {
		Private = "PowerBrokerPolished",
		Number = '59',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-60.38, -790.31, 43.23),
			Spawner = vector3(-44.03, -787.36, 43.19),
			Deleter = vector3(-58.88, -778.63, 43.18),
			Heading = 254.322
		}
	},
	-- End of Maze Bank Building Garages
	-- Start of Lom Bank Garages
	LomBank_Main = {
		Private = "LomBank",
		Number = '60',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-1545.17, -566.24, 24.85),
			Spawner = vector3(-1551.88, -581.38, 24.71),
			Deleter = vector3(-1538.56, -576.05, 24.71),
			Heading = 331.176
		}
	},
	LomBank_LBOldSpiceWarm = {
		Private = "LBOldSpiceWarm",
		Number = '61',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-1545.17, -566.24, 24.85),
			Spawner = vector3(-1551.88, -581.38, 24.71),
			Deleter = vector3(-1538.56, -576.05, 24.71),
			Heading = 331.176
		}
	},
	LomBank_LBOldSpiceClassical = {
		Private = "LBOldSpiceClassical",
		Number = '62',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-1545.17, -566.24, 24.85),
			Spawner = vector3(-1551.88, -581.38, 24.71),
			Deleter = vector3(-1538.56, -576.05, 24.71),
			Heading = 331.176
		}
	},
	LomBank_LBOldSpiceVintage = {
		Private = "LBOldSpiceVintage",
		Number = '63',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-1545.17, -566.24, 24.85),
			Spawner = vector3(-1551.88, -581.38, 24.71),
			Deleter = vector3(-1538.56, -576.05, 24.71),
			Heading = 331.176
		}
	},
	LomBank_LBExecutiveRich = {
		Private = "LBExecutiveRich",
		Number = '64',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-1545.17, -566.24, 24.85),
			Spawner = vector3(-1551.88, -581.38, 24.71),
			Deleter = vector3(-1538.56, -576.05, 24.71),
			Heading = 331.176
		}
	},
	LomBank_LBExecutiveCool = {
		Private = "LBExecutiveCool",
		Number = '65',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-1545.17, -566.24, 24.85),
			Spawner = vector3(-1551.88, -581.38, 24.71),
			Deleter = vector3(-1538.56, -576.05, 24.71),
			Heading = 331.176
		}
	},
	LomBank_LBExecutiveContrast = {
		Private = "LBExecutiveContrast",
		Number = '66',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-1545.17, -566.24, 24.85),
			Spawner = vector3(-1551.88, -581.38, 24.71),
			Deleter = vector3(-1538.56, -576.05, 24.71),
			Heading = 331.176
		}
	},
	LomBank_LBPowerBrokerIce = {
		Private = "LBPowerBrokerIce",
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		Number = '67',
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-1545.17, -566.24, 24.85),
			Spawner = vector3(-1551.88, -581.38, 24.71),
			Deleter = vector3(-1538.56, -576.05, 24.71),
			Heading = 331.176
		}
	},
	LomBank_LBPowerBrokerConservative = {
		Private = "LBPowerBrokerConservative",
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		Number = '68',
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-1545.17, -566.24, 24.85),
			Spawner = vector3(-1551.88, -581.38, 24.71),
			Deleter = vector3(-1538.56, -576.05, 24.71),
			Heading = 331.176
		}
	},
	LomBank_LBPowerBrokerPolished = {
		Private = "LBPowerBrokerPolished",
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		Number = '69',
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-1545.17, -566.24, 24.85),
			Spawner = vector3(-1551.88, -581.38, 24.71),
			Deleter = vector3(-1538.56, -576.05, 24.71),
			Heading = 331.176
		}
	},
	-- End of Lom Bank Garages
	-- Start of Maze Bank West Garages
	MazeBankWest_Main = {
		Private = "MazeBankWest",
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		Number = '70',
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-1368.14, -468.01, 30.6),
			Spawner = vector3(-1376.93, -474.32, 30.5),
			Deleter = vector3(-1362.07, -471.98, 30.5),
			Heading = 97.95
		}
	},
	MazeBankWest_MBWOldSpiceWarm = {
		Private = "MBWOldSpiceWarm",
		Number = '71',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-1368.14, -468.01, 30.6),
			Spawner = vector3(-1376.93, -474.32, 30.5),
			Deleter = vector3(-1362.07, -471.98, 30.5),
			Heading = 97.95
		}
	},
	MazeBankWest_MBWOldSpiceClassical = {
		Private = "MBWOldSpiceClassical",
		Number = '72',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-1368.14, -468.01, 30.6),
			Spawner = vector3(-1376.93, -474.32, 30.5),
			Deleter = vector3(-1362.07, -471.98, 30.5),
			Heading = 97.95
		}
	},
	MazeBankWest_MBWOldSpiceVintage = {
		Private = "MBWOldSpiceVintage",
		Number = '73',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-1368.14, -468.01, 30.6),
			Spawner = vector3(-1376.93, -474.32, 30.5),
			Deleter = vector3(-1362.07, -471.98, 30.5),
			Heading = 97.95
		}
	},
	MazeBankWest_MBWExecutiveRich = {
		Private = "MBWExecutiveRich",
		Number = '74',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-1368.14, -468.01, 30.6),
			Spawner = vector3(-1376.93, -474.32, 30.5),
			Deleter = vector3(-1362.07, -471.98, 30.5),
			Heading = 97.95
		}
	},
	MazeBankWest_MBWExecutiveCool = {
		Private = "MBWExecutiveCool",
		Number = '75',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-1368.14, -468.01, 30.6),
			Spawner = vector3(-1376.93, -474.32, 30.5),
			Deleter = vector3(-1362.07, -471.98, 30.5),
			Heading = 97.95
		}
	},
	MazeBankWest_MBWExecutiveContrast = {
		Private = "MBWExecutiveContrast",
		Number = '76',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-1368.14, -468.01, 30.6),
			Spawner = vector3(-1376.93, -474.32, 30.5),
			Deleter = vector3(-1362.07, -471.98, 30.5),
			Heading = 97.95
		}
	},
	MazeBankWest_MBWPowerBrokerIce = {
		Private = "MBWPowerBrokerIce",
		Number = '77',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-1368.14, -468.01, 30.6),
			Spawner = vector3(-1376.93, -474.32, 30.5),
			Deleter = vector3(-1362.07, -471.98, 30.5),
			Heading = 97.95
		}
	},
	MazeBankWest_MBWPowerBrokerConvservative = {
		Private = "MBWPowerBrokerConvservative",
		Number = '78',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-1368.14, -468.01, 30.6),
			Spawner = vector3(-1376.93, -474.32, 30.5),
			Deleter = vector3(-1362.07, -471.98, 30.5),
			Heading = 97.95
		}
	},
	MazeBankWest_MBWPowerBrokerPolished = {
		Private = "MBWPowerBrokerPolished",
		Number = '79',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-1368.14, -468.01, 30.6),
			Spawner = vector3(-1376.93, -474.32, 30.5),
			Deleter = vector3(-1362.07, -471.98, 30.5),
			Heading = 97.95
		}
	},
	-- End of Maze Bank West Garages
	-- Start of Intergrity Way Garages
	IntegrityWay_Main = {
		Private = "IntegrityWay",
		Number = '80',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-14.1, -614.93, 34.86),
			Spawner = vector3(-7.35, -635.1, 34.72),
			Deleter = vector3(-37.57, -620.39, 34.07),
			Heading = 66.632
		}
	},
	IntegrityWay_IntegrityWay28 = {
		Private = "IntegrityWay28",
		Number = '81',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-14.1, -614.93, 34.86),
			Spawner = vector3(-7.35, -635.1, 34.72),
			Deleter = vector3(-37.57, -620.39, 34.07),
			Heading = 66.632
		}
	},
	IntegrityWay_IntegrityWay30 = {
		Private = "IntegrityWay30",
		Number = '82',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-14.1, -614.93, 34.86),
			Spawner = vector3(-7.35, -635.1, 34.72),
			Deleter = vector3(-37.57, -620.39, 34.07),
			Heading = 66.632
		}
	},
	-- End of Intergrity Way Garages
	-- Start of Dell Perro Heights Garages
	DellPerroHeights_Main = {
		Private = "DellPerroHeights",
		Number = '83',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-1477.15, -517.17, 33.74),
			Spawner = vector3(-1483.16, -505.1, 31.81),
			Deleter = vector3(-1452.61, -508.78, 30.58),
			Heading = 299.89
		}
	},
	DellPerroHeights_DellPerroHeightst4 = {
		Private = "DellPerroHeightst4",
		Number = '84',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-1477.15, -517.17, 33.74),
			Spawner = vector3(-1483.16, -505.1, 31.81),
			Deleter = vector3(-1452.61, -508.78, 30.58),
			Heading = 299.89
		}
	},
	DellPerroHeights_DellPerroHeightst7 = {
		Private = "DellPerroHeightst7",
		Number = '85',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-1477.15, -517.17, 33.74),
			Spawner = vector3(-1483.16, -505.1, 31.81),
			Deleter = vector3(-1452.61, -508.78, 30.58),
			Heading = 299.89
		}
	},
	-- End of Dell Perro Heights Garages
	-- Start of Milton Drive Garages
	MiltonDrive_Main = {
		Private = "MiltonDrive",
		Number = '86',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-795.96, 331.83, 84.5),
			Spawner = vector3(-800.49, 333.47, 84.5),
			Deleter = vector3(-791.75, 333.47, 84.5),
			Heading = 180.494
		}
	},
	MiltonDrive_Modern1Apartment = {
		Private = "Modern1Apartment",
		Number = '87',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-795.96, 331.83, 84.5),
			Spawner = vector3(-800.49, 333.47, 84.5),
			Deleter = vector3(-791.75, 333.47, 84.5),
			Heading = 180.494
		}
	},
	MiltonDrive_Modern2Apartment = {
		Private = "Modern2Apartment",
		Number = '88',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-795.96, 331.83, 84.5),
			Spawner = vector3(-800.49, 333.47, 84.5),
			Deleter = vector3(-791.75, 333.47, 84.5),
			Heading = 180.494
		}
	},
	MiltonDrive_Modern3Apartment = {
		Private = "Modern3Apartment",
		Number = '89',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-795.96, 331.83, 84.5),
			Spawner = vector3(-800.49, 333.47, 84.5),
			Deleter = vector3(-791.75, 333.47, 84.5),
			Heading = 180.494
		}
	},
	MiltonDrive_Mody1Apartment = {
		Private = "Mody1Apartment",
		Number = '90',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-795.96, 331.83, 84.5),
			Spawner = vector3(-800.49, 333.47, 84.5),
			Deleter = vector3(-791.75, 333.47, 84.5),
			Heading = 180.494
		}
	},
	MiltonDrive_Mody2Apartment = {
		Private = "Mody2Apartment",
		Number = '91',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-795.96, 331.83, 84.5),
			Spawner = vector3(-800.49, 333.47, 84.5),
			Deleter = vector3(-791.75, 333.47, 84.5),
			Heading = 180.494
		}
	},
	MiltonDrive_Mody3Apartment = {
		Private = "Mody3Apartment",
		Number = '92',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-795.96, 331.83, 84.5),
			Spawner = vector3(-800.49, 333.47, 84.5),
			Deleter = vector3(-791.75, 333.47, 84.5),
			Heading = 180.494
		}
	},
	MiltonDrive_Vibrant1Apartment = {
		Private = "Vibrant1Apartment",
		Number = '93',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-795.96, 331.83, 84.5),
			Spawner = vector3(-800.49, 333.47, 84.5),
			Deleter = vector3(-791.75, 333.47, 84.5),
			Heading = 180.494
		}
	},
	MiltonDrive_Vibrant2Apartment = {
		Private = "Vibrant2Apartment",
		Number = '94',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-795.96, 331.83, 84.5),
			Spawner = vector3(-800.49, 333.47, 84.5),
			Deleter = vector3(-791.75, 333.47, 84.5),
			Heading = 180.494
		}
	},
	MiltonDrive_Vibrant3Apartment = {
		Private = "Vibrant3Apartment",
		Number = '95',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-795.96, 331.83, 84.5),
			Spawner = vector3(-800.49, 333.47, 84.5),
			Deleter = vector3(-791.75, 333.47, 84.5),
			Heading = 180.494
		}
	},
	MiltonDrive_Sharp1Apartment = {
		Private = "Sharp1Apartment",
		Number = '96',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-795.96, 331.83, 84.5),
			Spawner = vector3(-800.49, 333.47, 84.5),
			Deleter = vector3(-791.75, 333.47, 84.5),
			Heading = 180.494
		}
	},
	MiltonDrive_Sharp2Apartment = {
		Private = "Sharp2Apartment",
		Number = '97',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-795.96, 331.83, 84.5),
			Spawner = vector3(-800.49, 333.47, 84.5),
			Deleter = vector3(-791.75, 333.47, 84.5),
			Heading = 180.494
		}
	},
	MiltonDrive_Sharp3Apartment = {
		Private = "Sharp3Apartment",
		Number = '98',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-795.96, 331.83, 84.5),
			Spawner = vector3(-800.49, 333.47, 84.5),
			Deleter = vector3(-791.75, 333.47, 84.5),
			Heading = 180.494
		}
	},
	MiltonDrive_Monochrome1Apartment = {
		Private = "Monochrome1Apartment",
		Number = '99',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-795.96, 331.83, 84.5),
			Spawner = vector3(-800.49, 333.47, 84.5),
			Deleter = vector3(-791.75, 333.47, 84.5),
			Heading = 180.494
		}
	},
	MiltonDrive_Monochrome2Apartment = {
		Private = "Monochrome2Apartment",
		Number = '100',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-795.96, 331.83, 84.5),
			Spawner = vector3(-800.49, 333.47, 84.5),
			Deleter = vector3(-791.75, 333.47, 84.5),
			Heading = 180.494
		}
	},
	MiltonDrive_Monochrome3Apartment = {
		Private = "Monochrome3Apartment",
		Number = '101',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-795.96, 331.83, 84.5),
			Spawner = vector3(-800.49, 333.47, 84.5),
			Deleter = vector3(-791.75, 333.47, 84.5),
			Heading = 180.494
		}
	},
	MiltonDrive_Seductive1Apartment = {
		Private = "Seductive1Apartment",
		Number = '102',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-795.96, 331.83, 84.5),
			Spawner = vector3(-800.49, 333.47, 84.5),
			Deleter = vector3(-791.75, 333.47, 84.5),
			Heading = 180.494
		}
	},
	MiltonDrive_Seductive2Apartment = {
		Private = "Seductive2Apartment",
		Number = '103',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-795.96, 331.83, 84.5),
			Spawner = vector3(-800.49, 333.47, 84.5),
			Deleter = vector3(-791.75, 333.47, 84.5),
			Heading = 180.494
		}
	},
	MiltonDrive_Seductive3Apartment = {
		Private = "Seductive3Apartment",
		Number = '104',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-795.96, 331.83, 84.5),
			Spawner = vector3(-800.49, 333.47, 84.5),
			Deleter = vector3(-791.75, 333.47, 84.5),
			Heading = 180.494
		}
	},
	MiltonDrive_Regal1Apartment = {
		Private = "Regal1Apartment",
		Number = '105',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-795.96, 331.83, 84.5),
			Spawner = vector3(-800.49, 333.47, 84.5),
			Deleter = vector3(-791.75, 333.47, 84.5),
			Heading = 180.494
		}
	},
	MiltonDrive_Regal2Apartment = {
		Private = "Regal2Apartment",
		Number = '106',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-795.96, 331.83, 84.5),
			Spawner = vector3(-800.49, 333.47, 84.5),
			Deleter = vector3(-791.75, 333.47, 84.5),
			Heading = 180.494
		}
	},
	MiltonDrive_Regal3Apartment = {
		Private = "Regal3Apartment",
		Number = '107',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-795.96, 331.83, 84.5),
			Spawner = vector3(-800.49, 333.47, 84.5),
			Deleter = vector3(-791.75, 333.47, 84.5),
			Heading = 180.494
		}
	},
	MiltonDrive_Aqua1Apartment = {
		Private = "Aqua1Apartment",
		Number = '108',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-795.96, 331.83, 84.5),
			Spawner = vector3(-800.49, 333.47, 84.5),
			Deleter = vector3(-791.75, 333.47, 84.5),
			Heading = 180.494
		}
	},
	MiltonDrive_Aqua2Apartment = {
		Private = "Aqua2Apartment",
		Number = '109',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-795.96, 331.83, 84.5),
			Spawner = vector3(-800.49, 333.47, 84.5),
			Deleter = vector3(-791.75, 333.47, 84.5),
			Heading = 180.494
		}
	},
	MiltonDrive_Aqua3Apartment = {
		Private = "Aqua3Apartment",
		Number = '110',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-795.96, 331.83, 84.5),
			Spawner = vector3(-800.49, 333.47, 84.5),
			Deleter = vector3(-791.75, 333.47, 84.5),
			Heading = 180.494
		}
	},
	-- End of Milton Drive Garages
	-- Start of Single Garages
	RichardMajesticApt2_Main = {
		Private = "RichardMajesticApt2",
		Number = '111',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-887.5, -349.58, 33.53),
			Spawner = vector3(-886.03, -343.78, 33.53),
			Deleter = vector3(-894.32, -349.33, 33.53),
			Heading = 206.79
		}
	},
	WildOatsDrive_Main = {
		Private = "WildOatsDrive",
		Number = '112',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-178.65, 503.45, 135.85),
			Spawner = vector3(-189.98, 505.8, 133.48),
			Deleter = vector3(-189.28, 500.56, 132.93),
			Heading = 282.62
		}
	},
	WhispymoundDrive_Main = {
		Private = "WhispymoundDrive",
		Number = '113',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(123.65, 565.75, 183.04),
			Spawner = vector3(130.11, 571.47, 182.42),
			Deleter = vector3(131.97, 566.77, 181.95),
			Heading = 270.71
		}
	},
	NorthConkerAvenue2044_Main = {
		Private = "NorthConkerAvenue2044",
		Number = '114',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(348.18, 443.01, 146.7),
			Spawner = vector3(358.39, 437.06, 144.27),
			Deleter = vector3(351.38, 438.86, 145.66),
			Heading = 285.911
		}
	},
	NorthConkerAvenue2045_Main = {
		Private = "NorthConkerAvenue2045",
		Number = '115',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(370.69, 430.76, 144.11),
			Spawner = vector3(392.88, 434.54, 142.17),
			Deleter = vector3(389.72, 429.95, 141.81),
			Heading = 264.94
		}
	},
	HillcrestAvenue2862_Main = {
		Private = "HillcrestAvenue2862",
		Number = '116',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-688.71, 597.57, 142.64),
			Spawner = vector3(-683.72, 609.88, 143.28),
			Deleter = vector3(-685.26, 601.08, 142.36),
			Heading = 338.06
		}
	},
	HillcrestAvenue2868_Main = {
		Private = "HillcrestAvenue2868",
		Number = '117',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-752.75, 624.90, 141.2),
			Spawner = vector3(-749.32, 628.61, 141.48),
			Deleter = vector3(-754.28, 631.58, 141.2),
			Heading = 197.14
		}
	},
	HillcrestAvenue2874_Main = {
		Private = "HillcrestAvenue2874",
		Number = '118',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-859.01, 695.95, 147.93),
			Spawner = vector3(-863.68, 698.72, 147.05),
			Deleter = vector3(-855.66, 698.77, 147.81),
			Heading = 341.77
		}
	},
	MadWayneThunder_Main = {
		Private = "MadWayneThunder",
		Number = '119',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-1290.95, 454.52, 96.66),
			Spawner = vector3(-1297.62, 459.28, 96.48),
			Deleter = vector3(-1298.09, 468.95, 96.0),
			Heading = 285.652
		}
	},
	TinselTowersApt12_Main = {
		Private = "TinselTowersApt12",
		Number = '120',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-616.74, 56.38, 42.73),
			Spawner = vector3(-620.59, 60.10, 42.73),
			Deleter = vector3(-621.13, 52.69, 42.73),
			Heading = 109.316
		}
	},
	-- End of Single Garages
	-- Start of VENT Custom Garages
	MedEndApartment1_Main = {
		Private = "MedEndApartment1",
		Number = '121',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(240.23, 3102.84, 41.49),
			Spawner = vector3(233.58, 3094.29, 41.49),
			Deleter = vector3(237.52, 3112.63, 41.39),
			Heading = 93.91
		}
	},
	MedEndApartment2_Main = {
		Private = "MedEndApartment2",
		Number = '122',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(246.08, 3174.63, 41.72),
			Spawner = vector3(234.15, 3164.37, 41.54),
			Deleter = vector3(240.72, 3165.53, 41.65),
			Heading = 102.03
		}
	},
	MedEndApartment3_Main = {
		Private = "MedEndApartment3",
		Number = '123',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(984.92, 2668.95, 39.06),
			Spawner = vector3(993.96, 2672.68, 39.06),
			Deleter = vector3(994.04, 2662.1, 39.13),
			Heading = 0.61
		}
	},
	MedEndApartment4_Main = {
		Private = "MedEndApartment4",
		Number = '124',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(196.49, 3027.48, 42.89),
			Spawner = vector3(203.1, 3039.47, 42.08),
			Deleter = vector3(192.24, 3037.95, 42.89),
			Heading = 271.3
		}
	},
	MedEndApartment5_Main = {
		Private = "MedEndApartment5",
		Number = '125',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(1724.49, 4638.13, 42.31),
			Spawner = vector3(1723.98, 4630.19, 42.23),
			Deleter = vector3(1733.66, 4635.08, 42.24),
			Heading = 117.88
		}
	},
	MedEndApartment6_Main = {
		Private = "MedEndApartment6",
		Number = '126',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(1670.76, 4740.99, 41.08),
			Spawner = vector3(1673.47, 4756.51, 40.91),
			Deleter = vector3(1668.46, 4750.83, 40.88),
			Heading = 12.82
		}
	},
	MedEndApartment7_Main = {
		Private = "MedEndApartment7",
		Number = '127',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(15.24, 6573.38, 31.72),
			Spawner = vector3(16.77, 6581.68, 31.42),
			Deleter = vector3(10.45, 6588.04, 31.47),
			Heading = 222.6
		}
	},
	MedEndApartment8_Main = {
		Private = "MedEndApartment8",
		Number = '128',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-374.73, 6187.06, 30.54),
			Spawner = vector3(-377.97, 6183.73, 30.49),
			Deleter = vector3(-383.31, 6188.85, 30.49),
			Heading = 223.71
		}
	},
	MedEndApartment9_Main = {
		Private = "MedEndApartment9",
		Number = '129',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-24.6, 6605.99, 30.45),
			Spawner = vector3(-16.0, 6607.74, 30.18),
			Deleter = vector3(-9.36, 6598.86, 30.47),
			Heading = 35.31
		}
	},
	MedEndApartment10_Main = {
		Private = "MedEndApartment10",
		Number = '130',
		VehicleType = 0,		-- 0 = Car, 1 = Boats(14), 2 = Air(15, 16)
		StoreDamaged = true,	-- true = store damages, false = repair before storage
		Locations = {			-- Locations of the garage
			Marker = vector3(-365.18, 6323.95, 28.9),
			Spawner = vector3(-359.49, 6327.41, 28.83),
			Deleter = vector3(-353.47, 6334.57, 28.83),
			Heading = 218.58
		}
	}
	-- End of VENT Custom Garages
}
-- End of Private Cars
