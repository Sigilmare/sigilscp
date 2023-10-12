local M_Player = FindMetaTable("Player")
local P_Team = M_Player.Team

local function playerName(pl)
    return "("..TEAM_SHORT_NAMES[pl:Team()]..") "..pl:Name()
end

net.Receive("SCP.PlayerChat", function(len) 
    local pl = net.ReadEntity()
    local text = net.ReadString()
    local teamchat = net.ReadBool()

    chat.AddText(team.GetColor(pl:Team()), playerName(pl), color_white, ": "..text)
end)

net.Receive("SCP.PlayerNoclip", function(len)
    local pl = net.ReadEntity()
    local on = net.ReadBool()

    chat.AddText(Color(255, 0, 0), "[STAFF] ", team.GetColor(pl:Team()), playerName(pl), color_white, (on and " entered " or " exited "), Color(255, 0, 0), "noclip")
end)