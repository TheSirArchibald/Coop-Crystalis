local items = {
	[0x5A] = 'Nothing',
	[0x49] = 'Fighters Sword',
	[0x00] = 'Fighters Sword and Shield',
	[0x01] = 'Master Sword',
	[0x50] = 'Master Sword',
	[0x02] = 'Tempered Sword',
	[0x03] = 'Golden Sword',
	[0x04] = 'Fighters Shield',
	[0x05] = 'Fire Shield',
	[0x06] = 'Mirror Shield',
	[0x07] = 'Fire Rod',
	[0x08] = 'Ice Rod',
	[0x09] = 'Hammer',
	[0x0A] = 'Hookshot',
	[0x0B] = 'Bow',
	[0x0C] = 'Boomerang',
	[0x0D] = 'Magic Powder',
	[0x0E] = 'Bee',
	[0x0F] = 'Bombos',
	[0x10] = 'Ether',
	[0x11] = 'Quake',
	[0x12] = 'Lamp',
	[0x13] = 'Shovel',
	[0x14] = 'Flute',
	[0x15] = 'Cane Of Somaria',
	[0x16] = 'Bottle (Empty)',
	[0x17] = 'Piece Of Heart',
	[0x18] = 'Cane Of Byrna',
	[0x19] = 'Magic Cape',
	[0x1A] = 'Magic Mirror',
	[0x1B] = 'Power Glove',
	[0x1C] = 'Titans Mitt',
	[0x1D] = 'Book Of Mudora',
	[0x1E] = 'Flippers',
	[0x1F] = 'Moon Pearl',
	[0x21] = 'Bug Catching Net',
	[0x22] = 'Blue Mail',
	[0x23] = 'Red Mail',
	[0x24] = 'Key',
	[0x25] = 'Compass',
	[0x26] = 'Heart Container (no animation)',
	[0x27] = 'Bomb',
	[0x28] = 'Three Bombs',
	[0x29] = 'Mushroom',
	[0x2A] = 'Magical Boomerang',
	[0x2B] = 'Bottle (Red Potion)',
	[0x2C] = 'Bottle (Green Potion)',
	[0x2D] = 'Bottle (Blue Potion)',
	[0x2E] = 'Red Potion',
	[0x2F] = 'Green Potion',
	[0x30] = 'Blue Potion',
	[0x31] = 'Ten Bombs',
	[0x32] = 'Big Key',
	[0x33] = 'Dungeon Map',
	[0x34] = 'One Rupee',
	[0x35] = 'Five Rupees',
	[0x36] = 'Twenty Rupees',
	[0x3A] = 'Bow And Arrows',
	[0x3B] = 'Bow And Silver Arrows',
	[0x3C] = 'Bottle (Bee)',
	[0x3D] = 'Bottle (Fairy)',
	[0x3E] = 'Heart Container',
	[0x3F] = 'Heart Container (refill)',
	[0x40] = 'One Hundred Rupees',
	[0x41] = 'Fifty Rupees',
	[0x42] = 'Heart',
	[0x43] = 'Arrow',
	[0x44] = 'Ten Arrows',
	[0x45] = 'Small Magic',
	[0x46] = 'Three Hundred Rupees',
	[0x47] = 'Twenty Rupees',
	[0x48] = 'Bottle (Golden Bee)',
	[0x4A] = 'Flute (active)',
	[0x4B] = 'Pegasus Boots',
	[0x51] = 'Bomb Upgrade (5)',
	[0x52] = 'Bomb Upgrade (10)',
	[0x4C] = 'Bomb Upgrade (50)',
	[0x53] = 'Arrow Upgrade (5)',
	[0x54] = 'Arrow Upgrade (10)',
	[0x4D] = 'Arrow Upgrade (70)',
	[0x4E] = 'Half Magic',
	[0x4F] = 'Quarter Magic',
	[0x55] = 'Programmable 1',
	[0x56] = 'Programmable 2',
	[0x57] = 'Programmable 3',
	[0x58] = 'Silver Arrows Upgrade',
	[0x59] = 'Rupoor',
--	[0x5B] = 'Red Clock',
--	[0x5C] = 'Blue Clock',
--	[0x5D] = 'Green Clock',
	[0x5E] = 'Progressive Sword',
	[0x5F] = 'Progressive Shield',
	[0x60] = 'Progressive Armor',
	[0x61] = 'Progressive Glove',
	[0x62] = 'Unique RNG Item',
	[0x63] = 'Non-Unique RNG Item',
--	[0x6A] = 'Triforce',
--	[0x6B] = 'Power Star',
--	[0x6C] = 'Triforce Piece',
	[0x70] = 'Light World Map',
	[0x71] = 'Dark World Map',
	[0x72] = 'Ganons Tower Map',
	[0x73] = 'Turtle Rock Map',
	[0x74] = 'Thieves Town Map',
	[0x75] = 'Tower of Hera Map',
	[0x76] = 'Ice Palace Map',
	[0x77] = 'Skull Woods Map',
	[0x78] = 'Misery Mire Map',
	[0x79] = 'Palace of Darkness Map',
	[0x7A] = 'Swamp Palace Map',
	[0x7B] = 'Agahnims Tower Map',
	[0x7C] = 'Desert Palace Map',
	[0x7D] = 'Eastern Palace Map',
	[0x7E] = 'Hyrule Castle Map',
	[0x7F] = 'Sewers Map',
	[0x82] = 'Ganons Tower Compass',
	[0x83] = 'Turtle Rock Compass',
	[0x84] = 'Thieves Town Compass',
	[0x85] = 'Tower of Hera Compass',
	[0x86] = 'Ice Palace Compass',
	[0x87] = 'Skull Woods Compass',
	[0x88] = 'Misery Mire Compass',
	[0x89] = 'Palace of Darkness Compass',
	[0x8A] = 'Swamp Palace Compass',
	[0x8B] = 'Agahnims Tower Compass',
	[0x8C] = 'Desert Palace Compass',
	[0x8D] = 'Eastern Palace Compass',
	[0x8E] = 'Hyrule Castle Compass',
	[0x8F] = 'Sewers Compass',
	[0x92] = 'Ganons Tower Big Key',
	[0x93] = 'Turtle Rock Big Key',
	[0x94] = 'Thieves Town Big Key',
	[0x95] = 'Tower of Hera Big Key',
	[0x96] = 'Ice Palace Big Key',
	[0x97] = 'Skull Woods Big Key',
	[0x98] = 'Misery Mire Big Key',
	[0x99] = 'Palace of Darkness Big Key',
	[0x9A] = 'Swamp Palace Big Key',
	[0x9B] = 'Agahnims Tower Big Key',
	[0x9C] = 'Desert Palace Big Key',
	[0x9D] = 'Eastern Palace Big Key',
	[0x9E] = 'Hyrule Castle Big Key',
	[0x9F] = 'Sewers Big Key',
	[0xA0] = 'Sewers Key',
	[0xA1] = 'Hyrule Castle Key',
	[0xA2] = 'Eastern Palace Key',
	[0xA3] = 'Desert Palace Key',
	[0xA4] = 'Agahnims Tower Key',
	[0xA5] = 'Swamp Palace Key',
	[0xA6] = 'Palace of Darkness Key',
	[0xA7] = 'Misery Mire Key',
	[0xA8] = 'Skull Woods Key',
	[0xA9] = 'Ice Palace Key',
	[0xAA] = 'Tower of Hera Key',
	[0xAB] = 'Thieves Town Key',
	[0xAC] = 'Turtle Rock Key',
	[0xAD] = 'Ganons Tower Key',
}

