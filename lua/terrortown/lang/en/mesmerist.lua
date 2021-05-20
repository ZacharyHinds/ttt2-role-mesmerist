L = LANG.GetLanguageTableReference("en")

-- GENERAL ROLE LANGUAGE STRINGS
L[MESMERIST.name] = "Mesmerist"
L[MESMERIST.defaultTeam] = "TEAM Traitors"
L["info_popup_" .. MESMERIST.name] = [[Now it's your turn! Try to get some dead players to fight on your side!]]
L["body_found_" .. MESMERIST.abbr] = "They were a Mesmerist!"
L["search_role_" .. MESMERIST.abbr] = "This person was a Mesmerist!"
L["target_" .. MESMERIST.name] = "Mesmerist"
L["ttt2_desc_" .. MESMERIST.name] = [[The Mesmerist is a traitor who can revive the dead, brainwashing them into becomeing traitors!]]

L["revived_by_mesmerist"] = "You are being revived by {name} as a traitor. Prepare yourself!"
L["mesdefi_hold_key_to_revive"] = "Hold [{key}] to revive player as a traitor"
L["mesdefi_revive_progress"] = "Time left: {time}s"
L["mesdefi_charging"] = "Defibrillator is recharging, please wait"
L["mesdefi_player_already_reviving"] = "Player is already reviving"
L["mesdefi_error_no_space"] = "There is insufficient room available for this revival attempt."
L["mesdefi_error_too_fast"] = "Defibrillator is recharging. Please wait."
L["mesdefi_error_lost_target"] = "You lost your target. Please try again."
L["mesdefi_error_no_valid_ply"] = "You can't revive this player since they are no longer valid."
L["mesdefi_error_already_reviving"] = "You can't revive this player since they are already reviving."
L["mesdefi_error_failed"] = "Revival attempt failed. Please try again."
L["mesdefi_error_thrall"] = "You can't revive a thrall!"
L["mesdefi_error_player_alive"] = "You can't revive this player, they are already alive."


--EVENT STRINGS
L["title_event_mes_defib"] = "A player was revived as a Thrall"
L["desc_event_mes_defib"] = "{mesmerist} revived {thrall} as a Thrall"
