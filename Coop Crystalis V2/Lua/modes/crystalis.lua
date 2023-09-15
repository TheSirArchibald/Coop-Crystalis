-- STOP! Are you about to edit this file?
-- If you change ANYTHING, please please PLEASE run the following script:
-- https://www.guidgenerator.com/online-guid-generator.aspx
-- and put in a new GUID in the "guid" field.

-- Author: Chronogeran and TheSirarchibald
-- Data source: https://datacrystal.romhacking.net/wiki/Crystalis:RAM_map
-- This file is available under Creative Commons CC0

--[[
Known issues:
* If you both get the same key item (e.g. magic spell), it will take up two slots in your inventory. Avoid this.
--]]


local HUD1 = 0x6220
local HUD2 = 0x6221

local spec = {
	guid = "9f4d9002-51df-4a4e-966a-650adda6c3ad",
	format = "1.2",
	name = "Crystalis",
	pipe = "tcp",
	match = function(valueOverride, sizeOverride)
		return (memory.readbyte(0xfffa) == 0xb6
			and memory.readbyte(0xfffb) == 0xf3
			and memory.readbyte(0xfffc) == 0xa4
			and memory.readbyte(0xfffd) == 0xf2
			and memory.readbyte(0xfffe) == 0x43
			and memory.readbyte(0xffff) == 0xf4)
	end,
	running = {"test", addr = 0x40, lte = 0x01},
	sync = {},
	custom = {"test", addr = 0x40, lte = 0x01},
}

local itemNameMap = {
	[0]="Sword of Wind",
	[1]="Sword of Fire",
	[2]="Sword of Water",
	[3]="Sword of Thunder",
	[4]="Crystalis",
	[5]="Ball of Wind",
	[6]="Tornado Bracelet",
	[7]="Ball of Fire",
	[8]="Flame Bracelet",
	[9]="Ball of Water",
	[10]="Blizzard Bracelet",
	[11]="Ball of Thunder",
	[12]="Storm Bracelet",
	[13]="Carapace Shield",
	[14]="Bronze Shield",
	[15]="Platinum Shield",
	[16]="Mirror Shield",
	[17]="Ceramic Shield",
	[18]="Sacred Shield",
	[19]="Battle Shield",
	[20]="Psycho Shield",
	[21]="Tanned Hide",
	[22]="Leather Armor",
	[23]="Bronze Armor",
	[24]="Platinum Armor",
	[25]="Soldier Suit",
	[26]="Ceramic Armor",
	[27]="Battle Armor",
	[28]="Psycho Armor",
	[29]="Medical Herb",
	[30]="Antidote",
	[31]="Lysis Plant",
	[32]="Fruit of Lime",
	[33]="Fruit of Power",
	[34]="Magic Ring",
	[35]="Fruit of Repun",
	[36]="Warp Boots",
	[37]="Statue of Onyx",
	[38]="Opel Statue",
	[39]="Insect Flute",
	[40]="Flute of Lime",
	[41]="Gas Mask",
	[42]="Power Ring",
	[43]="Warrior Ring",
	[44]="Iron Necklace",
	[45]="Deo's Pendant",
	[46]="Rabbit Boots",
	[47]="Leather Boots",
	[48]="Shield Ring",
	[49]="Alarm Flute",
	[50]="Windmill Key",
	[51]="Key to Prison",
	[52]="Key to Stxy",
	[53]="Fog Lamp",
	[54]="Shell Flute",
	[55]="Eye Glasses",
	[56]="Broken Statue",
	[57]="Glowing Lamp",
	[58]="Statue of Gold",
	[59]="Love Pendant",
	[60]="Kirisa Plant",
	[61]="Ivory Statue",
	[62]="Bow of Moon",
	[63]="Bow of Sun",
	[64]="Bow of Truth",
	[65]="Refresh",
	[66]="Paralysis",
	[67]="Telepathy",
	[68]="Teleport",
	[69]="Recover",
	[70]="Barrier",
	[71]="Change",
	[72]="Flight"
}

-- Assumes a 1-byte value
local deltaWithVariableMax = function(address, deltaMaxAddress, deltaMin)
	spec.sync[address] = {kind=function(value, previousValue, receiving)
		-- A modification of the existing delta kind to read max from memory
		if not receiving then
			allow = value ~= previousValue + 1 and value ~= previousValue + 2
			value = value - previousValue
			
		else
			allow = value ~= 0
			-- Notice: This assumes the emulator AND implementation converts negative values to 2s compliment elegantly
			local sum = previousValue + value
			if deltaMin and sum < deltaMin then sum = deltaMin end
			local deltaMax = memory.readbyte(deltaMaxAddress)
			if sum > deltaMax then sum = deltaMax end
			value = sum
		end
		return allow, value
	end}
