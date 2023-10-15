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
local fontweight = 0
function GM:CreateScalingFonts()
    local screenscale = TrueScreenScale()

    surface.CreateFont("SCPHUDFontBiggest", {font = fontfamily, size = 84 * screenscale, weight = fontweight, antialias = true, outline = true})
    surface.CreateFont("SCPHUDFontBigger", {font = fontfamily, size = 72 * screenscale, weight = fontweight, antialias = true, outline = true})
    surface.CreateFont("SCPHUDFontBigg", {font = fontfamily, size = 60 * screenscale, weight = fontweight, antialias = true, outline = true})
    surface.CreateFont("SCPHUDFont", {font = fontfamily, size = 42 * screenscale, weight = fontweight, antialias = true, outline = true})
    surface.CreateFont("SCPHUDFontSmall", {font = fontfamily, size = 28 * screenscale, weight = fontweight, antialias = true, outline = true})
    surface.CreateFont("SCPHUDFontSmaller", {font = fontfamily, size = 24 * screenscale, weight = fontweight, antialias = true, outline = true})
    surface.CreateFont("SCPHUDFontSmallest", {font = fontfamily, size = 20 * screenscale, weight = fontweight, antialias = true, outline = true})
    surface.CreateFont("SCPHUDFontTiny", {font = fontfamily, size = 16 * screenscale, weight = fontweight, antialias = true, outline = true})
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

    return true
end