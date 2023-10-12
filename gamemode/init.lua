DeriveGamemode("sandbox")
DEFINE_BASECLASS("gamemode_sandbox")

AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

AddCSLuaFile("sh_globals.lua")

AddCSLuaFile("cl_util.lua")
AddCSLuaFile("cl_framework.lua")
AddCSLuaFile("cl_net.lua")

AddCSLuaFile("vgui/sscp_options.lua")

include("shared.lua")

function GM:Initialize()
    self:AddNetworkStrings()
end

function GM:AddNetworkStrings()
    util.AddNetworkString("SCP.PlayerChat")
    util.AddNetworkString("SCP.PlayerNoclip")
end

function GM:PlayerSay(ply, text, teamchat)
    ply:SendLua("GAMEMODE:WelcomeScreen()")
    BroadcastLua([[GAMEMODE:CreateScalingFonts()]])
    net.Start("SCP.PlayerChat")
        net.WriteEntity(ply)
        net.WriteString(text)
        net.WriteBool(teamchat)
    net.Broadcast()
    return false
end