local bigKeys = {
	[0x32] = 'Big Key',
	[0x92] = 'Ganons Tower Big Key',
	[0x93] = 'Turtle Rock Big Key',
	[0x94] = 'Thieves Town Big Key',
	[0x95] = 'Tower of Hera Big Key',
	[0x96] = 'Ice Palace Big Key',
	[0x97] = 'Skull Woods Big Key',
	[0x98] = 'Misery Mire Big Key',
	[0x99] = 'Palace of Darkness Big Key',
	[0x9A] = 'Swamp Palace Big Key',
	[0x9B] = 'Agahnims Tower Big Key',
	[0x9C] = 'Desert Palace Big Key',
	[0x9D] = 'Eastern Palace Big Key',
	[0x9E] = 'Hyrule Castle Big Key',
	[0x9F] = 'Sewers Big Key',
}

local smallKeys = {
	[0x24] = 'Key',
	[0xA0] = 'Sewers Key',
	[0xA1] = 'Hyrule Castle Key',
	[0xA2] = 'Eastern Palace Key',
	[0xA3] = 'Desert Palace Key',
	[0xA4] = 'Agahnims Tower Key',
	[0xA5] = 'Swamp Palace Key',
	[0xA6] = 'Palace of Darkness Key',
	[0xA7] = 'Misery Mire Key',
	[0xA8] = 'Skull Woods Key',
	[0xA9] = 'Ice Palace Key',
	[0xAA] = 'Tower of Hera Key',
	[0xAB] = 'Thieves Town Key',
	[0xAC] = 'Turtle Rock Key',
	[0xAD] = 'Ganons Tower Key',
}

local junkItems = {
	[1]={['val']=0x28, ['name']='Three Bombs'},
	{['val']=0x34, ['name']='One Rupee'},
	{['val']=0x35, ['name']='Five Rupees'},
	{['val']=0x36, ['name']='Twenty Rupees'},
	{['val']=0x42, ['name']='Heart'},
	{['val']=0x45, ['name']='Small Magic'},
}


