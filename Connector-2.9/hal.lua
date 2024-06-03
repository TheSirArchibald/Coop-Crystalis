-------------------------------------------------------------------------------
--	hal.lua (Bizhawk)
--	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
--	Provides a set of emulator-specific implementations of common connector
--	functions
-------------------------------------------------------------------------------

local base64 = require('base64')

local hal = { _version = "0.1.0" }

local running = true

function hal._luacore()
    if (client.get_lua_engine ~= nil) then
		return client.get_lua_engine()
	elseif (emu.getluacore ~= nil) then
		return emu.getluacore()
	else
		return nil
	end
end

function hal.read_u8(address, domain)
	return memory.read_u8(address, domain)
end

function hal.read_u16_le(address, domain)
	return memory.read_u16_le(address, domain)
end

function hal.read_u32_le(address, domain)
	return memory.read_u32_le(address, domain)
end

function hal.write_u8(address, value, domain)
  memory.write_u8(address, value, domain)
end

function hal.write_u16_le(address, value, domain)
	memory.write_u16_le(address, value, domain)
end

function hal.write_u32_le(address, value, domain)
	memory.write_u32_le(address, value, domain)
end

--	Return a HAL-formatted byte-range read from the specified location
function hal.read_byte_range(address, length, domain)
	return memory.readbyterange(address, length, domain)
end

--	Write a HAL-formatted byte-range at the specified location
function hal.write_byte_range(address, byteRange, domain)
	memory.writebyterange(byteRange, domain)
end

--	Return a base64-encoded buffer from a HAL-formatted read_byte_range result
function hal.pack_byte_range(halByteBuffer, length)
	local result = ''
	for i = 0, length - 1 do
		result = result .. string.char(halByteBuffer[i])
	end
	return to_base64(result)
end

--	Return a HAL-appropriate byte-range from a base64-encoded buffer, for use with write_byte_range
function hal.unpack_byte_range(packedBuffer, offset)
  local unpacked = from_base64(packedBuffer)
  local result = {}
  --result:setn(unpacked:len())
  for i = 0, unpacked:len() do
    local n = i + 1
    result[offset + i] = unpacked:byte(n, n)
  end
  return result
end

function hal.open_rom(path)
	client.openrom(path)
end

function hal.close_rom()
	client.closerom()
end

function hal.get_rom_path()
	return gameinfo.getromname()
end

function hal.get_system_id()
	return emu.getsystemid()
end

--	Displays a message on-screen in an emulator-defined way
function hal.message(msg)
	gui.addmessage(msg)
	print(msg)
end

function hal.pause()
	client.pause()
end

function hal.unpause()
	client.unpause()
end

function hal.yield()
	emu.yield()
end

function hal.draw_get_framebuffer_height()
	return client.bufferheight()
end

function hal.draw_begin()
  if (BIZHAWK_MAJOR == 2) and (BIZHAWK_MINOR < 6) then
	gui.DrawNew("emu", true)
  end
end

function hal.draw_end()
  if (BIZHAWK_MAJOR == 2) and (BIZHAWK_MINOR < 6) then
	gui.DrawFinish()
  end
end

--	Render colored text at a specified pixel location
function hal.draw_text(x, y, msg, textColor, backColor)
	gui.pixelText(x, y, msg, textColor, backColor)
end

--	Clear the drawing canvas
function hal.draw_clear()
  if (BIZHAWK_MAJOR == 2) and (BIZHAWK_MINOR < 6) then
	gui.DrawNew("emu", true)
	gui.DrawFinish()
  else
    gui.clearGraphics()
    gui.cleartext()
  end
end

function hal.framecount()
  return emu.framecount()
end

function hal.corestate_save()
	return memorysavestate.savecorestate()
end

function hal.corestate_load(id)
	return memorysavestate.loadcorestate(id)
end

function hal.corestate_delete(id)
	return memorysavestate.removestate(id)
end

local tickFuncs = { }
function hal.register_tick(name, callback)
	tickFuncs[name] = callback
end

function hal.unregister_tick(name)
	tickFuncs[name] = nil
end

local startupFuncs = { }
function hal.register_startup(name, callback)
	startupFuncs[name] = callback
end

