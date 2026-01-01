--[[
    Dcus - Loader [Main]
       V2.0.0
       
    Mobile - Coming Soon
]]

local UserInputService = game:GetService("UserInputService")
local Mobile = UserInputService.TouchEnabled and not UserInputService.MouseEnabled
local DcusNotify = loadstring(game:HttpGet(('https://pastefy.app/XjPXD0Qm/raw')))()
local Debuger = {
	debugs_warn = function(txt)
		warn("Dcus Debugs | " .. txt)
	end,
}

local supportgame = {
	[17625359962] = "https://raw.githubusercontent.com/RequideSync/Named/refs/heads/main/Dcus/Rivals",
}

local baseUrl = supportgame[game.PlaceId]

if baseUrl then
	local platform = Mobile and "Mobile" or "PC"
	local Url = baseUrl .. "/" .. platform .. ".lua"
	if platform == "Mobile" then
		DcusNotify.prompt('Error', 'Mobile Is Not Support', 2)
		task.wait(2)
		DcusNotify.prompt('AutoLeft', 'AutoLeft - Fire', 2)
		task.wait(1.5)
		game:Shutdown()
	end
	Debuger.debugs_warn("Platform detected: " .. platform)
	Debuger.debugs_warn("Loading: " .. Url)

	loadstring(game:HttpGet(Url))()
else
	DcusNotify.prompt('Error', 'Game is not supported, Check DcusServer', 2)
	task.wait(2)
	DcusNotify.prompt('AutoLeft', 'AutoLeft - Fire', 2)
	game:Shutdown()
end

