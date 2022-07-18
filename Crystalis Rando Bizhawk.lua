local SwordMap = {
	--Wind Sword = 0
	0x00,
	--Fire Sword = 1
	0x01,
	--Water Sword =2
	0x02,
	--Thunder Sword =3
	0x03
	}

local SwordName = {
	[0] = 'Sword of Wind',
	[1] = 'Sword of Fire',
	[2] = 'Sword of Water',
	[3] = 'Sword of Thunder',
	[4] = 'Crystalis',
	}
local PowerName ={
	[0x05] = 'Ball of Wind',
	[0x07] = 'Ball of Fire',
	[0x09] = 'Ball of Water',
	[0x0B] = 'Ball of Thunder',
	[0x06] = 'Tornado Braclet',
	[0x08] = 'Flame Braclet',
	[0x0A] = 'Blizzard Braclet',
	[0x0C] = 'Storm Braclet',
	}

local ConsumableName = {
	[0x1D] = 'Medical Herb',
	[0x1E] = 'Antidote',
	[0x1F] = 'Lysis Plant',
	[0x21] = 'Fruit of Power',
	[0x20] = 'Fruit of Lime',
	[0x23] = 'Fruit of Repun',
	[0x22] = 'Magic Ring',
--	[0xXX] = 'Opel Statue',
	[0x24] = 'Warp Boots',
	}

local WearableName ={
	[0x29] = 'Hazmat Suit',
	[0x2B] = 'Warrior Ring',
	[0x2A] = 'Power Ring',
	[0x30] = 'Shield Ring',
	[0x2C] = 'Iron Necklace',
	[0x2D] = 'Deo Pendant',
	[0x2F] = 'Speed Boots',
	[0x2E] = 'Rabbit Boots',
	}

local KeyItemName ={
	[0x32] = 'Windmill Key',
	[0x33] = 'Key to the Prison',
	[0x34] = 'Key to Styx',
--	[0xXX] = 'Alarm Flute',
--	[0x21] = 'Insect Flute',
--	[0x22] = 'Flute of Lime',
	[0x36] = 'Shell Flute',
	[0x3E] = 'Bow of Moon',
	[0x3F] = 'Bow of Sun',
	[0x40] = 'Bow of Truth',
	[0x25] = 'Statue of Onyx',
	[0x3D] = 'Ivory Statue',
	[0x38] = 'Broken Statue',
	[0x3A] = 'Golden Statue',
	[0x35] = 'Fog Lamp',
	[0x39] = 'Glowing Lamp',
	[0x3C] = 'Karissa Plant',
	[0x3B] = 'Love Pendant',
	[0x37] = 'Xray Glasses',
	}

local SpellName ={
	[0x41] = 'Refresh',
	[0x43] = 'Telepathy',
	[0x42] = 'Paralysis',
	[0x44] = 'Teleport',
	[0x45] = 'Recover',
	[0x46] = 'Barrier',
	[0x47] = 'Change',
	[0x48] = 'Flight',
	}

	
local ArmorName ={
	[0x15] = 'Tanned Hide',
	[0x16] = 'Leather Armor',
	[0x17] = 'Bronze Armor',
	[0x18] = 'Platinum Armor',
	[0x19] = 'Soldier Suit',
	[0x1A] = 'Ceramic Suit',
	[0x1B] = 'Battle Armor',
	[0x1C] = 'Psycho Armor',
	}

local SheildName ={
	
	[0x0D] = 'Carapace Shield',
	[0x0E] = 'Bronze Shield',
	[0x0F] = 'Platinum Shield',
	[0x10] = 'Mirrored Shield',
	[0x11] = 'Ceramic Shield',
	[0x12] = 'Sacred Shield',
	[0x13] = 'Battle Shield',
	[0x14] = 'Psycho Shield',
	}





local gameLoadedModes = {
    [0x00]=true,  --Mesen Start
    [0x01]=true,  --In Game
    [0x02]=false,  --SNK White Screen
    [0x03]=false,  --Start Continue Screen
    [0x04]=false,  --Tower Ending

}

