-- STOP! Are you about to edit this file?
-- If you change ANYTHING, please please PLEASE run the following script:
-- https://www.guidgenerator.com/online-guid-generator.aspx
-- and put in a new GUID in the "guid" field.

-- Author: thesirarchibald
-- Data source: 
-- This file is available under Creative Commons CC0 

return {
	guid = "ab0b98b9-b641-4996-9089-df78f30c4780",
	format = "1.1",
	name = "Crystalis (sync items only)",
	match = {"stringtest", addr=0x9716, value="RANDOMIZER"},

	running = {"test", addr = 0x40, gte = 0x00, lte = 0x01}, -- Crystalis data. 0x00 Shire Starup 0x01 In-Game 0x02 Start Video 0x03 MainMenu 0x04 Tower Cutscene.
	sync = {
		-- Crystalis data 
		-- multi-items
	

		-- singular items (which includes the boomarang for some reason)
		[0x648F] = {name="Scaling Up", kind="high"},
		--[0x0421] = {name="Level Up", kind="high"},
		--[0x03C0] = {name="Health Capacity Increased", kind="high"},
		--[0x0709] = {name="Magic Capacity Increased", kind="high"},
		--[0x03C1] = {name="Health Current"},
		--[0x0708] = {name="Magic Current"},
		--[0x0702] = {name="Money1"},
		--[0x0703] = {name="Money2"},
		--[0x0704] = {name="Experience Current"},

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

		--Overflow Need to Add
		
		--Spells
		[0x6458] = {},
		[0x6459] = {},
		[0x645A] = {},
		[0x645B] = {},
		[0x645C] = {},
		[0x645D] = {},
		[0x645E] = {},
		[0x645F] = {},

		
		--Not sure what kind of flags
		[0x6480] = {
					nameBitmap={"Flag1 Bit1", "Flag1 Bit2", "Flag1 Bit3", "Flag1 Bit4", "Flag1 Bit5", "Flag1 Bit6", "Flag1 Bit7", "Flag1 Bit8"},
					kind="bitOr"
					},
		[0x6481] = {
					nameBitmap={"Flag2 Bit1", "Flag2 Bit2", "Windmill Start", "Sun Statue Broke", "Flag2 Bit5", "Prison Open with Key", "Moon Statue Broke", "Flag2 Bit8"},
					kind="bitOr"
					},
		[0x6482] = {
					nameBitmap={"Queen Turn in at Amazones", "Talk to Queen in Amazones", "Flag3 Bit3", "Flag3 Bit4", "Flag3 Bit5", "Flag3 Bit6", "Flag3 Bit7", "Flag3 Bit8"},
					kind="bitOr"
					},
		[0x6483] = {
					nameBitmap={"Behind Queen Chambers?", "Flag4 Bit2", "Flag4 Bit3", "Flag4 Bit4", "Flag4 Bit5", "Flag4 Bit6", "Flag4 Bit7", "Flag4 Bit8"},
					kind="bitOr"
					},
		[0x6484] = {
					nameBitmap={"Portoa Queen Location in Town", "Boat can be used", "Flag5 Bit3", "Flag5 Bit4", "Flag5 Bit5", "Flag5 Bit6", "Flag5 Bit7", "Shyron Massecure"},
					kind="bitOr"
					},
		[0x6485] = {
					nameBitmap={"Change at Amazones and Talk to Queen in Girl Form", "Flag6 Bit2", "Swan Gate Flag?", "Change before Shyron", "Another Kensu Swan Flag and Change at Amazones", "Flag6 Bit6", "Flute of Lime Statue People  Converstation 1", "Flag6 Bit8"},
					kind="bitOr"
					},
		[0x6486] = {
					nameBitmap={"Flag7 Bit1", "Flag7 Bit2", "Kensu Ivory Turnin", "Flag7 Bit4", "Waterfall Akahana Converstation", "Waterfall Akahana Converstation 2", "Flag7 Bit7", "Flag7 Bit8"},
					kind="bitOr"
					},
		[0x6487] = {
					nameBitmap={"Zebu Wall Break 3 of 3", "Flag8 Bit2", "Zebu near Leaf Converstation", "Zebu at Temple Converstation", "Flag8 Bit5", "Flag8 Bit6", "Kensu Flag Swan Dancehall", "Flag8 Bit8"},
					kind="bitOr"
					},
		[0x6488] = {
					nameBitmap={"Flag9 Bit1", "Flag9 Bit2", "Flag9 Bit3", "Portoa Queen First Converstation 1 of 2", "Portoa Queen First Converstation 2 of 2", "Flag9 Bit6", "Insect Fight", "Flag9 Bit8"},
					kind="bitOr"
					},
		[0x6489] = {
					nameBitmap={"Flag10 Bit1", "Flag10 Bit2", "Boat Owner Open Converstation", "Flag10 Bit4", "Flag10 Bit5", "Flag10 Bit6", "Flag10 Bit7", "Flag10 Bit8"},
					kind="bitOr"
					},
		[0x648A] = {
					nameBitmap={"Akahana Statue Turnin", "Flag11 Bit2", "Flag11 Bit3", "Flag11 Bit4", "Flute of Lime Statue People Despawn", "Zebu in Goa", "Tornel in Goa", "Asian Goa"},
					kind="bitOr"
					},
		[0x648B] = {
					nameBitmap={"Mado 1 Spawn?", "Flag12 Bit2", "Zebu Wall Break 1 of 3", "Sabre North Guard Area 1 of 2", "Zebu Wall Break 2 of 3", "Elder Converstation on Sabre", "Sabre North Guard Message 1", "Sabre North Guard Area 2 of 2"},
					kind="bitOr"
					},
		[0x648C] = {
					nameBitmap={"Flag13 Bit1", "Stom in Swan Converstation", "Scared Townman Converstation", "Kensu Swan Pub 2 of 2", "Flute of Lime Statue People 1", "Flag13 Bit6", "Flag13 Bit7", "Flag13 Bit8"},
					kind="bitOr"
					},
		[0x648D] = {
					nameBitmap={"Flag14 Bit1", "Flag14 Bit2", "Flag14 Bit3", "Flag14 Bit4", "Flag14 Bit5", "Flag14 Bit6", "Riding the Dolphin", "Flag14 Bit8"},
					kind="bitOr"
					},
		[0x648E] = {
					nameBitmap={"Kensu Swan Pub 1 of 2", "Kensu Flag Swan Dancehall", "Flag15 Bit3", "Flag15 Bit4", "Flag15 Bit5", "Flag15 Bit6", "Flag15 Bit7", "Flute of Lime Statue People 2"},
					kind="bitOr"
					},
		-- Remove this is Scaling
		--[0x648F] = {nameBitmap={"Leaf Elder Converstation and ?Kensu Hut?", "Wind Cave Entrance Message", "Flag16 Bit3 = Wind Upgrade? and Kensu Ivory", "Flag16 Bit4 = Shell Flute?, Jump River in Styx (Ivory Statue?)?", "Flag16 Bit5", "Flag16 Bit6", "Flag16 Bit7", "Flag16 Bit8"}, kind="bitOr"},

		--Others flags 90 9F
		[0x6490] = {
					nameBitmap={"2Flag1 Bit1", "2Flag1 Bit2", "2Flag1 Bit3", "2Flag1 Bit4", "2Flag1 Bit5", "2Flag1 Bit6", "2Flag1 Bit7", "2Flag1 Bit8"},
					kind="bitOr"
					},
		[0x6491] = {
					nameBitmap={"2Flag2 Bit1", "2Flag2 Bit2", "2Flag2 Bit3", "2Flag2 Bit4", "2Flag2 Bit5", "2Flag2 Bit6", "2Flag2 Bit7", "2Flag2 Bit8"},
					kind="bitOr"
					},
		[0x6492] = {
					nameBitmap={"2Flag3 Bit1", "2Flag3 Bit2", "2Flag3 Bit3", "2Flag3 Bit4", "2Flag3 Bit5", "2Flag3 Bit6", "2Flag3 Bit7", "2Flag3 Bit8"},
					kind="bitOr"
					},
		[0x6493] = {
					nameBitmap={"2Flag4 Bit1", "2Flag4 Bit2", "2Flag4 Bit3", "2Flag4 Bit4", "2Flag4 Bit5", "2Flag4 Bit6", "2Flag4 Bit7", "2Flag4 Bit8"},
					kind="bitOr"
					},
		[0x6494] = {
					nameBitmap={"2Flag5 Bit1", "2Flag5 Bit2", "2Flag5 Bit3", "2Flag5 Bit4", "2Flag5 Bit5", "2Flag5 Bit6", "2Flag5 Bit7", "2Flag5 Bit8"},
					kind="bitOr"
					},
		[0x6495] = {
					nameBitmap={"2Flag6 Bit1", "2Flag6 Bit2", "2Flag6 Bit3", "2Flag6 Bit4", "2Flag6 Bit5", "2Flag6 Bit6", "2Flag6 Bit7", "2Flag6 Bit8"},
					kind="bitOr"
					},
		[0x6496] = {
					nameBitmap={"2Flag7 Bit1", "2Flag7 Bit2", "2Flag7 Bit3", "2Flag7 Bit4", "2Flag7 Bit5", "2Flag7 Bit6", "2Flag7 Bit7", "2Flag7 Bit8"},
					kind="bitOr"
					},
		[0x6497] = {
					nameBitmap={"2Flag8 Bit1", "2Flag8 Bit2", "2Flag8 Bit3", "2Flag8 Bit4", "2Flag8 Bit5", "2Flag8 Bit6", "2Flag8 Bit7", "2Flag8 Bit8"},
					kind="bitOr"
					},
		[0x6498] = {
					nameBitmap={"2Flag9 Bit1", "2Flag9 Bit2", "2Flag9 Bit3", "2Flag9 Bit4", "2Flag9 Bit5", "2Flag9 Bit6", "2Flag9 Bit7", "2Flag9 Bit8"},
					kind="bitOr"
					},
		[0x6499] = {
					nameBitmap={"2Flag10 Bit1", "2Flag10 Bit2", "2Flag10 Bit3", "2Flag10 Bit4", "2Flag10 Bit5", "2Flag10 Bit6", "2Flag10 Bit7", "2Flag10 Bit8"},
					kind="bitOr"
					},
		[0x649A] = {
					nameBitmap={"2Flag11 Bit1", "Flag11 Bit2", "Flag11 Bit3", "Flag11 Bit4", "Flag11 Bit5", "Flag11 Bit6", "Flag11 Bit7", "Flag11 Bit8"},
					kind="bitOr"
					},
		[0x649B] = {
					nameBitmap={"2Flag12 Bit1", "2Flag12 Bit2", "2Flag12 Bit3", "2Flag12 Bit4", "2Flag12 Bit5", "2Flag12 Bit6", "2Flag12 Bit7", "2Flag12 Bit8"},
					kind="bitOr"
					},
		[0x649C] = {
					nameBitmap={"2Flag13 Bit1", "2Flag13 Bit2", "2Flag13 Bit3", "2Flag13 Bit4", "2Flag13 Bit5", "2Flag13 Bit6", "2Flag13 Bit7", "2Flag13 Bit8"},
					kind="bitOr"
					},
		[0x649D] = {
					nameBitmap={"2Flag14 Bit1", "2Flag14 Bit2", "2Flag14 Bit3", "2Flag14 Bit4", "2Flag14 Bit5", "2Flag14 Bit6", "2Flag14 Bit7", "2Flag14 Bit8"},
					kind="bitOr"
					},
		[0x649E] = {
					nameBitmap={"2Flag15 Bit1", "2Flag15 Bit2", "2Flag15 Bit3", "2Flag15 Bit4", "2Flag15 Bit5", "2Flag15 Bit6", "2Flag15 Bit7", "2Flag15 Bit8"},
					kind="bitOr"
					},
		[0x649F] = {
					nameBitmap={"2Flag16 Bit1", "2Flag16 Bit2", "2Flag16 Bit3", "2Flag16 Bit4", "2Flag16 Bit5", "2Flag16 Bit6", "2Flag16 Bit7", "2Flag16 Bit8"},
					kind="bitOr"
					},
		
		
		--Chest/Item Locations

		[0X64A0] = {
					nameBitmap={"Leaf Elder Item", "Oak Elder Item", "Waterfall Cave Chest Right Side", "Styx Left Side Chest 2", "Chest Spot1 Bit5", "Wind Cave Chest Bottom Right", "Tornado Braclet Chest", "Insect Boss Chest"},
					kind="bitOr"
					},
		[0X64A1] = {
					nameBitmap={"Kelby1 Chest", "Rage Item", "Amazones Chest Basement", "Mado1 Chest", "Behind Karmine Chest", "Chest Spot2 Bit6", "Chest Spot2 Bit7", "Chest Spot2 Bit8"},
					kind="bitOr"
					},
		[0X64A2] = {
					nameBitmap={"Waterfall Cave Chest Left Side", "Chest Spot3 Bit2", "Mado2 Chest", "Chest Spot3 Bit4", "Styx Right Side Chest 2", "Chest Spot3 Bit6", "Chest Spot3 Bit7", "Chest Spot3 Bit8"},
					kind="bitOr"
					},
		[0X64A3] = {
					nameBitmap={"Chest Spot4 Bit1", "Chest Spot4 Bit2", "Chest Spot4 Bit3", "Oasis Chest Island", "Draygon1 Chest", "WindCave Chest Before Vamp", "Chest Spot4 Bit7", "Chest Spot4 Bit8"},
					kind="bitOr"
					},
		[0X64A4] = {
					nameBitmap={"Hydra Ledge Chest First One", "Sabera Castle Left Chest", "ESI Chest 1", "Sabera2 Chest", "Wind Cave Middle Chest", "Item in Grass", "Kelby2 Chest", "Oak Kid Item"},
					kind="bitOr"
					},
		[0X64A5] = {
					nameBitmap={"Portoa Queen Item1", "Akahana's' Item", "Chest Spot6 Bit3", "Chest Spot6 Bit4", "ESI Chest 2 Left Side Waterway", "Deo's Item", "Vampire1 Chest", "Oasis Left Side"},
					kind="bitOr"
					},
		[0X64A6] = {
					nameBitmap={"Heal Dolphin Item", "Leaf Guard Item", "Sleeping Guard Item", "Sabre North Chest Before Kelby", "Shyron Zebu Item", "Fog Lamp Chest Final One", "Chest Spot7 Bit7", "Clark's Item'"},
					kind="bitOr"
					},
		[0X64A7] = {
					nameBitmap={"Sabera1 Chest", "Kensu Lighthouse Chest", "Gold Statue Item", "Waterway Item", "Karissa Plant Spot", "Karmine Chest", "Queens Item in Amazones", "Hydra Summit Chest"},
					kind="bitOr"
					},
		[0X64A8] = {
					nameBitmap={"Aztec Item Pyrimid", "WindCave/Zebu Item", "Paralysis Spot after Kelby", "Stom Fight Item", "Tornel's Item'", "Portoa Queen Item 2", "Calming Whirlpool Item", "Kensu Item Swan"},
					kind="bitOr"
					},
		[0X64A9] = {
					nameBitmap={"Kensu Item in Goa Fort", "Chest Spot10 Bit2", "Chest Spot10 Bit3", "Chest Spot10 Bit4", "Chest Spot10 Bit5", "Chest Spot10 Bit6", "Chest Spot10 Bit7", "Chest Spot10 Bit8"},
					kind="bitOr"
					},
		[0X64AA] = {
					nameBitmap={"Wind Cave Bottom Left Chest", "Chest Spot11 Bit2", "Chest Spot11 Bit3", "Chest Spot11 Bit4", "Goa Lvl3 Right Side Top", "Sabera Castle Right Chest", "Hydra Chest Left Side", "Styx Left Side Chest 1 Axeman"},
					kind="bitOr"
					},
		[0X64AB] = {
					nameBitmap={"Goa Lvl4 Basement Chest BottomMiddle", "GBC Chest Right", "Oasis River Chest", "Chest Spot12 Bit4", "ESI Exit Chest", "Goa Lvl2 Middle Side Chest", "Sabre North Chest Bottom", "Oasis Cave Chest"},
					kind="bitOr"
					},
		[0X64AC] = {
					nameBitmap={"Goa Lvl3 Left Side 2", "Vampire2 Chest", "Goa Lvl2 Left Side Chest", "Chest Spot13 Bit4", "Oasis Cave Chest Bottom", "Hydra Chest Right Side Gozen Ledge", "Goa Lvl2 Right Side Chest", "Kensu Hut Chest"},
					kind="bitOr"
					},
		[0X64AD] = {
					nameBitmap={"Chest Spot14 Bit1", "Chest by Tornel", "Sabre West Left Side Chest", "Goa Lvl3 Left Side 1", "Pyrimid Chest", "Crypt Right Chest", "Goa Lvl4 Basement Chest BottomLeft", "Goa Lvl3 Right Side Bottom"},
					kind="bitOr"
					},
		[0X64AE] = {
					nameBitmap={"Fog Lamp Chest 2", "Fog Lamp Cave Chest 3", "Waterfall Cave Chest Entrance", "Chest Spot15 Bit4", "Hydra Chest Left 2", "Styx DropDown Chest", "Styx Right Side Chest 3", "Styx Right Side Chest 1"},
					kind="bitOr"
					},
		[0X64AF] = {
					nameBitmap={"Crypt Left Chest", "Goa Lvl4 Basement Chest TopMiddle", "Goa Lvl4 Basement Chest TopRight", "Goa Lvl4 Basement Chest BottomRight", "GBC Left Chest", "Chest Spot16 Bit6", "Chest Spot16 Bit7", "Chest Spot16 Bit8"},
					kind="bitOr"
					},
		
		--Telepathy Talk? Not sure if the whole row needs to be synced
		
		[0X64C1] = {name="Converstation Flag1", kind="bitOr"},	
		[0X64C2] = {name="Converstation Flag2", kind="bitOr"},	
		[0X64C3] = {name="Converstation Flag3", kind="bitOr"},	
		[0X64C4] = {name="Converstation Flag4", kind="bitOr"},	
		[0X64C5] = {name="Converstation Flag5", kind="bitOr"},	
		[0X64C6] = {name="Converstation Flag6", kind="bitOr"},	
		[0X64C7] = {name="Converstation Flag7", kind="bitOr"},	
		[0X64C8] = {name="Converstation Flag8", kind="bitOr"},	
		[0X64C9] = {name="Converstation Flag9", kind="bitOr"},	
		[0X64CA] = {name="Converstation Flag10", kind="bitOr"},			
		[0X64CB] = {name="Converstation Flag11", kind="bitOr"},	
		[0X64CC] = {name="Converstation Flag12", kind="bitOr"},	
		[0X64CD] = {name="Converstation Flag13", kind="bitOr"},	
		[0X64CE] = {name="Converstation Flag14", kind="bitOr"},	
		[0X64CF] = {name="Converstation Flag15", kind="bitOr"},	

					
		--Walls/Crossings			
					
					[0X64D0] = {
					nameBitmap={"WallArea1 Bit1", "GBC Wall", "WallArea1 Bit3", "Sea Whirlpools", "Wind Cave Vampire Exit Wall", "WallArea1 Bit6", "Karissa Plant Cave Wall 4", "Path to Lighthouse"},
					kind="bitOr"
					},
		[0X64D1] = {
					nameBitmap={"WallArea2 Bit1", "WallArea2 Bit2", "WallArea2 Bit3", "WallArea2 Bit4", "WallArea2 Bit5", "WallArea2 Bit6", "WallArea2 Bit7", "WallArea2 Bit8"},
					kind="bitOr"
					},
		[0X64D2] = {
					nameBitmap={"Oasis Cave Shooting Wall", "WallArea3 Bit2", "WallArea3 Bit3", "WallArea3 Bit4", "WallArea3 Bit5", "WallArea3 Bit6", "WallArea3 Bit7", "WallArea3 Bit8"},
					kind="bitOr"
					},
		[0X64D3] = {
					nameBitmap={"WallArea4 Bit1", "WallArea4 Bit2", "WallArea4 Bit3", "WallArea4 Bit4", "GOA LVL4 Wall", "WallArea4 Bit6", "WallArea4 Bit7", "WallArea4 Bit8"},
					kind="bitOr"
					},
		[0X64D4] = {
					nameBitmap={"WallArea5 Bit1", "WallArea5 Bit2", "WallArea5 Bit3", "WallArea5 Bit4", "WallArea5 Bit5", "WallArea5 Bit6", "WallArea5 Bit7", "WallArea5 Bit8"},
					kind="bitOr"
					},
		[0X64D5] = {
					nameBitmap={"Goa Fort Entrance Shooting Wall", "WallArea6 Bit2", "WallArea6 Bit3", "WallArea6 Bit4", "Hydra Wall 2 Right", "Hydra Wall 1 Right", "Hydra Wall 2 Left", "Hydra Wall 1 Left"},
					kind="bitOr"
					},
		[0X64D6] = {
					nameBitmap={"Styx Entrance", "Hydra WaterCrossing 2", "Hydra WaterCrossing 1", "Swan Gate Open", "WallArea7 Bit5", "ESI Wall 3", "ESI Wall 4", "ESI Wall 1"},
					kind="bitOr"
					},
		[0X64D7] = {
					nameBitmap={"WallArea8 Bit1", "ESI Wall 2", "WallArea8 Bit3", "WallArea8 Bit4", "Behide Queen WaterCrossing", "Behide Queen WaterCrossing 3", "Behide Queen WaterCrossing 2", "Karissa Plant Cave Wall 3"},
					kind="bitOr"
					},
		[0X64D8] = {
					nameBitmap={"Karissa Plant Cave Wall 2", "Karissa Plant Cave Wall 1", "Fog Lamp Cave Wall 11", "Fog Lamp Cave Wall 10", "Fog Lamp Cave Wall 7", "Fog Lamp Cave Wall 8", "Fog Lamp Cave Wall 9", "Fog Lamp Cave Wall 6"},
					kind="bitOr"
					},
		[0X64D9] = {
					nameBitmap={"Fog Lamp Cave Wall 3", "Fog Lamp Cave Wall 4", "Fog Lamp Cave Wall 5", "WallArea10 Bit4", "Fog Lamp Cave Wall 2", "Fog Lamp Cave Wall 1", "Rage WaterCrossing", "Waterfall Cave Wall"},
					kind="bitOr"
					},
		[0X64DA] = {
					nameBitmap={"Waterfall Cave Wall", "Waterfall Cave Wall", "Waterfall Cave Wall 1", "Waterfall Cave Wall 1", "WallArea11 Bit5", "WallArea11 Bit6", "WallArea11 Bit7", "Sabre Prison Wall at Kelby"},
					kind="bitOr"
					},
		[0X64DB] = {
					nameBitmap={"Prison Gate/Cave", "Sabre North Wall 2", "Sabre North Wall 3", "Sabre North Wall 4", "Sabre North Wall 1", "Sabre North Wall", "Moon/Sun Entrance and Sabre North Wall?", "Sabre North Wall"},
					kind="bitOr"
					},
		[0X64DC] = {
					nameBitmap={"WallArea13 Bit1", "Sabre North Wall", "Sabre North Wall", "Sabre West Tornado Wall 2", "Sabre West Tornado Wall 1", "Sabre West Right Side Wall 3", "Sabre West Right Side Wall 4", "Sabre West Right Side Wall 2"},
					kind="bitOr"
					},
		[0X64DD] = {
					nameBitmap={"Sabre West Right Side Wall 1", "Sabre West Left Side Wall", "WallArea14 Bit3", "Wind Cave Left Side Wall", "Wind Cave Right Side Wall", "Wall Behind Zebu Leaf", "Wind Cave Entrance", "Entrance Shrine at Leaf"},
					kind="bitOr"
					},
		[0X64DE] = {
					nameBitmap={"Spawn Flag?", "WallArea15 Bit2", "WallArea15 Bit3", "WallArea15 Bit4", "Leaf Waypoint", "Brynmeyer Waypoint", "Oak Waypoint", "Nadare Waypoint"},
					kind="bitOr"
					},
		[0X64DF] = {
					nameBitmap={"Portoa Waypoint", "Amazones Waypoint", "Joel Waypoint", "Zombie Waypoint", "Swan Waypoint", "Shyron Waypoint", "Goa Waypoint", "Sahara Waypoint"},
					kind="bitOr"
					},
		
	},
	}
