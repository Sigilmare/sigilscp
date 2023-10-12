function TrueScreenScale(type)
	if type == "w" then
		return ScrW() / 1920
	else
    	return ScrH() / 1080
	end
end

local BlurScreen = Material( 'pp/blurscreen' )
function draw.Blur( pnl, w, h )
	local x, y = pnl:LocalToScreen(0, 0)

	if render.SupportsPixelShaders_2_0() then
		DisableClipping( true )
		surface.SetMaterial( BlurScreen )
		surface.SetDrawColor( 255, 255, 255, 255 )
		render.SetScissorRect( x, y, x+w, y+h, true )

		for i=0.33, 1, 0.33 do
			BlurScreen:SetFloat( '$blur', 5 * i )
			BlurScreen:Recompute()
			if render then render.UpdateScreenEffectTexture() end
			surface.DrawTexturedRect( x * -1, y * -1, ScrW(), ScrH() )
		end

		render.SetScissorRect( 0, 0, 0, 0, false )
		DisableClipping( false )
	end
end