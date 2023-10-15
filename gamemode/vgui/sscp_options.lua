local matBlurScreen = Material( "pp/blurscreen" )
function GM:WelcomeScreen()
    local swid = TrueScreenScale(true)
    local shei = TrueScreenScale()

    local frame = vgui.Create("DFrame")
    frame:SetSize(ScrW(), ScrH())
    frame:SetTitle("")
    frame:SetDraggable(false)
    frame:Center()
    frame:MakePopup()
    frame.Paint = function(self, w, h) -- Todo: Dermaskin for the gamemode
        draw.PaintFrame(self, w, h)
    end

    local gmname = vgui.Create("DLabel", frame)
    gmname:SetText(GAMEMODE.Name)
    gmname:SetFont("SCPHUDFont")
    gmname:SetTextColor(Color(255, 255, 255))
    gmname:SizeToContents()
    gmname:CenterHorizontal()
    gmname:AlignTop(300 * shei)

    local gmdesc = vgui.Create("DLabel", frame)
    gmdesc:SetText("A gamemode by "..GAMEMODE.Author)
    gmdesc:SetFont("SCPHUDFontSmall")
    gmdesc:SetTextColor(Color(255, 255, 255))
    gmdesc:SizeToContents()
    gmdesc:CenterHorizontal()
    gmdesc:MoveBelow(gmname)
end