local locations = {
	[0]={["address"]=0x180159, ["name"]="Turtle Rock - Trinexx",	["type"]="Drop"},
	{["address"]=0x180162, ["name"]="Tower of Hera - Basement Cage",	["type"]="Standing\HeraBasement"},
	{["address"]=0x180152, ["name"]="Tower of Hera - Moldorm",	["type"]="Drop"},
	{["address"]=0x180156, ["name"]="Thieves' Town - Blind",	["type"]="Drop"},
	{["address"]=0x180154, ["name"]="Swamp Palace - Arrghus",	["type"]="Drop"},
	{["address"]=0x180155, ["name"]="Skull Woods - Mothula",	["type"]="Drop"},
	{["address"]=0x180153, ["name"]="Palace of Darkness - Helmasaur King",	["type"]="Drop"},
	{["address"]=0x180158, ["name"]="Misery Mire - Vitreous",	["type"]="Drop"},
	{["address"]=0x289B0, ["name"]="Master Sword Pedestal",	["type"]="Pedestal"},
	{["address"]=0x2DF45, ["name"]="Link's Uncle",	["type"]="Npc"},
	{["address"]=0x2EB18, ["name"]="Bottle Merchant",	["type"]="Npc"},
	{["address"]=0x2F1FC, ["name"]="Sahasrahla",	["type"]="Npc"},
	{["address"]=0x180015, ["name"]="Magic Bat",	["type"]="Npc"},
	{["address"]=0x339CF, ["name"]="Sick Kid",	["type"]="Npc\BugCatchingKid"},
	{["address"]=0x33E7D, ["name"]="Hobo",	["type"]="Npc"},
	{["address"]=0x180017, ["name"]="Bombos Tablet",	["type"]="Drop\Bombos"},
	{["address"]=0xEE1C3, ["name"]="King Zora",	["type"]="Npc\Zora"},
	{["address"]=0x180000, ["name"]="Lost Woods Hideout",	["type"]="Standing"},
	{["address"]=0x180001, ["name"]="Lumberjack Tree",	["type"]="Standing"},
	{["address"]=0x180003, ["name"]="Cave 45",	["type"]="Standing"},
	{["address"]=0x180004, ["name"]="Graveyard Ledge",	["type"]="Standing"},
	{["address"]=0x180005, ["name"]="Checkerboard Cave",	["type"]="Standing"},
	{["address"]=0x180010, ["name"]="Mini Moldorm Cave - NPC",	["type"]="Npc"},
	{["address"]=0x180012, ["name"]="Library",	["type"]="Dash"},
	{["address"]=0x180013, ["name"]="Mushroom",	["type"]="Standing"},
--	{["address"]=0x180014, ["name"]="Potion Shop",	["type"]="Npc\Witch"},
	{["address"]=0x180142, ["name"]="Maze Race",	["type"]="Standing"},
	{["address"]=0x180143, ["name"]="Desert Ledge",	["type"]="Standing"},
	{["address"]=0x180144, ["name"]="Lake Hylia Island",	["type"]="Standing"},
	{["address"]=0x180145, ["name"]="Sunken Treasure",	["type"]="Standing"},
	{["address"]=0x180149, ["name"]="Zora's Ledge",	["type"]="Standing"},
	{["address"]=0x18014A, ["name"]="Flute Spot",	["type"]="Dig\HauntedGrove"},
	{["address"]=0x180157, ["name"]="Ice Palace - Kholdstare",	["type"]="Drop"},
	{["address"]=0x180161, ["name"]="Ganon's Tower - Bob's Torch",	["type"]="Dash"},
--	{["address"]=0x348FF, ["name"]="Waterfall Bottle",	["type"]="Fountain"},
--	{["address"]=0x3493B, ["name"]="Pyramid Bottle",	["type"]="Fountain"},
	{["address"]=0x180150, ["name"]="Eastern Palace - Armos Knights",	["type"]="Drop"},
	{["address"]=0x180160, ["name"]="Desert Palace - Torch",	["type"]="Dash"},
	{["address"]=0x180151, ["name"]="Desert Palace - Lanmolas'",	["type"]="Drop"},
	{["address"]=0xF69FA, ["name"]="Old Man",	["type"]="Npc"},
	{["address"]=0x180002, ["name"]="Spectacle Rock Cave",	["type"]="Standing"},
	{["address"]=0x180016, ["name"]="Ether Tablet",	["type"]="Drop\Ether"},
	{["address"]=0x180140, ["name"]="Spectacle Rock",	["type"]="Standing"},
	{["address"]=0x180141, ["name"]="Floating Island",	["type"]="Standing"},
	{["address"]=0x330C7, ["name"]="Stumpy",	["type"]="Npc"},
	{["address"]=0x180011, ["name"]="Hype Cave - NPC",	["type"]="Npc"},
	{["address"]=0x180148, ["name"]="Digging Game",	["type"]="Dig"},
	{["address"]=0x180006, ["name"]="Hammer Pegs",	["type"]="Standing"},
	{["address"]=0x180146, ["name"]="Bumper Cave",	["type"]="Standing"},
	{["address"]=0x33D68, ["name"]="Purple Chest",	["type"]="Npc"},
	{["address"]=0xEE185, ["name"]="Catfish",	["type"]="Standing"},
	{["address"]=0x180147, ["name"]="Pyramid",	["type"]="Standing"},
	{["address"]=0x180028, ["name"]="Pyramid Fairy - Sword",	["type"]="Trade"},
	{["address"]=0x34914, ["name"]="Pyramid Fairy - Bow",	["type"]="Trade"},
	{["address"]=0x18002A, ["name"]="Blacksmith",	["type"]="Npc"},
	{["address"]=0x3355C, ["name"]="Blacksmith",	["type"]="Npc"},
}

local gameLoadedModes = {
    [0x00]=false,  --Triforce / Zelda startup screens
    [0x01]=false,  --Game Select screen
    [0x02]=false,  --Copy Player Mode
    [0x03]=false,  --Erase Player Mode
    [0x04]=false,  --Name Player Mode
    [0x05]=false,  --Loading Game Mode
    [0x06]=true,  --Pre Dungeon Mode
    [0x07]=true,  --Dungeon Mode
    [0x08]=true,  --Pre Overworld Mode
    [0x09]=true,  --Overworld Mode
    [0x0A]=true,  --Pre Overworld Mode (special overworld)
    [0x0B]=true,  --Overworld Mode (special overworld)
    [0x0C]=true,  --???? I think we can declare this one unused, almost with complete certainty.
    [0x0D]=true,  --Blank Screen
    [0x0E]=true,  --Text Mode/Item Screen/Map
    [0x0F]=true,  --Closing Spotlight
    [0x10]=true,  --Opening Spotlight
    [0x11]=true,  --Happens when you fall into a hole from the OW.
    [0x12]=true,  --Death Mode
    [0x13]=true,  --Boss Victory Mode (refills stats)
    [0x14]=false,  --History Mode (Title Screen Demo)
    [0x15]=true,  --Module for Magic Mirror
    [0x16]=true,  --Module for refilling stats after boss.
    [0x17]=false,  --Restart mode (save and quit)
    [0x18]=true,  --Ganon exits from Agahnim's body. Chase Mode.
    [0x19]=true,  --Triforce Room scene
    [0x1A]=false,  --End sequence
    [0x1B]=false,  --Screen to select where to start from (House, sanctuary, etc.)
}

