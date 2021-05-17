-- ROLE.Base = "ttt_role_base"
--
-- ROLE.index = ROLE_TRAITOR

if SERVER then
  AddCSLuaFile()

  resource.AddFile("materials/vgui/ttt/dynamic/roles/icon_mes.vmt")
end

function ROLE:PreInitialize()
  self.color = Color(255, 13, 65, 255)

  self.abbr = "mes" -- abbreviation
  self.surviveBonus = 0.5 -- bonus multiplier for every survive while another player was killed
  self.scoreKillsMultiplier = 5 -- multiplier for kill of player of another team
  self.scoreTeamKillsMultiplier = -16 -- multiplier for teamkill
  self.preventFindCredits = false
  self.preventKillCredits = false
  self.preventTraitorAloneCredits = false

  self.defaultEquipment = SPECIAL_EQUIPMENT -- here you can set up your own default equipment
  self.defaultTeam = TEAM_TRAITOR

  self.conVarData = {
    pct = 0.17, -- necessary: percentage of getting this role selected (per player)
    maximum = 1, -- maximum amount of roles in a round
    minPlayers = 6, -- minimum amount of players until this role is able to get selected
    credits = 0, -- the starting credits of a specific role
    togglable = true, -- option to toggle a role for a client if possible (F1 menu)
    random = 50,
    traitorButton = 1, -- can use traitor buttons
    shopFallback = SHOP_FALLBACK_TRAITOR
  }
end

-- now link this subrole with its baserole
function ROLE:Initialize()
  roles.SetBaseRole(self, ROLE_TRAITOR)
end

if SERVER then

  ROLE.CustomRadar = function(ply)
    local weps = ply:GetWeapons()
    local hasDefib = false
    for i = 1, #weps do
      if weps[i]:GetClass() == "weapon_ttt_mesdefi" then
        hasDefib = true
      end
    end
    if not hasDefib then return end

    local targets = {}
    local corpses = ents.FindByClass("prop_ragdoll")

    for i = 1, #corpses do
      local rag = corpses[i]
      if not rag.player_ragdoll then continue end

      local pos = rag:LocalToWorld(rag:OBBCenter())

      pos.x = math.Round(pos.x)
      pos.y = math.Round(pos.y)
      pos.z = math.Round(pos.z)

      targets[#targets + 1] = {
        subrole = -1,
        pos = pos
      }
    end

    -- local plys = util.GetAlivePlayers()
    -- for i = 1, #plys do
    --   local pl = plys[i]
    --   if not IsValid(pl) or pl == ply then continue end
      
    --   local pos = pl:LocalToWorld(pl:OBBCenter())

    --   pos.x = math.Round(pos.x)
    --   pos.y = math.Round(pos.y)
    --   pos.z = math.Round(pos.z)

    --   local subrole = ROLE_INNOCENT
    --   local team = TEAM_INNOCENT

    --   if pl:GetTeam() == ply:GetTeam() or (ply:GetTeam() == TEAM_TRAITOR and pl:GetSubRole() == ROLE_SPY)  then
    --     subrole = ply:GetSubRole()
    --     team = ply:GetTeam()
    --   elseif pl:GetTeam() == TEAM_JESTER then
    --     subrole = ROLE_JESTER
    --     team = TEAM_JESTER
    --   end

    --   targets[#targets + 1] = {
    --     subrole = subrole,
    --     team = team,
    --     pos = pos
    --   }
    -- end

    local decoys = ents.FindByClass("ttt_decoy")

    for i = 1, #decoys do
      local dec = decoys[i]

      if not IsValid(dec) then continue end

      local pos = dec:LocalToWorld(dec:OBBCenter())

      pos.x = math.Round(pos.x)
      pos.y = math.Round(pos.y)
      pos.z = math.Round(pos.z)

      targets[#targets + 1] = {
        subrole = ROLE_INNOCENT,
        team = TEAM_INNOCENT,
        pos = pos
      }
    end
    if #targets > 0 then
      return targets
    end
  end

  function ROLE:GiveRoleLoadout(ply, isRoleChange)
    ply:GiveEquipmentWeapon("weapon_ttt_mesdefi")
  end

  function ROLE:RemoveRoleLoadout(ply, isRoleChange)
    ply:StripWeapon("weapon_ttt_mesdefi")
  end
end
