GM.Name = "Sigilmare's Site-19 Roleplay"
GM.Author = "Sigilmare"
GM.Version = "1.0.0"

function GM:ReloadClientsideFiles()
    if SERVER then
        AddCSLuaFile("vgui/sscp_options.lua")
    end

    if CLIENT then
        include("vgui/sscp_options.lua")
    end
end