local continueHP = {
	[03] = 03,
	[04] = 03,
	[05] = 04,
	[06] = 04,
	[07] = 05,
	[08] = 05,
	[09] = 06,
	[10] = 06,
	[11] = 07,
	[12] = 07,
	[13] = 07,
	[14] = 08,
	[15] = 08,
	[16] = 08,
	[17] = 09,
	[18] = 09,
	[19] = 09,
	[20] = 10,
}


local deathQueue = {}
function tableCount(table)
	local count = 0
    for _, _ in pairs(table) do
        count = count + 1
    end
    return count
end

local prevRAM = nil
local gameMode
local prevGameMode = nil

local gameLoaded
local prevGameLoaded = true
local dying = false
local prevmode = 0
local lttp_ram = {}
local playercount = 1

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


-- Return the new value only when changing from 0
local function zeroChange(newValue, prevValue) 
	if (newValue == 0 or (newValue ~= 0 and prevValue == 0)) then
		return newValue
	else
		return prevValue
	end
end

local function clamp(newValue, prevValue, address, item)
	if item.min then
		newValue = math.max(newValue, item.min)
	end
	if item.max then
		newValue = math.min(newValue, item.max)
	end
	return newValue
end

local function recieveKey(newValue, prevValue, address, item)
	if newValue < prevValue then
		return prevValue
	end

	if (newValue >= 0xFF) then
		return prevValue
	end

	local dungeon = readRAM("WRAM", 0x040C, 1) / 2
	if (dungeon == (address - 0xF37C)) then
		local delta = newValue - prevValue
		local curKeys = readRAM("WRAM", 0xF36F, 1)
		curKeys = curKeys + delta
		writeRAM("WRAM", 0xF36F, 1, curKeys)
	end

	return newValue
end


local function updateKey()
	local dungeon = readRAM("WRAM", 0x040C, 1) / 2
	local curKeys = readRAM("WRAM", 0xF36F, 1)

	if curKeys ~= 0xFF and dungeon <= 13 then
		writeRAM("WRAM", 0xF37C + dungeon, 1, curKeys)
	end
end

local function receiveBottle(newValue, prevValue) 
	if config.ramconfig.ammo then
		return newValue
	else
		-- get item, but don't remove item
		return zeroChange(newValue, prevValue) 
	end
end