end

	-- Max HP
spec.sync[0x03C0] = {receiveTrigger=function (value, previousValue)
			if (value ~= previousValue) then
					memory.writebyte(HUD2, 1)
					memory.writebyte(HUD1, 1)
				end
	end
}

	-- Condition (aka Posion, Paralysis, stone, nuber)
--spec.sync[0x710] = {kind="bitOr", mask=0x05}
	--spec.sync[0x6485] = {kind="bitOr", mask=0xf0}

	-- HP
deltaWithVariableMax(0x03C1, 0x03C0, 0)
spec.sync[0x03C1].receiveTrigger = function (value, previousValue)
	if (value ~= previousValue) then
					memory.writebyte(HUD2, 1)
					memory.writebyte(HUD1, 1)
				end
end

	-- Level
spec.sync[0x421] = {verb="gained", name="a level", 
	receiveTrigger=function (value, previousValue)
		if value == previousValue + 1 then
			-- Grant level up stat boosts. Just 1 per level.
			local previousAttack = memory.readbyte(0x03E1)
			local previousDefense1 = memory.readbyte(0x400)
			local previousDefense2 = memory.readbyte(0x401)
			memory.writebyte(0x3E1, previousAttack + 1)
			memory.writebyte(0x400, previousDefense1 + 1)
			memory.writebyte(0x401, previousDefense2 + 1)
			--UI Update Code
			memory.writebyte(HUD2, 1)
			memory.writebyte(HUD1, 1)			
		end
	end
}

	-- Gold byte 1
spec.sync[0x702] = {size=1, kind="delta", deltaMin=0, deltaMax=0xff, receiveTrigger=function (value, previousValue)
		if (value ~= previousValue) then
				memory.writebyte(HUD2, 1)
				memory.writebyte(HUD1, 1)
				end
		end
}
	-- Gold byte2
spec.sync[0x703] = {size=1, kind="delta", deltaMin=0, deltaMax=0xff, receiveTrigger=function (value, previousValue)
		if (value ~= previousValue) then
				memory.writebyte(HUD2, 1)
				memory.writebyte(HUD1, 1)
				end
		end
}

-- EXP byte1
spec.sync[0x704] = {size=1, kind="delta", deltaMin=0, deltaMax=0xff, receiveTrigger=function (value, previousValue)
	if (value ~= previousValue) then
				memory.writebyte(HUD2, 1)
				memory.writebyte(HUD1, 1)
				end
		end
}
-- EXP byte2
spec.sync[0x705] = {size=1, kind="delta", deltaMin=0, deltaMax=0xff, receiveTrigger=function (value, previousValue)
	--updateUIWithNumber(0x2B, 0x68, 0x82, 5, value)
	if (value ~= previousValue) then
					memory.writebyte(HUD2, 1)
					memory.writebyte(HUD1, 1)
				end
end}

-- MP
deltaWithVariableMax(0x708, 0x709, 0)
spec.sync[0x708].receiveTrigger=function (value, previousValue)
	if (value ~= previousValue) then
		memory.writebyte(HUD2, 1)
		memory.writebyte(HUD1, 1)
		end

end

-- Max MP
spec.sync[0x709] = {receiveTrigger=function (value, previousValue)
		if (value ~= previousValue) then
					memory.writebyte(HUD2, 1)
					memory.writebyte(HUD1, 1)
				end
	end
}

-- Inventory space
for i = 0x6430, 0x645F do
	spec.sync[i] = {nameMap=itemNameMap}
end

-- Inventory Overflow space
for i = 0x64B8, 0x64BF do
	spec.sync[i] = {nameMap=itemNameMap}
end

-- Events & chests
-- Some events involve clearing flags, so bitOr isn't sufficient.
--for i = 0x6480, 0x64AF do
--	spec.sync[i] = {} 
-- ToDo. So we can see the last chec
-- nameBitmap={}
--end

spec.sync[0x6480] = {}
spec.sync[0x6481] = {}
spec.sync[0x6482] = {}
spec.sync[0x6483] = {}
spec.sync[0x6484] = {}
spec.sync[0x6485] = {}
spec.sync[0x6486] = {}
spec.sync[0x6487] = {}
spec.sync[0x6488] = {}
spec.sync[0x6489] = {}
spec.sync[0x648A] = {}
spec.sync[0x648B] = {}
spec.sync[0x648C] = {}
spec.sync[0x648D] = {}
spec.sync[0x648E] = {}

