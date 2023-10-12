local matBlurScreen = Material( "pp/blurscreen" )
function GM:WelcomeScreen()
    local s = TrueScreenScale()

    local frame = vgui.Create("DFrame")
    frame:SetSize(ScrW(), ScrH())
    frame:SetTitle("")
    frame:SetDraggable(false)
    frame:Center()
    frame:MakePopup()
    frame.Paint = function(self, w, h) -- Todo: Dermaskin for the gamemode
        draw.PaintFrame(self, w, h)
    end

    local button = vgui.Create("DButton", frame)
    button:SetText("Gamemode Rules")
    button:SetFont("SCPHUDFontBig")
    button:SetTextColor(Color(255, 255, 255))
    button:SizeToContents()
    button:CenterHorizontal()
    button:CenterVertical(0.3)
    button:SetEnabled(true)
    button.Paint = function(self, w, h)
        draw.PaintButton(self, w, h)
    end
    button.OnCursorEntered = function(self)
        if self:GetDisabled() then return end
        sound.ButtonHover()
    end
    button.DoClick = function()
        sound.Button()
    end
end