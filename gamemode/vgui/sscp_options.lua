local matBlurScreen = Material( "pp/blurscreen" )
function GM:WelcomeScreen()
    local s = TrueScreenScale()

    local frame = vgui.Create("DFrame")
    frame:SetSize(600 * s, 600 * s)
    frame:SetTitle("")
    frame:SetDraggable(false)
    frame:CenterHorizontal()
    frame:MakePopup()
    frame.Paint = function(self, w, h) -- Todo: Dermaskin for the gamemode
        draw.PaintFrame(self, w, h)
    end

    local button = vgui.Create("DButton", frame)
    button:SetText("Placeholder")
    button:SetFont("GModNotify")
    button:SizeToContents()
    local bw, bh = button:GetSize()
    button:Center()
    button.Paint = function(self, w, h)
        draw.PaintButton(self, w, h)
    end
    button.OnCursorEntered = function()
        sound.ButtonHover()
    end
    button.DoClick = function()
        sound.Button("close")
    end
end