local shutdownFuncs = { }
function hal.register_shutdown(name, callback)
	shutdownFuncs[name] = callback
end

local stateSaveFuncs = { }
function hal.register_state_save(name, callback)
	stateSaveFuncs[name] = callback
end

local stateLoadFuncs = { }
function hal.register_state_load(name, callback)
	stateLoadFuncs[name] = callback
end

function table.copy(t)
  local u = { }
  for k, v in pairs(t) do u[k] = v end
  return setmetatable(u, getmetatable(t))
end

local function invokeCallbackList(_callbacks, ...)
	if next(_callbacks) then
		local callbacks = table.copy(_callbacks)
		for k, v in pairs(callbacks) do
			if v then
				v(...)
			end
		end
	end
end

function hal.shutdown()
	--	Invoke shutdown callbacks
	invokeCallbackList(shutdownFuncs)

	--	Clear callback lists
	startupFuncs = { }
	tickFuncs = { }
	shutdownFuncs = { }
	stateSaveFuncs = { }
	stateLoadFuncs = { }
	
	running = false
end

function hal.startup()
	console.clear()
	
	--	Clear any existing exit event registrations
	-- event.unregisterbyname('cc.exit')
	
	if emu.getsystemid() == 'NULL' then
		print('Emulator not running')
		-- Keep the script active with an empty loop
		-- It will reload after the emulator starts
		while running do emu.yield() end
	end

	client.unpause()
	-- event.onexit(hal.shutdown, 'cc.exit')
	
	event.onloadstate(hal.onLoadState)
	event.onsavestate(hal.onSaveState)

	--	Invoke startup callbacks
	invokeCallbackList(startupFuncs)

	while running do
		invokeCallbackList(tickFuncs)
		emu.yield()
	end
end

function hal.onLoadState(slot)
	invokeCallbackList(stateLoadFuncs, slot)
end

function hal.onSaveState(slot)
	invokeCallbackList(stateSaveFuncs, slot)
end

function hal.connection_timeout()
	print('To reload, double-click the script name in the Lua window.')
end

function hal.validate_environment()
  --this deprecated call should be here, do not remove it

if IS_BIZHAWK(2,8,1) then	---Special Support for the Crystalis Coop Version until I can figure out the core socket issue.
	return true

elseif (hal._luacore() == nil) or not (IS_BIZHAWK(2,8,1) or IS_BIZHAWK(2,9,2)) then
    print("Crowd Control requires BizHawk 2.9.1 or 2.9.2 to function.")
    print("You can download the correct version of BizHawk from:")
    print("        https://github.com/TASVideos/BizHawk/releases")
    print("Check our Setup Guide out at                         ")
	print("   https://minish-cap.deoxis9001.ovh/en/tracking.html")
    gui.text(25,50, "Crowd Control requires BizHawk 2.9.1 or 2.9.2 to function.")
    gui.text(25,100, "You can download the correct version of BizHawk from:")
    gui.text(25,150, "        https://github.com/TASVideos/BizHawk/releases")
    gui.text(25,200, "Check our Setup Guide out at                         ")
	gui.text(25,250, "   https://minish-cap.deoxis9001.ovh/en/tracking.html")
    return false
  elseif (hal._luacore() ~= 'LuaInterface' and hal._luacore() ~= "NLua+Lua")  then
	local target_core = (IS_BIZHAWK_GE(2,8,1) and "NLua+Lua") or "Lua+LuaInterface"
	print('Unsupported Lua core:', hal._luacore())
    print("Crowd Control requires " .. target_core .. " to function.")
    print("Click Config -> Customize and then the Advanced Tab.")
    print("At the bottom, click the " .. target_core .. " and then OK.")
    print("Exit out of BizHawk completely and click Launch in CC.")
    print("Check our Setup Guide out at https://minish-cap.deoxis9001.ovh/en/tracking.html")
    gui.text(25,50, "Crowd Control requires " .. target_core .. " to function.")
    gui.text(25,100, "Click Config -> Customize and then the Advanced Tab.")
    gui.text(25,150, "At the bottom, click the " .. target_core .. " and then OK.")
    gui.text(25,200, "Exit out of BizHawk completely and click Launch in CC.")
	return false
  end
  return true
end

return hal