ramItems = 
{
	--Swords
	[0xF345] = {name="Sword of Wind", type="bool"},
	[0xF346] = {name="Sword of Fire", type="bool"},
	[0xF347] = {name="Sword of Water", type="bool"},
	[0xF348] = {name="Sword of Thunder", type="bool"},

	
	--Power Upgrades
	[0xF349] = {name="Ball of Wind", type="bool"},
	[0xF34A] = {name="Ball of Fire", type="bool"},
	[0xF34B] = {name="Ball of Water", type="bool"},
	[0xF349] = {name="Ball of Thunder", type="bool"},
	[0xF34A] = {name="Tornado Bracelet", type="bool"},
	[0xF34B] = {name="Flame Bracelet", type="bool"},
	[0xF34A] = {name="Blizzard Bracelet", type="bool"},
	[0xF34B] = {name="Storm Bracelet", type="bool"},
	
	--Armor
	[0xF349] = {name="Tanned Armor", type="bool"},
	[0xF34A] = {name="Leather Armor", type="bool"},
	[0xF34A] = {name="Bronze Armor", type="bool"},
	[0xF34B] = {name="Platinum Armor", type="bool"},
	[0xF349] = {name="Soldier Suit", type="bool"},
	[0xF34A] = {name="Ceramic Suit", type="bool"},
	[0xF34B] = {name="Battle Armor", type="bool"},
	[0xF34A] = {name="Psycho Armor", type="bool"},

		--Shields
	[0xF349] = {name="Carapace Shield", type="bool"},
	[0xF34A] = {name="Bronze Shield", type="bool"},
	[0xF34A] = {name="Platinum Shield", type="bool"},
	[0xF34B] = {name="Mirrored Shield", type="bool"},
	[0xF349] = {name="Ceramic Shield", type="bool"},
	[0xF34A] = {name="Sacred Shield", type="bool"},
	[0xF34B] = {name="Battle Shield", type="bool"},
	[0xF34A] = {name="Psycho Shield", type="bool"},



	--Consumables (This is a variable one)
	[0xF349] = {name="Medical Herb", type="bool"},
	[0xF34A] = {name="Antidote", type="bool"},
	[0xF34B] = {name="Lysis Plant", type="bool"},
	[0xF349] = {name="Fruit of Power", type="bool"},
	[0xF34A] = {name="Fruit of Lime", type="bool"},
	[0xF34B] = {name="Fruit of Repun", type="bool"},
	[0xF349] = {name="Magic Ring", type="bool"},
	[0xF34A] = {name="Warp Boots", type="bool"},
	[0xF34B] = {name="Opel Statue", type="bool"},

	}

	-- Writes value to RAM using little endian
local prevDomain = ""
function writeRAM(domain, address, size, value)
	-- update domain
	if (prevDomain ~= domain) then
		prevDomain = domain
		if not memory.usememorydomain(domain) then
			return
		end
	end

	-- default size short
	if (size == nil) then
		size = 2
	end

	if (value == nil) then
		return
	end

	if size == 1 then
		memory.writebyte(address, value)
	elseif size == 2 then
		memory.write_u16_le(address, value)
	elseif size == 4 then
		memory.write_u32_le(address, value)
	end
end

-- Reads a value from RAM using little endian
function readRAM(domain, address, size)
	-- update domain
	if (prevDomain ~= domain) then
		prevDomain = domain
		if not memory.usememorydomain(domain) then
			return
		end
	end

	-- default size short
	if (size == nil) then
		size = 2
	end

	if size == 1 then
		return memory.readbyte(address)
	elseif size == 2 then
		return memory.read_u16_le(address)
	elseif size == 4 then
		return memory.read_u32_le(address)
	end
end



-- Gets the list of ammo values and capacities
function getSword()
local SwordFound = {}
Sword1 = readRAM("WRAM", 0x0430, 1)

for SwordNum, value in pairs(SwordMap) do
		-- if ability flags found add ability
		if (Sword1 < 5) then
			active = true
			SwordFound[SwordNum] = active
		end
	end
	return SwordFound
end

-- Event to check when a new ability is collected
function eventSwordCollected(prevRam, newRam)
	-- Find changed ability
	-- Only one ability can be collected at a time
	-- Only checks for added abilities, not removed (varia)
	local SwordNum = -1
	local SwordActive = true
	for SwordFound,on in pairs(newRam.SwordFound) do
		if (prevRam.SwordFound[SwordFound] ~= on) then
			SwordNum = SwordFound
			SwordActive = on
			break
		end
	end
	
	if SwordNum ~= -1 then
		-- Return the new ability
		return {
			SwordFound = SwordNum,
			active = SwordActive,
				}
	end
	-- No new ability
	return false
end



-- Object that exposes the public functions
local crystalis_ram = {}




-- Gets a message to send to the other player of new changes
-- Returns the message as a dictionary object
-- Returns false if no message is to be send
function crystalis_ram.getMessage()
	--removeItems()

	-- Gets the current RAM state
	local newRAM = {	
		SwordFound = getSword()
					}

	local message = {}
	local changed = false




end

-- Process a message from another player and update RAM
function crystalis_ram.processMessage(their_user, message)
	-- Process new tank collected
	-- Does nothing if tank was already collected




-- Gets the message for a new collected ability
	local newAbility = eventSwordCollected(prevRAM, newRAM)
	if newAbility then
		-- Add new changes
		message["a"] = newAbility
		changed = true

		gui.addmessage(config.user .. ": " .. SwordName[newAbility.ability])
	end


end



return crystalis_ram


