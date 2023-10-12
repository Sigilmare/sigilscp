function draw.PaintFrame(self, w, h, alpha)
    draw.Blur(self, w, h)

    alpha = alpha or 100

    surface.SetDrawColor(0, 0, 0, alpha)
    surface.DrawRect(0, 0, w, h)

    surface.SetDrawColor(0, 0, 0)
    surface.DrawOutlinedRect(0, 0, w, h)
end

function draw.PaintButton(self, w, h, alpha)
    draw.Blur(self, w, h)

    alpha = alpha or 100

    surface.SetDrawColor(0, 0, 0, alpha)
    surface.DrawRect(0, 0, w, h)

    surface.SetDrawColor(0, 0, 0)
    surface.DrawOutlinedRect(0, 0, w, h)

    if (self.Depressed || self:IsSelected() || self:GetToggle()) then
		draw.Blur(self, w, h)
	end

	if self:GetDisabled() then
		draw.Blur(self, w, h)
	end

	if self.Hovered then
		draw.Blur(self, w, h)
	end
end

function sound.Button(type)
    if type == "open" then
        LocalPlayer():EmitSound("buttons/button14.wav", 0, 200, 1, CHAN_STATIC)
    elseif type == "close" then
        LocalPlayer():EmitSound("buttons/button14.wav", 0, 180, 1, CHAN_STATIC)
    else
        ErrorNoHalt(type)
    end
end

function sound.ButtonHover()
    LocalPlayer():EmitSound("garrysmod/ui_return.wav", 0, 100, 1, CHAN_STATIC)
end