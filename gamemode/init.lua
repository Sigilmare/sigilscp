DeriveGamemode("sandbox")
DEFINE_BASECLASS("gamemode_sandbox")

AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

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
end

function GM:PlayerSay(ply, text, teamchat)
    ply:SendLua("GAMEMODE:WelcomeScreen()")
    net.Start("SCP.PlayerChat")
        net.WriteEntity(ply)
        net.WriteString(text)
        net.WriteBool(teamchat)
    net.Broadcast()
    return false
end