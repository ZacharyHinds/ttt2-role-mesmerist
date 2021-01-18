CreateConVar("ttt2_mesdefi_error_time", 1.5, {FCVAR_ARCHIVE, FCVAR_NOTIFY})
CreateConVar("ttt2_mesdefi_revive_time", 3.0, {FCVAR_ARCHIVE, FCVAR_NOTIFY})
CreateConVar("ttt2_mesdefi_ammo", 1, {FCVAR_ARCHIVE, FCVAR_NOTIFY})
CreateConVar("ttt2_mesdefi_res_thrall", 1, {FCVAR_ARCHIVE, FCVAR_NOTIFY})
CreateConVar("ttt2_thr_team_inherit", "1", {FCVAR_ARCHIVE, FCVAR_NOTIFY})

if CLIENT then
  hook.Add("TTT2FinishedLoading", "mes_devicon", function() -- addon developer emblem for me ^_^
    AddTTT2AddonDev("76561198049910438")
  end)
end

hook.Add("TTTUlxDynamicRCVars", "TTTUlxDynamicMesCVars", function(tbl)
  tbl[ROLE_MESMERIST] = tbl[ROLE_MESMERIST] or {}
  tbl[ROLE_THRALL] = tbl[ROLE_THRALL] or {}

  table.insert(tbl[ROLE_MESMERIST], {
      cvar = "ttt2_mesdefi_ammo",
      slider = true,
      min = 0,
      max = 5,
      decimal = 0,
      desc = "ttt2_mesdefi_ammo (def. 1)"
  })

  table.insert(tbl[ROLE_MESMERIST], {
      cvar = "ttt2_mesdefi_revive_time",
      slider = true,
      min = 0,
      max = 30,
      decimal = 1,
      desc = "ttt2_mesdefi_revive_time (def. 3.0)"
  })

  table.insert(tbl[ROLE_MESMERIST], {
      cvar = "ttt2_mesdefi_error_time",
      slider = true,
      min = 0,
      max = 3,
      decimal = 1,
      desc = "ttt2_mesdefi_error_time (def 1.5)"
  })

  table.insert(tbl[ROLE_MESMERIST], {
      cvar = "ttt2_mesdefi_res_thrall",
      checkbox = true,
      desc = "ttt2_mesdefi_res_thrall (def. 1)"
  })

  table.insert(tbl[ROLE_THRALL], {
    cvar = "ttt2_thr_team_inherit",
    checkbox = true,
    desc = "ttt2_thr_team_inherit"
  })
end)
