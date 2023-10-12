function draw.PaintFrame(self, w, h)
    draw.Blur(self, w, h)

    surface.SetDrawColor(0, 0, 0, 200)
    surface.DrawRect(0, 0, w, h)

    surface.SetDrawColor(0, 0, 0)
    surface.DrawOutlinedRect(0, 0, w, h)
end

function draw.PaintButton(self, w, h)
    draw.Blur(self, w, h)

	if self:GetDisabled() then
        surface.SetDrawColor(100, 0, 0, 180)
        surface.DrawRect(0, 0, w, h)
    
        surface.SetDrawColor(200, 0, 0)
        surface.DrawOutlinedRect(0, 0, w, h)
        return
	end

	if self.Hovered then
        surface.SetDrawColor(255, 255, 255, 20)
        surface.DrawRect(0, 0, w, h)
	end

    surface.SetDrawColor(0, 0, 0, 180)
    surface.DrawRect(0, 0, w, h)

    surface.SetDrawColor(0, 0, 0)
    surface.DrawOutlinedRect(0, 0, w, h)
end

function sound.Button()
    -- placeholder, we will get sounds from scp containment breach
    LocalPlayer():EmitSound("garrysmod/ui_return.wav", 0, 100, 1, CHAN_STATIC)
end

function sound.ButtonHover()
    LocalPlayer():EmitSound("garrysmod/ui_return.wav", 0, 100, 1, CHAN_STATIC)
end