--Scaling
spec.sync[0x648F] = {receiveTrigger=function (value, previousValue)
		if (value ~= previousValue) then
					memory.writebyte(HUD2, 1)
					memory.writebyte(HUD1, 1)
				end
	end}

spec.sync[0x6490] = {}
spec.sync[0x6491] = {}
spec.sync[0x6492] = {}
spec.sync[0x6493] = {}
spec.sync[0x6494] = {}
spec.sync[0x6495] = {}
spec.sync[0x6496] = {}
spec.sync[0x6497] = {}
spec.sync[0x6498] = {}
spec.sync[0x6499] = {}
spec.sync[0x649A] = {}
spec.sync[0x649B] = {}
spec.sync[0x649C] = {}
spec.sync[0x649D] = {}
spec.sync[0x649E] = {}
spec.sync[0x649F] = {}
spec.sync[0x64A0] = {verb="collected", nameBitmap={ "Leaf Elder Item", "Oak Elder Item", "Waterfall Right Chest", "Styx Left Side Upper Chest", "Crystalis", "Wind Cave Chest Right BottomRight", "Sabre West Rabbit Chest", "Bug Chest", ""}}
spec.sync[0x64A1] = {verb="collected", nameBitmap={ "Kelby 1 Chest", "Rage Item", "Queen Basement Chest", "Mado 1 Chest", "Behind Karmine Chest", "64A1-6", "64A1-7", "64A1-8", ""}}
spec.sync[0x64A2] = {verb="collected", nameBitmap={ "Waterfall Left Side", "64A2-2", "Mado 2 Chest", "64A2-4", "Styx Right Side Chest 2", "64A2-6", "64A2-7", "64A2-8", ""}}
spec.sync[0x64A3] = {verb="collected", nameBitmap={ "64A3-1", "64A3-2", "64A3-3", "Oasis Island Chest", "Draygon 1 Chest", "Wind Cave Chest Left", "Wind Cave Chest Right Top", "Fog Lamp Chest 1", ""}}
spec.sync[0x64A4] = {verb="collected", nameBitmap={ "Hydra Chest Bottom", "Sabera Fort Left Side Chest", "ESI Chest 1", "Sabera 2 Chest", "Wind Cave Chest Middle", "Cordell Grass Item", "Kelby 2 Chest", "Oak Mom Reward", ""}}
spec.sync[0x64A5] = {verb="collected", nameBitmap={ "Portoa Queen Item", "Akahana Item", "Oasis Iron Wall Chest", "Brokahana Item", "ESI River Left Side Chest", "Deo Item", "Vampire 1 Chest", "Oasis Chest Top Left", ""}}
spec.sync[0x64A6] = {verb="collected", nameBitmap={ "Stone Akahana Item", "Leaf Student Item", "Windmill Guard Item", "Sabre North Top Chest", "Zebu Sharon Item", "Fog Lamp Chest 4", "Dolphin Heal Item", "Clark Item", ""}}
spec.sync[0x64A7] = {verb="collected", nameBitmap={ "Sabera 1 Chest", "Kensu Joel Chest", "Golden Statue Combined Item", "Waterway Item", "Karrissa Plant Item", "Karmine Chest", "Amazon Queen Item", "Hydra Top Chest (Flight)", ""}}
spec.sync[0x64A8] = {verb="collected", nameBitmap={ "Azteca Item after Draygon", "Refresh Item", "Paralysis Spot Item", "Stom Fight Reward", "Tornel Bracelet Item", "Portoa Queen Item After Rage", "Calm the Sea Item", "Kensu Swan Item", ""}}
spec.sync[0x64A9] = {verb="collected", nameBitmap={ "Kensu Goa Item", "64A9-2", "64A9-3", "64A9-4", "64A9-5", "64A9-6", "64A9-7", "64A9-8", ""}}
spec.sync[0x64AA] = {verb="collected", nameBitmap={ "Wind Cave Chest Right BottomLeft", "64AA-2", "Sabre West Middle Chest", "Sabre North Middle Chest", "64AA-5", "Sabera Fort Chest Right", "Hydra Chest Upper Left", "Styx Axeman Chest", ""}}
spec.sync[0x64AB] = {verb="collected", nameBitmap={ "Karmine Basement Chest Lower Middle", "GBC Cave Right Chest", "Oasis River Chest", "64AB-4", "ESI Chest before Zombie", "Sabera 2 Middle Chest", "Sabre North Lower Chest", "Karissa Plant Cave Chest", ""}}
spec.sync[0x64AC] = {verb="collected", nameBitmap={ "Mado 2 Floor Left Side Top Chest", "Vampire 2 Chest", "Sabera 2 Left Side Chest", "Mado 2 Floor Middle Chest", "Oasis Bottom Chest", "Hydra Chest Gozen Ledge", "Sabera 2 Right Chest", "64AC-8", ""}}
spec.sync[0x64AD] = {verb="collected", nameBitmap={ "64AD-1", "Sabre West Top Chest", "Sabre West Left Chest", "Mado Floor Iron Wall Chest", "Pyramid Chest", "Crypt Right Side", "Kamine Basement Chest Lower Left", "Mado 2 Floor Lower Right Chest", ""}}
spec.sync[0x64AE] = {verb="collected", nameBitmap={ "Fog Lamp Chest 2", "Fog Lamp Chest 3", "Waterfall First Chest", "ESI River Chest Right", "Hydra Chest Top before flight", "64AE-6", "Styx Right Side Chest 3", "Styx Right Side Chest 1", ""}}
spec.sync[0x64AF] = {verb="collected", nameBitmap={ "Crypt Left Side Chest", "Kamine Basement Chest Middle Top", "Kamine Basement Chest Upper Right", "Kamine Basement Chest Lower Right", "GBC Cave Left", "Styx Left Side Chest", "64AF-7", "64AF-8", ""}}

