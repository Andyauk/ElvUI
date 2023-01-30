local E, L, V, P, G = unpack(ElvUI)
local DT = E:GetModule('DataTexts')

local min = min
local strjoin = strjoin
local GetSpellCritChance = GetSpellCritChance
local STAT_CATEGORY_ENHANCEMENTS = STAT_CATEGORY_ENHANCEMENTS
local MAX_SPELL_SCHOOLS = MAX_SPELL_SCHOOLS or 7
local CRIT_ABBR = CRIT_ABBR

local displayString, data = ''

local function OnEvent(self)
	local minCrit

	if data.school == 0 then
		minCrit = GetSpellCritChance(2)

		for i = 3, MAX_SPELL_SCHOOLS do
			minCrit = min(minCrit, GetSpellCritChance(i))
		end
	else
		minCrit = GetSpellCritChance(data.school)
	end

	self.text:SetFormattedText(displayString, CRIT_ABBR, minCrit)
end

local function OnEnter()
	DT.tooltip:ClearLines()

	for i = 2, MAX_SPELL_SCHOOLS do
		DT.tooltip:AddDoubleLine(_G['DAMAGE_SCHOOL'..i], GetSpellCritChance(i))
		DT.tooltip:AddTexture([[Interface\PaperDollInfoFrame\SpellSchoolIcon]]..i)
	end

	DT.tooltip:Show()
end

local function ValueColorUpdate(self, hex)
	if not data then
		data = E.global.datatexts.settings[self.name]
	end

	displayString = strjoin('', '%s: ', hex, '%.2f%%|r')

	OnEvent(self)
end

DT:RegisterDatatext('Spell Crit Chance', STAT_CATEGORY_ENHANCEMENTS, { 'UNIT_STATS', 'UNIT_AURA', 'PLAYER_DAMAGE_DONE_MODS' }, OnEvent, nil, nil, OnEnter, nil, 'Spell Crit Chance', nil, ValueColorUpdate)
