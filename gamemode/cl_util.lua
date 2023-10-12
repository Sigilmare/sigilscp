function TrueScreenScale()
    return ScrH() / 1080 -- We scale from the height of the screen
end

local BlurScreen = Material( 'pp/blurscreen' )
function draw.Blur( pnl, w, h, power, offsetx, offsety )
	offsetx = offsetx or 0
	offsety = offsety or 0
	power = power or 5

	local x, y = pnl:LocalToScreen(offsetx,offsety)

	if render.SupportsPixelShaders_2_0() then
		DisableClipping( true )
		surface.SetMaterial( BlurScreen )
		surface.SetDrawColor( 255, 255, 255, 255 )
		render.SetScissorRect( x, y, x+w, y+h, true )

		for i=0.33, 1.33, 0.33 do
			BlurScreen:SetFloat( '$blur', power * i )
			BlurScreen:Recompute()
			if render then render.UpdateScreenEffectTexture() end
			surface.DrawTexturedRect( x * -1, y * -1, ScrW(), ScrH() )
		end

		render.SetScissorRect( 0, 0, 0, 0, false )
		DisableClipping( false )
	end
end