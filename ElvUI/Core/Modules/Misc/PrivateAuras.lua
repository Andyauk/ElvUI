local E, L, V, P, G = unpack(ElvUI)
local PA = E:GetModule('PrivateAuras')

local _G = _G
local format = format
local hooksecurefunc = hooksecurefunc

local C_UnitAuras = C_UnitAuras
local CreateFrame = CreateFrame

local AddPrivateAuraAnchor = C_UnitAuras.AddPrivateAuraAnchor
local RemovePrivateAuraAnchor = C_UnitAuras.RemovePrivateAuraAnchor
local SetPrivateWarningTextAnchor = C_UnitAuras.SetPrivateWarningTextAnchor

local warningAnchor = {
	relativePoint = 'TOP',
	point = 'TOP',
	offsetX = 0,
	offsetY = 0,
}

local tempAnchor = {
	unitToken = 'player',
	parent = _G.UIParent,
	auraIndex = 1,

	showCountdownFrame = true,
	showCountdownNumbers = true,

	iconInfo = {
		iconWidth = 32,
		iconHeight = 32,
		iconAnchor = {
			relativeTo = _G.UIParent,
			point = 'CENTER',
			relativePoint = 'CENTER',
			offsetX = 0,
			offsetY = 0,
		},
	},

	durationAnchor = {
		relativeTo = _G.UIParent,
		point = 'BOTTOM',
		relativePoint = 'BOTTOM',
		offsetX = 0,
		offsetY = 0,
	}
}

function PA:CreateAnchor(aura, parent, unit, index, db)
	if not unit then unit = parent.unit end

	-- clear any old ones, respawn the new ones
	local previousAura = parent.auraIcons[index]
	if previousAura then
		RemovePrivateAuraAnchor(previousAura.anchorID)
	end

	-- update all possible entries to this as the table is dirty
	tempAnchor.unitToken = unit
	tempAnchor.parent = aura
	tempAnchor.auraIndex = index

	tempAnchor.showCountdownFrame = db.frameCooldown
	tempAnchor.showCountdownNumbers = db.auraCooldown

	local iconSize = db.icon.size
	if not iconSize then iconSize = 32 end

	local iconPoint = db.icon.point
	if not iconPoint then iconPoint = 'CENTER' end

	local durationPoint = db.duration.point
	if not durationPoint then durationPoint = 'CENTER' end

	local icon = tempAnchor.iconInfo
	icon.iconWidth = iconSize
	icon.iconHeight = iconSize
	icon.iconAnchor.relativeTo = aura
	icon.iconAnchor.point = iconPoint
	icon.iconAnchor.relativePoint = iconPoint
	icon.iconAnchor.offsetX = 0
	icon.iconAnchor.offsetY = 0

	local duration = tempAnchor.durationAnchor
	duration.relativeTo = aura
	duration.point = E.InversePoints[durationPoint]
	duration.relativePoint = durationPoint
	duration.offsetX = db.duration.offsetX
	duration.offsetY = db.duration.offsetY

	return AddPrivateAuraAnchor(tempAnchor)
end

function PA:CreateAura(parent, unit, index, db)
	local aura = PA.Auras.auraIcons[index]
	if not aura then
		aura = CreateFrame('Frame', format('%s%d', parent:GetName(), index), parent)
	end

	aura:ClearAllPoints()

	if index == 1 then
		aura:Point('CENTER', parent, 0, 0)
	else
		local offsetX, offsetY = 0, 0
		if db.icon.point == 'RIGHT' then
			offsetX = db.icon.offset
		elseif db.icon.point == 'LEFT' then
			offsetX = -db.icon.offset
		elseif db.icon.point == 'TOP' then
			offsetY = db.icon.offset
		else
			offsetY = -db.icon.offset
		end

		aura:Point(E.InversePoints[db.icon.point], PA.Auras.auraIcons[index-1], db.icon.point, offsetX, offsetY)
	end

	aura:Size(db.icon.size)

	aura.anchorID = PA:CreateAnchor(aura, parent, unit or 'player', index, db)

	return aura
end

function PA:SetupPrivateAuras(db, parent, unit)
	if not db then db = E.db.general.privateAuras end
	if not parent then parent = _G.UIParent end

	PA.Auras:Size(db.icon.size)

	if not parent.auraIcons then
		parent.auraIcons = {}
	end

	for i = 1, db.icon.amount do
		parent.auraIcons[i] = PA:CreateAura(parent, unit or 'player', i, db)
	end
end

function PA:PlayerPrivateAuras()
	if PA.Auras.auraIcons then
		for _, auraIcon in pairs(PA.Auras.auraIcons) do
			RemovePrivateAuraAnchor(auraIcon.anchorID)
		end
	end

	if E.db.general.privateAuras.enable then
		PA:SetupPrivateAuras(nil, PA.Auras, 'player')

		E:EnableMover(PA.Auras.mover.name)
	else
		E:DisableMover(PA.Auras.mover.name)
	end
end

function PA:WarningText_Reposition(_, anchor)
	if not anchor then
		anchor = _G.PrivateRaidBossEmoteFrameAnchor
		warningAnchor.relativeTo = anchor.mover or _G.UIParent
		SetPrivateWarningTextAnchor(anchor, warningAnchor)
	elseif anchor ~= self.mover then
		self:ClearAllPoints()
		self:Point('TOP', self.mover)
	end
end

function PA:WarningText_Reparent(parent)
	if parent ~= _G.UIParent then
		self:SetParent(_G.UIParent)
	end

	local _, anchor = self:GetPoint()
	if anchor ~= self.mover then
		PA:WarningText_Reposition()
	end
end

function PA:Initialize()
	PA.Auras = CreateFrame('Frame', 'ElvUIPrivateAuras', E.UIParent)
	PA.Auras:Point('CENTER', _G.UIParent)
	PA.Auras:Size(32)
	E:CreateMover(PA.Auras, 'PrivateAurasMover', L["Private Auras"])
	PA:PlayerPrivateAuras()

	local warningText = _G.PrivateRaidBossEmoteFrameAnchor
	if warningText then
		E:CreateMover(warningText, 'PrivateRaidWarningMover', L["Private Raid Warning"])

		hooksecurefunc(C_UnitAuras, 'SetPrivateWarningTextAnchor', PA.WarningText_Reposition)
		hooksecurefunc(warningText, 'SetPoint', PA.WarningText_Reposition)
		hooksecurefunc(warningText, 'SetParent', PA.WarningText_Reparent)
	end
end

E:RegisterModule(PA:GetName())
