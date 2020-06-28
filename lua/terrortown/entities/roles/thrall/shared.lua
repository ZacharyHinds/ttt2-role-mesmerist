-- ROLE.Base = "ttt_role_base"
--
-- ROLE.index = ROLE_TRAITOR

if SERVER then
	AddCSLuaFile()

	resource.AddFile("materials/vgui/ttt/dynamic/roles/icon_thr.vmt")
end

function ROLE:PreInitialize()
	self.color = Color(255, 31, 31, 255)

	self.abbr = "thr" -- abbreviation
	self.surviveBonus = 0.5 -- bonus multiplier for every survive while another player was killed
	self.scoreKillsMultiplier = 5 -- multiplier for kill of player of another team
	self.scoreTeamKillsMultiplier = -16 -- multiplier for teamkill
	self.preventFindCredits = false
	self.preventKillCredits = false
	self.preventTraitorAloneCredits = false
  self.notSelectable = true

	self.defaultTeam = TEAM_TRAITOR

	self.conVarData = {
		credits = 1, -- the starting credits of a specific role
		traitorButton = 1, -- can use traitor buttons
		shopFallback = SHOP_FALLBACK_TRAITOR
	}
end

-- now link this subrole with its baserole
function ROLE:Initialize()
	roles.SetBaseRole(self, ROLE_TRAITOR)
end

if SERVER then

end
