if not TukuiCF["actionbar"].enable == true then return end

---------------------------------------------------------------------------
-- setup MultiBarRight as bar #4
---------------------------------------------------------------------------

local TukuiBar4 = CreateFrame("Frame","TukuiBar4",UIParent) -- bottomrightbar
TukuiBar4:SetAllPoints(TukuiActionBarBackground)
MultiBarRight:SetParent(TukuiBar4)

for i= 1, 12 do
	local b = _G["MultiBarRightButton"..i]
	local b2 = _G["MultiBarRightButton"..i-1]
	b:SetSize(TukuiDB.buttonsize, TukuiDB.buttonsize)
	b:ClearAllPoints()
	if TukuiCF.actionbar.splitbar == true then
		if i == 1 then
			b:SetPoint("TOPLEFT", TukuiSplitBarLeftBG, "TOPLEFT", TukuiDB.buttonspacing, -TukuiDB.buttonspacing)
		elseif i == 5 then
			b:SetPoint("TOP", _G["MultiBarRightButton1"], "BOTTOM", 0, -TukuiDB.buttonspacing)
		elseif i == 9 then
			b:SetPoint("TOP", _G["MultiBarRightButton5"], "BOTTOM", 0, -TukuiDB.buttonspacing)
		else
			b:SetPoint("LEFT", b2, "RIGHT", TukuiDB.buttonspacing, 0)
		end
	else
		if i == 1 then
			b:SetPoint("TOPRIGHT", TukuiActionBarBackgroundRight, "TOPRIGHT", TukuiDB.Scale(-4), TukuiDB.Scale(-4))
		else
			b:SetPoint("TOP", b2, "BOTTOM", 0, -TukuiDB.buttonspacing)
		end
	end
end
 
-- hide it if needed
if TukuiCF.actionbar.rightbars < 1 and TukuiCF.actionbar.splitbar ~= true then
	TukuiBar4:Hide()
end