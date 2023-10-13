DeriveGamemode("sandbox")
DEFINE_BASECLASS("gamemode_sandbox")

GM.Name = "Sigilmare's Site-19 Roleplay"
GM.Author = "Sigilmare"
GM.Version = "1.0.1"
 
include("shared.lua")
include("cl_util.lua")
include("cl_framework.lua")
include("cl_net.lua")

include("vgui/sscp_options.lua")

function GM:Initialize()
    self:CreateScalingFonts()
end

local fontfamily = "Arial" -- placeholder
function GM:CreateScalingFonts()
    local screenscale = TrueScreenScale()

    surface.CreateFont("SCPHUDFontBig", {font = fontfamily, size = 72 * screenscale, weight = 500, antialias = true, outlined = true})
end

local toHide = {
	["CHudHealth"] = true,
	["CHudBattery"] = true,
	["CHudSecondaryAmmo"] = true,
	["CHudAmmo"] = true,
	["CHudDeathNotice"] = true,
}
function GM:HUDShouldDraw(name)
    if toHide[name] then
        return false
    end
end