ramItems = {
	[0x0010] = {type="num", receiveFunc=function(newValue, prevValue)
		if (newValue == 0x19) then -- Triforce room scene mode
			return newValue
		else
			return prevValue
		end
	end},
	-- INVENTORY_SWAP
	[0xF38C] = {name={[0]="Bird", "Flute", "Shovel", "unknown item", "Magic Powder", "Mushroom", "Red Boomerang", "Blue Boomerang"}, type="bit"},
	-- INVENTORY_SWAP_2
	[0xF38E] = {name={[0]="unknown item", "unknown item", "unknown item", "unknown item", "unknown item", "unknown item", "Silver Arrows", "Bow"}, type="bit"},

	[0xF3C5] = {type="num"}, -- "light world progress" needed to activate sword

	[0xF340] = {type="num", receiveFunc=zeroChange}, -- Bows, tracked in INVENTORY_SWAP_2 but must be nonzero to appear in inventory
	[0xF341] = {type="num", receiveFunc=zeroChange}, -- Boomerangs, tracked in INVENTORY_SWAP
	[0xF342] = {name="Hookshot", type="bool"},
	[0xF344] = {type="num"}, -- Mushroom, tracked in INVENTORY_SWAP
	[0xF345] = {name="Fire Rod", type="bool"},
	[0xF346] = {name="Ice Rod", type="bool"},
	[0xF347] = {name="Bombos Medallion", type="bool"},
	[0xF348] = {name="Ether Medallion", type="bool"},
	[0xF349] = {name="Quake Medallion", type="bool"},
	[0xF34A] = {name="Lantern", type="bool"},
	[0xF34B] = {name="Magic Hammer", type="bool"},
	[0xF34C] = {type="num", receiveFunc=function(newValue, prevValue)
		if (newValue == 0 or (newValue ~= 0 and prevValue == 0) or (newValue == 3 and prevValue == 2)) then
			return newValue
		else
			return prevValue
		end end},       -- Shovel flute etc, tracked in INVENTORY_SWAP
	[0xF34D] = {name="Bug Net", type="bool"},
	[0xF34E] = {name="Book of Mudora", type="bool"},
	[0xF34F] = {type="num", receiveFunc=zeroChange}, -- Selected bottle
	[0xF350] = {name="Cane of Somaria", type="bool"},
	[0xF351] = {name="Cane of Bryna", type="bool"},
	[0xF352] = {name="Magic Cape", type="bool"},
	[0xF353] = {name={[0]="Magic Mirror Removed","Magic Letter","Magic Mirror"}, type="num"}, -- 1 = map gfx, 2 = mirror gfx
	[0xF354] = {name={[0]="Bare Hands", "Power Gloves", "Titan's Mitts"}, type="num"},
	[0xF355] = {name="Pegasus Boots", type="bool", receiveFunc=function(newValue, prevValue)
		prevAbility = readRAM("WRAM", 0xF379, 1)
		if newValue > 0 then
			prevAbility = bit.set(prevAbility, 2)
		else
			prevAbility = bit.clear(prevAbility, 2)
		end
		writeRAM("WRAM", 0xF379, 1, prevAbility) -- Set ability to run
		return newValue end
	},
	[0xF356] = {name="Zora Flippers", type="bool", receiveFunc=function(newValue, prevValue)
		prevAbility = readRAM("WRAM", 0xF379, 1)
		if newValue > 0 then
			prevAbility = bit.set(prevAbility, 1)
		else
			prevAbility = bit.clear(prevAbility, 1)
		end
		writeRAM("WRAM", 0xF379, 1, prevAbility) -- Set ability to swim
		return newValue end
	},
	[0xF357] = {name="Moon Pearl", type="bool"},
	[0xF359] = {name={[0]="Swordless", "Fighter's Sword", "Master Sword", "Tempered Sword", "Golden Sword"}, type="delta", receiveFunc=function(newValue, prevValue)
		if newValue > 0x80 or newValue < 0 then
			return prevValue
		end
		return math.max(math.min(newValue, 4), 0) end},
	[0xF416] = {type="delta", mask=0xC0, receiveFunc=clamp, min=0, max=0xC0}, -- Progressive shield
	[0xF35A] = {name={[0]="No Shield", "Fighter's Shield", "Fire Shield", "Mirror Shield"}, type="delta", receiveFunc=clamp, min=0, max=3},
	[0xF35B] = {name={[0]="Green Mail", "Blue Mail", "Red Mail"}, type="delta", receiveFunc=clamp, min=0, max=2},
	[0xF35C] = {name={[0]="No bottle", "Mushroom", "Empty bottle", "Red Potion", "Green Potion", "Blue Potion", "Fairy", "Bee", "Good Bee"}, type="num", receiveFunc=receiveBottle}, 
	[0xF35D] = {name={[0]="No bottle", "Mushroom", "Empty bottle", "Red Potion", "Green Potion", "Blue Potion", "Fairy", "Bee", "Good Bee"}, type="num", receiveFunc=receiveBottle},
	[0xF35E] = {name={[0]="No bottle", "Mushroom", "Empty bottle", "Red Potion", "Green Potion", "Blue Potion", "Fairy", "Bee", "Good Bee"}, type="num", receiveFunc=receiveBottle},
	[0xF35F] = {name={[0]="No bottle", "Mushroom", "Empty bottle", "Red Potion", "Green Potion", "Blue Potion", "Fairy", "Bee", "Good Bee"}, type="num", receiveFunc=receiveBottle},
	[0xF364] = {name={[0]="unused Compass", "unused Compass", "Ganon's Tower Compass", "Turtle Rock Compass", "Thieves Town Compass", "Tower of Hera Compass", "Ice Palace Compass", "Skull Woods Compass"}, type="bit"},
	[0xF365] = {name={[0]="Misery Mire Compass", "Palace of Darkness Compass", "Swamp Palace Compass", "Agahnim's Tower Compass", "Desert Palace Compass", "Eastern Palace Compass", "Hyrule Castle Compass"}, type="bit"},
	[0xF366] = {name={[0]="unused Boss Key", "unused Boss Key", "Ganon's Tower Boss Key", "Turtle Rock Boss Key", "Thieves Town Boss Key", "Tower of Hera Boss Key", "Ice Palace Boss Key", "Skull Woods Boss Key"}, type="bit"},
	[0xF367] = {name={[0]="Misery Mire Boss Key", "Palace of Darkness Boss Key", "Swamp Palace Boss Key", "Agahnim's Tower Boss Key", "Desert Palace Boss Key", "Eastern Palace Boss Key", "Hyrule Castle Boss Key"}, type="bit"},
	[0xF368] = {name={[0]="unused Map", "unused Map", "Ganon's Tower Map", "Turtle Rock Map", "Thieves Town Map", "Tower of Hera Map", "Ice Palace Map", "Skull Woods Map"}, type="bit"},
	[0xF369] = {name={[0]="Misery Mire Map", "Palace of Darkness Map", "Swamp Palace Map", "Agahnim's Tower Map", "Desert Palace Map", "Eastern Palace Map", "Hyrule Castle Map"}, type="bit"},
	[0xF374] = {name={[0]="Red Pendant", "Blue Pendant", "Green Pendant"}, type="bit"},
	[0xF37A] = {name={[0]="Crystal 6", "Crystal 1", "Crystal 5", "Crystal 7", "Crystal 2", "Crystal 4", "Crystal 3", "unused"}, type="bit"},
	[0xF37B] = {name={[0]="Normal Magic", "1/2 Magic", "1/4 Magic"}, type="delta", receiveFunc=clamp, min=0, max=2},

	-- Ammo values
	[0xF360] = {flag="ammo", type="delta", size=2, receiveFunc=clamp, min=0, max=9999}, -- Current Rupees
	[0xF36A] = {flag="ammo", type="delta", receiveFunc=clamp, min=0, max=999}, -- Wishing Pond Rupees
	[0xF36B] = {type="delta", receiveFunc=function(newValue, prevValue)
		return newValue % 4 end}, -- Heart pieces
	[0xF36C] = {type="delta", default=0x18, receiveFunc=clamp, min=0, max=0xF0}, -- HP Max
	[0xF36D] = {flag="ammo", type="delta", 
		receiveFunc=function(newValue, prevValue, address, item, their_user)
			local delta = newValue - prevValue

			if (tableCount(deathQueue) > 0) then
				if (delta < -0xFF) then
					deathQueue[their_user] = true
				end
				return prevValue
			end

			if (delta < -0xFF) then
				-- death message
				newValue = 0
				gui.addmessage(their_user .. " killed you.")
				deathQueue[their_user] = true
			end

			local maxHP = readRAM("WRAM", 0xF36C, 1)
			newValue = math.max(math.min(newValue, maxHP), 0)

			return newValue	end
		, default=0x18}, -- HP Current
	[0xF36E] = {flag="ammo", type="delta", receiveFunc=clamp, min=0, max=0x80}, -- MP
	[0xF370] = {type="delta", receiveFunc=clamp, min=0, max=89}, -- Bomb upgrades
	[0xF371] = {type="delta", receiveFunc=clamp, min=0, max=69}, -- Arrow upgrades
	[0xF377] = {flag="ammo", type="delta", receiveFunc=function(newValue, prevValue)
		local maxArrows = readRAM("WRAM", 0xF371, 1) + 30
		return math.max(math.min(newValue, maxArrows), 0) end}, -- Arrows
	[0xF343] = {flag="ammo", type="delta", receiveFunc=function(newValue, prevValue)
		local maxBombs = readRAM("WRAM", 0xF370, 1) + 10
		return math.max(math.min(newValue, maxBombs), 0) end}, -- Bombs

	-- keys
	[0xF36F] = {flag="gkey", name="Key", type="delta", receiveFunc=recieveKey},
	[0xF37C] = {flag="skey", type="delta", receiveFunc=recieveKey}, -- Sewer Passage Key
	[0xF37D] = {flag="skey", name="Hyrule Castle Key", type="delta", receiveFunc=recieveKey},
	[0xF37E] = {flag="skey", name="Eastern Palace Key", type="delta", receiveFunc=recieveKey},
	[0xF37F] = {flag="skey", name="Desert Palace Key", type="delta", receiveFunc=recieveKey},
	[0xF380] = {flag="skey", name="Agahnim's Tower Key", type="delta", receiveFunc=recieveKey},
	[0xF381] = {flag="skey", name="Swamp Palace Key", type="delta", receiveFunc=recieveKey},
	[0xF382] = {flag="skey", name="Palace of Darkness Key", type="delta", receiveFunc=recieveKey},
	[0xF383] = {flag="skey", name="Misery Mire Key", type="delta", receiveFunc=recieveKey},
	[0xF384] = {flag="skey", name="Skull Woods Key", type="delta", receiveFunc=recieveKey},
	[0xF385] = {flag="skey", name="Ice Palace Key", type="delta", receiveFunc=recieveKey},
	[0xF386] = {flag="skey", name="Tower of Hera Key", type="delta", receiveFunc=recieveKey},
	[0xF387] = {flag="skey", name="Thieves Town Key", type="delta", receiveFunc=recieveKey},
	[0xF388] = {flag="skey", name="Turtle Rock Key", type="delta", receiveFunc=recieveKey},
	[0xF389] = {flag="skey", name="Ganon's Tower Key", type="delta", receiveFunc=recieveKey},
}




