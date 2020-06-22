CreateConVar("ttt2_mesdefi_error_time", 1.5, {FCVAR_ARCHIVE, FCVAR_NOTIFY})
CreateConVar("ttt2_mesdefi_revive_time", 3.0, {FCVAR_ARCHIVE, FCVAR_NOTIFY})
CreateConVar("ttt2_mesdefi_ammo", 1, {FCVAR_ARCHIVE, FCVAR_NOTIFY})

hook.Add("TTTUlxDynamicRCVars", "TTTUlxDynamicMesCVars", function(tbl)
  tbl[ROLE_MESMERIST] = tbl[ROLE_MESMERIST] or {}

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
end)
