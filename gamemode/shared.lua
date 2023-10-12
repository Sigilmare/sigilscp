GM.Name = "Sigilmare's Site-19 Roleplay"
GM.Author = "Sigilmare"
GM.Version = "1.0.0"

GM.Credits = {
    {"STEAM_0:0:105668971", "Creator/Programmer"}
}

include("sh_globals.lua")

team.SetUp(TEAM_CHAOS, "Chaos Insurgency", Color(27, 42, 53))
team.SetUp(TEAM_CLASSD, "Class-D", Color(226, 155, 64))
team.SetUp(TEAM_SCIENTIFICDEPARTMENT, "Scientific Department", Color(4, 175, 236))
team.SetUp(TEAM_SECURITYDEPARTMENT, "Security Department", Color(159, 161, 172))
team.SetUp(TEAM_MOBILETASKFORCE, "Mobile Task Force", Color(13, 105, 172))
team.SetUp(TEAM_RAPIDRESPONSETEAM, "Rapid Response Team", Color(151, 0, 0))
team.SetUp(TEAM_INTELLIGENCEAGENCY, "Intelligence Agency", Color(61, 21, 133))
team.SetUp(TEAM_SITEDIRECTOR, "Site Director", Color(40, 127, 71))
team.SetUp(TEAM_O5COMMAND, "O5 Command", Color(255, 0, 0))
team.SetUp(TEAM_SCP, "SCP", Color(98, 37, 209))

function GM:PlayerNoClip(pl, on)
    if pl:IsSuperAdmin() then
        if SERVER then
            net.Start("SCP.PlayerNoclip")
                net.WriteEntity(pl)
                net.WriteBool(on)
            net.Broadcast()
        end

        return true
    end

    return false
end