-- Display a message of the ram event
function getGUImessage(address, prevVal, newVal, user)
	-- Only display the message if there is a name for the address
	local name = ramItems[address].name
	if name and prevVal ~= newVal then
		-- If boolean, show 'Removed' for false
		if ramItems[address].type == "bool" then				
			gui.addmessage(user .. ": " .. name .. (newVal == 0 and 'Removed' or ''))
		-- If numeric, show the indexed name or name with value
		elseif ramItems[address].type == "num" then
			if (type(name) == 'string') then
				gui.addmessage(user .. ": " .. name .. " = " .. newVal)
			elseif (name[newVal]) then
				gui.addmessage(user .. ": " .. name[newVal])
			end
		-- If bitflag, show each bit: the indexed name or bit index as a boolean
		elseif ramItems[address].type == "bit" then
			for b=0,7 do
				local newBit = bit.check(newVal, b)
				local prevBit = bit.check(prevVal, b)

				if (newBit ~= prevBit) then
					if (type(name) == 'string') then
						gui.addmessage(user .. ": " .. name .. " flag " .. b .. (newBit and '' or ' Removed'))
					elseif (name[b]) then
						gui.addmessage(user .. ": " .. name[b] .. (newBit and '' or ' Removed'))
					end
				end
			end
		-- if delta, show the indexed name, or the differential
		elseif ramItems[address].type == "delta" then
			local delta = newVal - prevVal
			if (delta > 0) then
				if (type(name) == 'string') then
					gui.addmessage(user .. ": " .. name .. (delta > 0 and " +" or " ") .. delta)
				elseif (name[newVal]) then
					gui.addmessage(user .. ": " .. name[newVal])
				end
			end
		else 
			gui.addmessage("Unknown item ram type")
		end
	end
end





