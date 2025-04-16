return {
    dropCheaters = true, -- If cheaters should be dropped/kicked from the server for exploiting events

    globalCooldown = 5, -- Time in minutes for global cooldown (Set to false for no cooldown)
    policeRequired = false, -- Police required to start chopping vehicle
    policeJob = 'police',

    policeDispatch = function(ped, vehicle)
        -- PS dispatch example
        --exports['ps-dispatch']:VehicleTheft(vehicle)
    end,

    chopShops = {
        strawberry = {
            securityCoords = vec3(480.8271, -1317.6116, 29.2029), -- Put in the middle of the chopping zone
            blip = {     --  false, to disable
                coords = vec3(480.8271, -1317.6116, 29.2029),
                sprite = 225, -- https://docs.fivem.net/docs/game-references/blips/#blips
                color = 59, -- https://docs.fivem.net/docs/game-references/blips/#blip-colors
                scale = 0.5, -- float
                name = 'Chop Shop'
            },
            zonePoints = {
				vec3(470.0, -1310.0, 29.0),
				vec3(479.0, -1328.0, 29.0),
				vec3(489.0, -1324.0, 29.0),
				vec3(479.0, -1305.0, 29.0),
            }
        },
        elburro = {
            securityCoords = vec3(1563.7638, -2169.2393, 77.5270), -- Put in the middle of the chopping zone
            blip = {
                coords = vec3(1563.7638, -2169.2393, 77.5270),
                sprite = 225, -- https://docs.fivem.net/docs/game-references/blips/#blips
                color = 59, -- https://docs.fivem.net/docs/game-references/blips/#blip-colors
                scale = 0.5, -- float
                name = 'Chop Shop'
            },
            zonePoints = {
				vec3(1559.0, -2156.0, 78.0),
				vec3(1574.0, -2157.0, 78.0),
				vec3(1570.0, -2185.0, 78.0),
				vec3(1553.0, -2181.0, 78.0),
            }
        },
        docks = {
            securityCoords = vec3(1204.6665, -3117.0439, 5.5403), -- Put in the middle of the chopping zone
            blip = {
                coords = vec3(1204.6665, -3117.0439, 5.5403),
                sprite = 225, -- https://docs.fivem.net/docs/game-references/blips/#blips
                color = 59, -- https://docs.fivem.net/docs/game-references/blips/#blip-colors
                scale = 0.5, -- float
                name = 'Chop Shop'
            },
            zonePoints = {
				vec3(470.0, -1310.0, 29.0),
				vec3(479.0, -1328.0, 29.0),
				vec3(489.0, -1324.0, 29.0),
				vec3(479.0, -1305.0, 29.0),
            }
        },
        lapuerta = {
            securityCoords = vec3(-494.6583, -1646.8914, 17.7978), -- Put in the middle of the chopping zone
            blip = {
                coords = vec3(-494.6583, -1646.8914, 17.7978),
                sprite = 225, -- https://docs.fivem.net/docs/game-references/blips/#blips
                color = 59, -- https://docs.fivem.net/docs/game-references/blips/#blip-colors
                scale = 0.5, -- float
                name = 'Chop Shop'
            },
			zonePoints = {
				vec3(-482.0, -1646.0, 18.0),
				vec3(-495.0, -1640.0, 18.0),
				vec3(-501.0, -1650.0, 18.0),
				vec3(-488.0, -1657.0, 18.0),
            }
        },
        grapeseed = {
            securityCoords = vec3(2488.3872, 4961.5010, 44.7983), -- Put in the middle of the chopping zone
            blip = {
                coords = vec3(2488.3872, 4961.5010, 44.7983),
                sprite = 225, -- https://docs.fivem.net/docs/game-references/blips/#blips
                color = 59, -- https://docs.fivem.net/docs/game-references/blips/#blip-colors
                scale = 0.5, -- float
                name = 'Chop Shop'
            },
            zonePoints = {
				vec3(2481.75, 4958.25, 45.0),
				vec3(2485.25, 4954.75, 45.0),
				vec3(2497.0, 4966.25, 45.0),
				vec3(2493.0, 4969.25, 45.0),
            }
        },
        paletobay = {
            securityCoords = vec3(430.2763, 6468.0605, 28.7730), -- Put in the middle of the chopping zone
            blip = {
                coords = vec3(430.2763, 6468.0605, 28.7730),
                sprite = 225, -- https://docs.fivem.net/docs/game-references/blips/#blips
                color = 59, -- https://docs.fivem.net/docs/game-references/blips/#blip-colors
                scale = 0.5, -- float
                name = 'Chop Shop'
            },
			zonePoints = {
				vec3(418.0, 6470.0, 29.0),
				vec3(439.0, 6453.0, 29.0),
				vec3(446.0, 6461.0, 29.0),
				vec3(426.0, 6479.0, 29.0),
            }
        }
    },

    blockedVehicleTypes = { -- Its advised you dont change this unless you know what your doing. (Removing it may break the script as bikes cannot be chopped)
        'bike',
        'heli',
        'boat'
    },

    rewards = { -- Add rewards for each part.

        ["stevo_chopshop:1"] = { -- Bonnet
            {item = 'car-hood', amount = 1},
            {item = 'scrapmetal', amount = 1},
        },

        ["stevo_chopshop:2"] = { -- Front dri Door
            {item = 'car-door', amount = 1},
            {item = 'scrapplastic', amount = 2},
            {item = 'scrapglass', amount = 1},
        },

        ["stevo_chopshop:3"] = { -- Front pas door
            {item = 'car-door', amount = 1},
            {item = 'scrapplastic', amount = 2},
            {item = 'scrapglass', amount = 1},
        },

        ["stevo_chopshop:4"] = { -- Back dri Door
            {item = 'car-door', amount = 1},
            {item = 'scrapplastic', amount = 2},
            {item = 'scrapglass', amount = 1},
        },

        ["stevo_chopshop:5"] = { -- Back pas Door
            {item = 'car-door', amount = 1},
            {item = 'scrapplastic', amount = 2},
            {item = 'scrapglass', amount = 1},
        },

        ["stevo_chopshop:6"] = { -- Boot
            {item = 'car-trunk', amount = 1},
            {item = 'scrapmetal', amount = 2},
            {item = 'scraprubber', amount = 1},
        },

        ["stevo_chopshop:7"] = { -- Front dri wheel
            {item = 'car-rim', amount = 1},
            {item = 'car-tire', amount = 1},
        },

        ["stevo_chopshop:8"] = { -- Front pas wheel
            {item = 'car-rim', amount = 1},
            {item = 'car-tire', amount = 1},
        },

        ["stevo_chopshop:9"] = {-- Back dri wheel
            {item = 'car-rim', amount = 1},
            {item = 'car-tire', amount = 1},
        },

        ["stevo_chopshop:10"] = {-- Back pas wheel
            {item = 'car-rim', amount = 1},
            {item = 'car-tire', amount = 1},
        },

        ["stevo_chopshop:11"] = { -- Whole chassis
            {item = 'scrapelectronics', amount = 4},
            {item = 'scrapglass', amount = 2},
            {item = 'scrapplastic', amount = 2},
            {item = 'scrapsteel', amount = 2},
            {item = 'car-battery', amount = 1},
            {item = 'car-radio', amount = 1},
            {item = 'car-speakers', amount = 4},
            {item = 'car-seat', amount = 2},
        },
    },

    skillchecks = {
        ["stevo_chopshop:1"] = {'easy', 'easy', 'easy', 'medium'}, -- Bonnet
        ["stevo_chopshop:2"] = {'easy', 'easy', 'easy', 'easy'}, -- Front dri Door
        ["stevo_chopshop:3"] = {'easy', 'easy', 'easy', 'easy'}, -- Front pas Door
        ["stevo_chopshop:4"] = {'easy', 'easy', 'easy', 'easy'}, -- Back dri Door
        ["stevo_chopshop:5"] = {'easy', 'easy', 'easy', 'easy'}, -- Back pas Door
        ["stevo_chopshop:6"] = {'easy', 'easy', 'easy', 'medium'}, -- Boot
        ["stevo_chopshop:7"] = {'easy', 'easy', 'easy'}, -- Front dri wheel
        ["stevo_chopshop:8"] = {'easy', 'easy', 'easy'}, -- Front pas wheel
        ["stevo_chopshop:9"] = {'easy', 'easy', 'easy'}, -- Back dri wheel
        ["stevo_chopshop:10"] = {'easy', 'easy', 'easy'}, -- Back pas wheel
        ["stevo_chopshop:11"] = {'easy', 'easy', 'easy', 'medium', 'medium'}, -- Whole chassis
    },

    duration = {
        ["stevo_chopshop:1"] = 9500, -- Bonnet
        ["stevo_chopshop:2"] = 8500, -- Front dri Door
        ["stevo_chopshop:3"] = 8500, -- Front pas Door
        ["stevo_chopshop:4"] = 8500, -- Back dri Door
        ["stevo_chopshop:5"] = 8500, -- Back pas Door
        ["stevo_chopshop:6"] = 7500, -- Boot
        ["stevo_chopshop:7"] = 5500, -- Front dri wheel
        ["stevo_chopshop:8"] = 5500, -- Front pas wheel
        ["stevo_chopshop:9"] = 5500, -- Back dri wheel
        ["stevo_chopshop:10"] = 5500, -- Back pas wheel
        ["stevo_chopshop:11"] = 20000, -- Whole chassis
    },

    debug = false, -- Enabling debug prints and zones.
    
}
