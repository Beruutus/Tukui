if not TukuiCF["actionbar"].enable == true then return end

---------------------------------------------------------------------------
-- setup MultiBarBottomRight as bar #5
---------------------------------------------------------------------------

local TukuiBar5 = CreateFrame("Frame","TukuiBar5",UIParent) -- MultiBarBottomRight
TukuiBar5:SetAllPoints(TukuiActionBarBackground)
MultiBarBottomRight:SetParent(TukuiBar5)

for i= 1, 12 do
	local b = _G["MultiBarBottomRightButton"..i]
	local b2 = _G["MultiBarBottomRightButton"..i-1]
	b:SetSize(TukuiDB.buttonsize, TukuiDB.buttonsize)
	b:ClearAllPoints()
	if TukuiCF.actionbar.splitbar == true then
		if i == 1 then
			b:SetPoint("TOPLEFT", TukuiSplitBarRightBG, "TOPLEFT", TukuiDB.buttonspacing, -TukuiDB.buttonspacing)
		elseif i == 5 then
			b:SetPoint("TOP", _G["MultiBarBottomRightButton1"], "BOTTOM", 0, -TukuiDB.buttonspacing)
		elseif i == 9 then
			b:SetPoint("TOP", _G["MultiBarBottomRightButton5"], "BOTTOM", 0, -TukuiDB.buttonspacing)
		else
			b:SetPoint("LEFT", b2, "RIGHT", TukuiDB.buttonspacing, 0)
		end
	else
		if i == 1 then
			b:SetPoint("TOPLEFT", TukuiActionBarBackgroundRight, "TOPLEFT", TukuiDB.Scale(4), TukuiDB.Scale(-4))
		else
			b:SetPoint("TOP", b2, "BOTTOM", 0, -TukuiDB.buttonspacing)
		end
	end
end
 
-- hide it if needed
if TukuiCF.actionbar.rightbars < 2 and TukuiCF.actionbar.splitbar ~= true then
	TukuiBar5:Hide()
end