-- Get a list of changed ram events
function eventRAMchanges(prevRAM, newRAM)
	local ramevents = {}
	local changes = false

	for address, val in pairs(newRAM) do
		-- If change found
		if (prevRAM[address] ~= val) then
			getGUImessage(address, prevRAM[address], val, config.user)

			-- If boolean, get T/F
			if ramItems[address].type == "bool" then
				ramevents[address] = (val ~= 0)
				changes = true
			-- If numeric, get value
			elseif ramItems[address].type == "num" then
				ramevents[address] = val				
				changes = true
			-- If bitflag, get the changed bits
			elseif ramItems[address].type == "bit" then
				local changedBits = {}
				for b=0,7 do
					local newBit = bit.check(val, b)
					local prevBit = bit.check(prevRAM[address], b)

					if (newBit ~= prevBit) then
						changedBits[b] = newBit
					end
				end
				ramevents[address] = changedBits
				changes = true
			-- If delta, get the change from prevRAM frame
			elseif ramItems[address].type == "delta" then
				ramevents[address] = val - prevRAM[address]
				changes = true
			else 
				printOutput("Unknown item ram type")
			end
		end
	end

	if (changes) then
		return ramevents
	else
		return false
	end
end


-- set a list of ram events
function setRAMchanges(prevRAM, their_user, newEvents)
	for address, val in pairs(newEvents) do
		local newval

		-- If boolean type value
		if ramItems[address].type == "bool" then
			newval = (val and 1 or 0)
		-- If numeric type value
		elseif ramItems[address].type == "num" then
			newval = val
		-- If bitflag update each bit
		elseif ramItems[address].type == "bit" then
			newval = prevRAM[address]
			for b, bitval in pairs(val) do
				if bitval then
					newval = bit.set(newval, b)
				else
					newval = bit.clear(newval, b)
				end
			end
		-- If delta, add to the previous value
		elseif ramItems[address].type == "delta" then
			newval = prevRAM[address] + val
		else 
			printOutput("Unknown item ram type")
			newval = prevRAM[address]
		end

		-- Run the address's reveive function if it exists
		if (ramItems[address].receiveFunc) then
			newval = ramItems[address].receiveFunc(newval, prevRAM[address], address, ramItems[address], their_user)
		end

		-- Apply the address's bit mask
		if (ramItems[address].mask) then
			local xMask = bit.bxor(ramItems[address].mask, 0xFF)
			local prevval = readRAM("WRAM", address, ramItems[address].size)

			prevval = bit.band(prevval, xMask)
			newval = bit.band(newval, ramItems[address].mask)
			newval = bit.bor(prevval, newval)
		end

		-- Write the new value
		getGUImessage(address, prevRAM[address], newval, their_user)
		prevRAM[address] = newval
		if gameLoadedModes[gameMode] then
			writeRAM("WRAM", address, ramItems[address].size, newval)
		end
	end	
	return prevRAM
end




-- If not rupee arrows, add arrows from junk pool
if readRAM("CARTROM", 0x180175, 1) == 0 then
	table.insert(junkItems, {['val']=0x43, ['name']='Arrow'})
	table.insert(junkItems, {['val']=0x44, ['name']='Ten Arrows'})
end


-- Get Shop item locations
local shopItems = {}
local nextItemAddress = 0x184900
local nextItem = readRAM("CARTROM", nextItemAddress + 1, 1)
while nextItem ~= 0xFF do
	if (nextItem == 0x30) or (nextItem == 0x3E) or (nextItem == 0x5E) then
		local shopID = readRAM("CARTROM", nextItemAddress, 1)

		local newVal
		if (nextItem == 0x30) then
			newVal = 0x41 -- 50 Rupees
		elseif (nextItem == 0x3E) then
			newVal = 0x31 -- 10 Bombs
		elseif (nextItem == 0x5E) then
			newVal = 0x40 -- 100 Rupees
		end

		if (shopItems[shopID] == nil) then
			shopItems[shopID] = {
				["items"] = {
					{["address"] = nextItemAddress + 1,
					["newval"] = newVal}},
				["type"] = "Shop",
				["address"] = nextItemAddress
			}
		else 
			table.insert(shopItems[shopID].items, {
				["address"] = nextItemAddress + 1,
				["newval"] = newVal
			})
		end
	end

	nextItemAddress = nextItemAddress + 8
	nextItem = readRAM("CARTROM", nextItemAddress + 1, 1)
end
for _,shop in pairs(shopItems) do
	table.insert(locations, shop)
end



-- Get chest locations
for ID = 0,167 do
	table.insert(locations, {
		["address"] = 0xE96E + (ID * 3),
		["type"] = "Chest"
	})
end


-- Get enemy key drops (load dynamically for pot shuffling)
for ID = 0,0x17F do
	local roomspritesptr = 0x040000 + readRAM("CARTROM", 0x04D62E + (ID * 2), 2)
	roomspritesptr = roomspritesptr + 1 -- ignore first byte of list

	local keyfound = false
	while (readRAM("CARTROM", roomspritesptr, 1) ~= 0xFF) do
		if readRAM("CARTROM", roomspritesptr + 2, 1) == 0xE4 then
			keyfound = roomspritesptr
		end
		roomspritesptr = roomspritesptr + 3
	end
	if keyfound then
		table.insert(locations, {
			["address"] = keyfound,
			["address2"] = roomspritesptr - 3,
			["type"] = "Key"
		})
	end
end

-- Get pot key locations
for ID = 0,0x13F do
	local roomsecretssptr = 0x000000 + readRAM("CARTROM", 0x00DB67 + (ID * 2), 2)
	while (readRAM("CARTROM", roomsecretssptr, 2) ~= 0xFFFF) do
		if readRAM("CARTROM", roomsecretssptr + 2, 1) == 0x08 then
			table.insert(locations, {
				["address"] = roomsecretssptr + 2,
				["type"] = "Pot"
			})
		end
		roomsecretssptr = roomsecretssptr + 3
	end