-- Change form is 6485 low 4 bits, don't sync that
spec.sync[0x6485] = {kind="bitOr", mask=0xf0}

-- Conversations	--Note 64C0 = 4F Story Mode
for i = 0x64C0, 0x64CF do
	spec.sync[i] = {} -- nameBitmap={}
end

-- Doors/walls/bridges
for i = 0x64D0, 0x64DF do
	spec.sync[i] = {kind="bitOr"} -- nameBitmap={}
end

-- Teleport flags
spec.sync[0x64DE] = {kind="bitOr", verb="visited", nameBitmap={
	[5]="Leaf",
	[6]="Brynmaer",
	[7]="Oak",
	[8]="Nadare"
}}
spec.sync[0x64DF] = {kind="bitOr", verb="visited", nameBitmap={
	"Portoa", "Amazones", "Joel", "Zombie", "Swan", "Shyron", "Goa", "Sahara"
}}

-- Checkpoint for data synced above
spec.custom["checkpoint2"] = function(payload)
	for i = 1,0x30 do memory.writebyte(0x7D2F + i, payload[i]) end
	for i = 1,0x03 do memory.writebyte(0x7DF4 + i, payload[0x30 + i]) end
	for i = 1,0x08 do memory.writebyte(0x7D7F + i, payload[0x33 + i]) end
	for i = 1,0x10 do memory.writebyte(0x7E1F + i, payload[0x3B + i]) end
	for i = 1,0x10 do memory.writebyte(0x7E3F + i, payload[0x4B + i]) end
	for i = 1,0x10 do memory.writebyte(0x7E4F + i, payload[0x5B + i]) end
end
spec.custom["checkpoint"] = function(payload)
	for i = 1,0x30 do memory.writebyte(0x6D2F + i, payload[i]) end
	for i = 1,0x03 do memory.writebyte(0x6DF4 + i, payload[0x30 + i]) end
	for i = 1,0x08 do memory.writebyte(0x6D7F + i, payload[0x33 + i]) end
	for i = 1,0x10 do memory.writebyte(0x6E1F + i, payload[0x3B + i]) end
	for i = 1,0x10 do memory.writebyte(0x6E3F + i, payload[0x4B + i]) end
	for i = 1,0x10 do memory.writebyte(0x6E4F + i, payload[0x5B + i]) end
end
-- Watch for 6D00 because it copies the checkpoint there after writing it
spec.sync[0x6D00] = {kind="trigger", writeTrigger=function(value, previousValue, forceSend)
	local payload = {}
	for i = 1,0x30 do payload[0x00 + i] = memory.readbyte(0x7D2F + i) end -- Inventory
	for i = 1,0x03 do payload[0x30 + i] = memory.readbyte(0x7DF4 + i) end -- Life and Level
	for i = 1,0x08 do payload[0x33 + i] = memory.readbyte(0x7D7F + i) end -- Gold/exp/hp/mp
	for i = 1,0x10 do payload[0x3B + i] = memory.readbyte(0x7E1F + i) end -- event flags and chests
	for i = 1,0x10 do payload[0x4B+ i] = memory.readbyte(0x7E3F + i) end -- conversations
	for i = 1,0x10 do payload[0x5B + i] = memory.readbyte(0x7E4F + i) end -- doors and teleport flags
--
	send("checkpoint", payload)
	send("checkpoint2", payload)
end}

return spec