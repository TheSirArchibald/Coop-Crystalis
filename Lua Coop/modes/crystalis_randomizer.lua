-- STOP! Are you about to edit this file?
-- If you change ANYTHING, please please PLEASE run the following script:
-- https://www.guidgenerator.com/online-guid-generator.aspx
-- and put in a new GUID in the "guid" field.

-- Author: thesirarchibald
-- Data source: 
-- This file is available under Creative Commons CC0 


local HUD1 = 0x6220
local HUD2 = 0x6221





return {
	guid = "ab0b98b9-b641-4996-9089-df78f30c4780",
	format = "1.1",
	name = "Crystalis (sync items only)",
	match = {"stringtest", addr=0x9716, value="RANDOMIZER"},

	running = {"test", addr = 0x40, gte = 0, lte = 1}, -- Crystalis data. 0x00 Shire Starup 0x01 In-Game 0x02 Start Video 0x03 MainMenu 0x04 Tower Cutscene.
	

	sync = {
		-- Crystalis data 
	
		
		--Scaling
		[0x648F] = {name="Scaling Up", 
				kind=function(value, previousValue)
					return (value ~= previousValue), (value) 
					end,

				receiveTrigger=function(value, previousValue) 
				if (value ~= previousValue) then
					memory.writebyte(HUD2, 1)
					memory.writebyte(HUD1, 1)
				end
				
			end
		},

		--LevelUp
		[0x0421] = {name="Level Up", kind=function(value, previousValue)
					return (value ~= previousValue), (value) 
					end	},



		--Health Capacity
		[0x03C0] = {
				kind=function(value, previousValue)
					return (value ~= previousValue), (value) 
					end,

				receiveTrigger=function(value, previousValue) 
				if (value ~= previousValue) then
					memory.writebyte(HUD2, 1)
					memory.writebyte(HUD1, 1)
				end
				
			end
		},

		--Magic Capacity
		[0x0709] = {
				kind=function(value, previousValue)
					return (value ~= previousValue), (value) 
					end,

				receiveTrigger=function(value, previousValue) 
				if (value ~= previousValue) then
					memory.writebyte(HUD2, 1)
					memory.writebyte(HUD1, 1)
				end
				
			end
		},

		--Current Health
		[0x03C1] = {
				--{kind="delta", deltaMin=5, deltaMax=0xFF}
		
		--kind=function(value, previousValue)
		--			return (value ~= previousValue), (value) 
		--			end,

				--receiveTrigger=function(value, previousValue) 
				--if (value ~= previousValue) then
				--	memory.writebyte(HUD2, 1)
				--	memory.writebyte(HUD1, 1)
				--end
				
			--end
		},

		--Magic Current
		[0x0708] = {
				kind=function(value, previousValue)
					return (value ~= previousValue), (value) 
					end,

				receiveTrigger=function(value, previousValue) 
				if (value ~= previousValue) then
					memory.writebyte(HUD2, 1)
					memory.writebyte(HUD1, 1)
				end
				
			end
		},

		--Money 1 Byte
		[0x0702] = {
		kind=function(value, previousValue)
					return (value ~= previousValue), (value) 
					end,

				receiveTrigger=function(value, previousValue) 
				if (value ~= previousValue) then
					memory.writebyte(HUD2, 1)
					memory.writebyte(HUD1, 1)
				end
				
			end
		},

		--Money 2 Byte
		[0x0703] = {
		kind=function(value, previousValue)
					return (value ~= previousValue), (value) 
					end,

				receiveTrigger=function(value, previousValue) 
				if (value ~= previousValue) then
					memory.writebyte(HUD2, 1)
					memory.writebyte(HUD1, 1)
				end
				
			end
		},

		--Experience1 Byte
		[0x0704] = {
		kind=function(value, previousValue)
					return (value ~= previousValue), (value) 
					end,

				receiveTrigger=function(value, previousValue) 
				if (value ~= previousValue) then
					memory.writebyte(HUD2, 1)
					memory.writebyte(HUD1, 1)
				end
				
			end
		},

		--Experience2 Byte
		[0x0705] = {
		kind=function(value, previousValue)
					return (value ~= previousValue), (value) 
					end,

				receiveTrigger=function(value, previousValue) 
				if (value ~= previousValue) then
					memory.writebyte(HUD2, 1)
					memory.writebyte(HUD1, 1)
				end
				
			end
		},

		--Swords
		[0x6430] = {name="Wind Sword", kind="low"},
		[0x6431] = {name="Fire Sword", kind="low"},
		[0x6432] = {name="Water Sword", kind="low"},
		[0x6433] = {name="Thunder Sword", kind="low"},


		--Armors
		[0x6434] = {name="New Armor"},
		[0x6435] = {name="New Armor"},
		[0x6436] = {name="New Armor"},
		[0x6437] = {name="New Armor"},

		--Shields
		[0x6438] = {name="New Shield"},
		[0x6439] = {name="New Shield"},
		[0x643A] = {name="New Shield"},
		[0x643B] = {name="New Shield"},
		
		
		-- Power upgrades
		[0x643C] = {name="Wind Power Upgrade"},
		[0x643D] = {name="Fire Power Upgrade"},
		[0x643E] = {name="Water Power Upgrade"},
		[0x643F] = {name="Thunder Power Upgrade"},

		

		--Consumables
		[0x6440] = {},
		[0x6441] = {},
		[0x6442] = {},
		[0x6443] = {},
		[0x6444] = {},
		[0x6445] = {},
		[0x6446] = {},
		[0x6447] = {},

		--Worn items

		[0x6448] = {},
		[0x6449] = {},
		[0x644A] = {},
		[0x644B] = {},
		[0x644C] = {},
		[0x644D] = {},
		[0x644E] = {},
		[0x644F] = {},

		--Key Turnin items
		[0x6450] = {},
		[0x6451] = {},
		[0x6452] = {},
		[0x6453] = {},
		[0x6454] = {},
		[0x6455] = {},
		[0x6456] = {},
		[0x6457] = {},

		--Overflow Needs to be Added
		
		--Spells
		[0x6458] = {},
		[0x6459] = {},
		[0x645A] = {},
		[0x645B] = {},
		[0x645C] = {},
		[0x645D] = {},
		[0x645E] = {},
		[0x645F] = {},

		
		--Not sure what kind of flags (Triggers)
		[0x6480] = {					
					},
		[0x6481] = {				
					},
		[0x6482] = {					
					},
		[0x6483] = {					
					},
		[0x6484] = {					
					},
		[0x6485] = {
					},
		[0x6486] = {					
					},
		[0x6487] = {					
					},
		[0x6488] = {					
					},
		[0x6489] = {					
					},
		[0x648A] = {					
					},
		[0x648B] = {					
					},
		[0x648C] = {					
					},
		[0x648D] = {					
					},
		[0x648E] = {					
					},
		-- Remove this is Scaling
		--[0x648F] 

		--0X649X Not Used		
		
		--Chest/Item Locations

		[0X64A0] = {					
					},
		[0X64A1] = {					
					},
		[0X64A2] = {					
					},
		[0X64A3] = {					
					},
		[0X64A4] = {					
					},
		[0X64A5] = {				
					},
		[0X64A6] = {				
					},
		[0X64A7] = {					
					},
		[0X64A8] = {					
					},
		[0X64A9] = {					
					},
		[0X64AA] = {				
					},
		[0X64AB] = {					
					},
		[0X64AC] = {					
					},
		[0X64AD] = {					
					},
		[0X64AE] = {				
					},
		[0X64AF] = {					
					},
		
		
		--64BX Not Used

		--Converstation Flags and Boss Flags
		[0X64C0] = {},
		[0X64C1] = {},		
		[0X64C2] = {},	
		[0X64C3] = {},		
		[0X64C4] = {},	
		[0X64C5] = {},	
		[0X64C6] = {},	
		[0X64C7] = {},	
		[0X64C8] = {},		
		[0X64C9] = {},	
		[0X64CA] = {},		
		[0X64CB] = {},	
		[0X64CC] = {},	
		[0X64CD] = {},	
		[0X64CE] = {},	
		[0X64CF] = {},	

					
		--Walls/Crossings			
					
		[0X64D0] = {					
					},
		[0X64D1] = {					
					},
		[0X64D2] = {				
					},
		[0X64D3] = {					
					},
		[0X64D4] = {					
					},
		[0X64D5] = {					
					},
		[0X64D6] = {					
					},
		[0X64D7] = {					
					},
		[0X64D8] = {				
					},
		[0X64D9] = {					
					},
		[0X64DA] = {					
					},
		[0X64DB] = {					
					},
		[0X64DC] = {					
					},
		[0X64DD] = {					
					},
		[0X64DE] = {					
					},
		[0X64DF] = {					
					},
		
	},
	}
