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
		--[0x648F] = {name="Scaling Up", kind="high"},
		--[0x0421] = {name="Level Up", kind="high"},
		--[0x03C0] = {name="Health Capacity Increased", kind="high"},
		--[0x0709] = {name="Magic Capacity Increased", kind="high"},
		--[0x03C1] = {name="Health Current"},
		--[0x0708] = {name="Magic Current"},
		--[0x0702] = {name="Money1"},
		--[0x0703] = {name="Money2"},
		--[0x0704] = {name="Experience Current"},
		[0x6430] = {name="Wind Sword", kind="low"},
		[0x6431] = {name="Fire Sword", kind="low"},
		[0x6432] = {name="Water Sword", kind="low"},
		[0x6433] = {name="Thunder Sword", kind="low"},
		[0x643C] = {name="Wind Power Upgrade"},
		[0x643D] = {name="Fire Power Upgrade"},
		[0x643E] = {name="Water Power Upgrade"},
		[0x643F] = {name="Thunder Power Upgrade"},
		[0x6434] = {name="Armor Slot1"},
		[0x6435] = {name="Armor Slot2"},
		[0x6436] = {name="Armor Slot3"},
		[0x6437] = {name="Armor Slot4"},
		[0x6438] = {name="Shield Slot1"},
		[0x6439] = {name="Shield Slot2"},
		[0x643A] = {name="Shield Slot3"},
		[0x643B] = {name="Shield Slot4"},
		[0x6440] = {name="Consumable Slot1"},
		[0x6441] = {name="Consumable Slot2"},
		[0x6442] = {name="Consumable Slot3"},
		[0x6443] = {name="Consumable Slot4"},
		[0x6444] = {name="Consumable Slot5"},
		[0x6445] = {name="Consumable Slot6"},
		[0x6446] = {name="Consumable Slot7"},
		[0x6447] = {name="Consumable Slot8"},
		[0x6448] = {name="Worn Item Slot1"},
		[0x6449] = {name="Worn Item Slot2"},
		[0x644A] = {name="Worn Item Slot3"},
		[0x644B] = {name="Worn Item Slot4"},
		[0x644C] = {name="Worn Item Slot5"},
		[0x644D] = {name="Worn Item Slot6"},
		[0x644E] = {name="Worn Item Slot7"},
		[0x644F] = {name="Worn Item Slot8"},
		[0x6450] = {name="Key Item Slot1"},
		[0x6451] = {name="Key Item Slot2"},
		[0x6452] = {name="Key Item Slot3"},
		[0x6453] = {name="Key Item Slot4"},
		[0x6454] = {name="Key Item Slot5"},
		[0x6455] = {name="Key Item Slot6"},
		[0x6456] = {name="Key Item Slot7"},
		[0x6457] = {name="Key Item Slot8"},
		[0x6458] = {name="Spell Slot1"},
		[0x6459] = {name="Spell Slot2"},
		[0x645A] = {name="Spell Slot3"},
		[0x645B] = {name="Spell Slot4"},
		[0x645C] = {name="Spell Slot5"},
		[0x645D] = {name="Spell Slot6"},
		[0x645E] = {name="Spell Slot7"},
		[0x645F] = {name="Spell Slot8"},

		
		[0x6480] = {},
		[0x6481] = {},
		[0x6482] = {},
		[0x6483] = {},
		[0x6484] = {},
		[0x6485] = {},
		[0x6486] = {},
		[0x6487] = {},
		[0x6488] = {},
		[0x6489] = {},
		[0x648A] = {},
		[0x648B] = {},
		[0x648C] = {},
		[0x648D] = {},
		[0x648E] = {},
		[0x648F] = {},
		[0x6490] = {},
		[0x6491] = {},
		[0x6492] = {},
		[0x6493] = {},
		[0x6494] = {},
		[0x6495] = {},
		[0x6496] = {},
		[0x6497] = {},
		[0x6498] = {},
		[0x6499] = {},
		[0x649A] = {},
		[0x649B] = {},
		[0x649C] = {},
		[0x649D] = {},
		[0x649E] = {},
		[0x649F] = {},
		[0X64A0] = {
					nameBitmap={"Leaf Elder Item", "Oak Elder Item", "Chest Spot1 Bit3", "Styx Left Side Chest 2", "Chest Spot1 Bit5", "Wind Cave Chest Bottom Right", "Chest Spot1 Bit7", "Insect Boss Chest"},
					kind="bitOr"
					},
		[0X64A1] = {
					nameBitmap={"Chest Spot2 Bit1", "Rage Item", "Chest Spot2 Bit3", "Chest Spot2 Bit4", "Chest Spot2 Bit5", "Chest Spot2 Bit6", "Chest Spot2 Bit7", "Chest Spot2 Bit8"},
					kind="bitOr"
					},
		[0X64A2] = {
					nameBitmap={"Chest Spot3 Bit1", "Chest Spot3 Bit2", "Chest Spot3 Bit3", "Chest Spot3 Bit4", "Styx Right Side Chest 2", "Chest Spot3 Bit6", "Chest Spot3 Bit7", "Chest Spot3 Bit8"},
					kind="bitOr"
					},
		[0X64A3] = {
					nameBitmap={"Chest Spot4 Bit1", "Chest Spot4 Bit2", "Chest Spot4 Bit3", "Oasis Chest Island", "Draygon1 Chest", "Chest Spot4 Bit6", "Chest Spot4 Bit7", "Chest Spot4 Bit8"},
					kind="bitOr"
					},
		[0X64A4] = {
					nameBitmap={"Hydra Ledge Chest First One", "Sabera Castle Left Chest", "Chest Spot5 Bit3", "Chest Spot5 Bit4", "Wind Cave Middle Chest", "Item in Grass", "Chest Spot5 Bit7", "Oak Kid Item"},
					kind="bitOr"
					},
		[0X64A5] = {
					nameBitmap={"Portoa Queen Item1", "Chest Spot6 Bit2", "Chest Spot6 Bit3", "Chest Spot6 Bit4", "Chest Spot6 Bit5", "Deo's Item", "Vampire1 Chest", "Oasis Left Side"},
					kind="bitOr"
					},
		[0X64A6] = {
					nameBitmap={"Heal Dolphin Item", "Leaf Guard Item", "Sleeping Guard Item", "Chest Spot7 Bit4", "Shyron Zebu Item", "Fog Lamp Chest Final One", "Chest Spot7 Bit7", "Clark's Item'"},
					kind="bitOr"
					},
		[0X64A7] = {
					nameBitmap={"Sabera1 Chest", "Kensu Lighthouse Chest", "Gold Statue Item", "Waterway Item", "Karissa Plant Spot", "Chest Spot8 Bit6", "Chest Spot8 Bit7", "Hydra Summit Chest"},
					kind="bitOr"
					},
		[0X64A8] = {
					nameBitmap={"Aztec Item Pyrimid", "WindCave/Zebu Item", "Chest Spot9 Bit3", "Stom Fight Item", "Chest Spot9 Bit5", "Portoa Queen Item 2", "Calming Whirlpool Item", "Chest Spot9 Bit8"},
					kind="bitOr"
					},
		[0X64A9] = {
					nameBitmap={"Kensu Item in Goa Fort", "Chest Spot10 Bit2", "Chest Spot10 Bit3", "Chest Spot10 Bit4", "Chest Spot10 Bit5", "Chest Spot10 Bit6", "Chest Spot10 Bit7", "Chest Spot10 Bit8"},
					kind="bitOr"
					},
		[0X64AA] = {
					nameBitmap={"Wind Cave Bottom Left Chest", "Chest Spot11 Bit2", "Chest Spot11 Bit3", "Chest Spot11 Bit4", "Chest Spot11 Bit5", "Sabera Castle Right Chest", "Chest Spot11 Bit7", "Styx Left Side Chest 1 Axeman"},
					kind="bitOr"
					},
		[0X64AB] = {
					nameBitmap={"Goa Lvl4 Basement Chest BottomMiddle", "GBC Chest Right", "Oasis River Chest", "Chest Spot12 Bit4", "ESI Exit Chest", "Chest Spot12 Bit6", "Chest Spot12 Bit7", "Oasis Cave Chest"},
					kind="bitOr"
					},
		[0X64AC] = {
					nameBitmap={"Chest Spot13 Bit1", "Vampire2 Chest", "Chest Spot13 Bit3", "Chest Spot13 Bit4", "Oasis Cave Chest Bottom", "Hydra Chest Right Side Gozen Ledge", "Chest Spot13 Bit7", "Kensu Hut Chest"},
					kind="bitOr"
					},
		[0X64AD] = {
					nameBitmap={"Chest Spot14 Bit1", "Chest Spot14 Bit2", "Chest Spot14 Bit3", "Chest Spot14 Bit4", "Pyrimid Chest", "Crypt Right Chest", "Goa Lvl4 Basement Chest BottomLeft", "Chest Spot14 Bit8"},
					kind="bitOr"
					},
		[0X64AE] = {
					nameBitmap={"Chest Spot15 Bit1", "Fog Lamp Cave Chest 3", "Chest Spot15 Bit3", "Chest Spot15 Bit4", "Hydra Chest Left 2", "Chest Spot15 Bit6", "Styx Right Side Chest 3", "Styx Right Side Chest 1"},
					kind="bitOr"
					},
		[0X64AF] = {
					nameBitmap={"Crypt Left Chest", "Chest Spot16 Bit2", "Goa Lvl4 Basement Chest TopRight", "Goa Lvl4 Basement Chest BottomRight", "GBC Left Chest", "Chest Spot16 Bit6", "Chest Spot16 Bit7", "Chest Spot16 Bit8"},
					kind="bitOr"
					},
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
					nameBitmap={"Fog Lamp Cave Wall 3", "Fog Lamp Cave Wall 4", "Fog Lamp Cave Wall 5", "WallArea10 Bit4", "Fog Lamp Cave Wall 2", "Fog Lamp Cave Wall 1", "Rage WaterCrossing", "WallArea10 Bit8"},
					kind="bitOr"
					},
		[0X64DA] = {
					nameBitmap={"WallArea11 Bit1", "WallArea11 Bit2", "WallArea11 Bit3", "WallArea11 Bit4", "WallArea11 Bit5", "WallArea11 Bit6", "WallArea11 Bit7", "WallArea11 Bit8"},
					kind="bitOr"
					},
		[0X64DB] = {
					nameBitmap={"WallArea12 Bit1", "WallArea12 Bit2", "WallArea12 Bit3", "WallArea12 Bit4", "WallArea12 Bit5", "WallArea12 Bit6", "Moon/Sun Entrance", "WallArea12 Bit8"},
					kind="bitOr"
					},
		[0X64DC] = {
					nameBitmap={"WallArea13 Bit1", "WallArea13 Bit2", "WallArea13 Bit3", "WallArea13 Bit4", "WallArea13 Bit5", "WallArea13 Bit6", "WallArea13 Bit7", "WallArea13 Bit8"},
					kind="bitOr"
					},
		[0X64DD] = {
					nameBitmap={"WallArea14 Bit1", "WallArea14 Bit2", "WallArea14 Bit3", "Wind Cave Left Side Wall", "Wind Cave Right Side Wall", "WallArea14 Bit6", "Wind Cave Entrance", "Entrance Shrine at Leaf"},
					kind="bitOr"
					},
		[0X64DE] = {
					nameBitmap={"Spawn Flag?", "WallArea15 Bit2", "WallArea15 Bit3", "WallArea15 Bit4", "Leaf Waypoint", "Brynmeyer Waypoint", "Oak Waypoint", "WallArea15 Bit8"},
					kind="bitOr"
					},
		[0X64DF] = {
					nameBitmap={"Portoa Waypoint", "WallArea16 Bit2", "Joel Waypoint", "Zombie Waypoint", "Swan Waypoint", "Shyron Waypoint", "Goa Waypoint", "Sahara Waypoint"},
					kind="bitOr"
					},
		
	},
	}