end
lttp_ram.itemcount = 0
for _,_ in pairs(locations) do lttp_ram.itemcount = lttp_ram.itemcount + 1 end

local messageQueue = {first = 0, last = -1}
function messageQueue.isEmpty()
	return messageQueue.first > messageQueue.last
end
function messageQueue.pushLeft (value)
  local first = messageQueue.first - 1
  messageQueue.first = first
  messageQueue[first] = value
end
function messageQueue.pushRight (value)
  local last = messageQueue.last + 1
  messageQueue.last = last
  messageQueue[last] = value
end
function messageQueue.popLeft ()
  local first = messageQueue.first
  if messageQueue.isEmpty() then error("list is empty") end
  local value = messageQueue[first]
  messageQueue[first] = nil        -- to allow garbage collection
  messageQueue.first = first + 1
  return value
end
function messageQueue.popRight ()
  local last = messageQueue.last
  if messageQueue.isEmpty() then error("list is empty") end
  local value = messageQueue[last]
  messageQueue[last] = nil         -- to allow garbage collection
  messageQueue.last = last - 1
  return value
end


-- Gets a message to send to the other player of new changes
-- Returns the message as a dictionary object
-- Returns false if no message is to be send
function lttp_ram.getMessage()
	-- Check if game is playing
	gameMode = readRAM("WRAM", 0x0010, 1)
	local gameLoaded = gameLoadedModes[gameMode] == true

	-- Don't check for updated when game is not running
	if not gameLoaded then
		prevGameMode = gameMode
		return false
	end

	-- Update dungeon key counts
	updateKey()

	-- Initilize previous RAM frame if missing
	if prevRAM == nil then
		prevRAM = getRAM()
	end

	-- Checked for queued death and apply when safe
	if config.ramconfig.ammo and tableCount(deathQueue) > 0 and not deathQueue[config.user] then
		-- Main mode: 07 = Dungeon, 09 = Overworld, 0B = Special Overworld
		-- Sub mode: Non 0 = game is paused, transitioning between modes
		if (gameMode == 0x07 or gameMode == 0x09 or gameMode == 0x0B) and (readRAM("WRAM", 0x0011, 1) == 0x00) then 
			-- If link is controllable
			writeRAM("WRAM", 0x0010, 2, 0x0012) -- Kill link as soon as it's safe
			writeRAM("WRAM", 0xF36D, 1, 0)
			writeRAM("WRAM", 0x04C6, 1, 0) -- Stop any special cutscenes
			prevRAM[0xF36D] = 0
			gameMode = 0x12
		end
	end

	if config.ramconfig.ammo and gameMode == 0x12 then
		local deathCount = tableCount(deathQueue)
		if (deathCount > 0 and deathCount < playercount) then
			-- Lock the death until everyone is dying
			writeRAM("WRAM", 0x0010, 2, 0x0012)
		elseif (deathCount >= playercount) then
			deathQueue = {}

			local hasFairy = false
			for bottleID=0,3 do
				if prevRAM[0xF35C + bottleID] == 0x06 then
					-- has fairy
					hasFairy = true
				end
			end

			local maxHP = readRAM("WRAM", 0xF36C, 1)
			local contHP
			if (hasFairy) then
				contHP = 7 * 8
			else
			 	contHP = (continueHP[maxHP / 8] or 10) * 8
			end
			prevRAM[0xF36D] = math.max(math.min(prevRAM[0xF36D] + contHP, maxHP), 0)
			writeRAM("WRAM", 0xF36D, 1, prevRAM[0xF36D])		
		end

		if (prevGameMode == 0x12) then
			-- discard continue HP/fairy HP
			writeRAM("WRAM", 0xF36D, 1, prevRAM[0xF36D])
		end
	end

	-- Game was just loaded, restore to previous known RAM state
	if (gameLoaded and not gameLoadedModes[prevGameMode]) then
		 -- get changes to prevRAM and apply them to game RAM
		local newRAM = getRAM()
		local message = eventRAMchanges(newRAM, prevRAM)
		prevRAM = newRAM
		if (message) then
			lttp_ram.processMessage("Save Restore", message)
		end
	end

	-- Load all queued changes
	while not messageQueue.isEmpty() do
		local nextmessage = messageQueue.popLeft()
		lttp_ram.processMessage(nextmessage.their_user, nextmessage.message)
	end

	-- Get current RAM events
	local newRAM = getRAM()
	local message = eventRAMchanges(prevRAM, newRAM)

	-- Update the RAM frame pointer
	prevRAM = newRAM

	

	-- Check for death message
	if config.ramconfig.ammo and gameMode == 0x12 then
		if (prevGameMode ~= 0x12) then
			if message == false then
				message = {}
			end

			message[0xF36D] = -0x100 -- death message is a large HP loss
			deathQueue[config.user] = true
		else 
			-- suppress all non death messages during death sequence
			return false
		end
	end
	prevGameMode = gameMode

	return message
end


-- Process a message from another player and update RAM
function lttp_ram.processMessage(their_user, message)
	

	if gameLoadedModes[gameMode] then
		prevRAM = setRAMchanges(prevRAM, their_user, message)
	else
		messageQueue.pushRight({["their_user"]=their_user, ["message"]=message})
	end
end

local configformState

function configOK() 
	configformState = "OK"
end
function configCancel() 
	configformState = "Cancel"
end




return lttp_ram


