L = LANG.GetLanguageTableReference("ru")

-- GENERAL ROLE LANGUAGE STRINGS
L[MESMERIST.name] = "Месмерист"
L["info_popup_" .. MESMERIST.name] = [[Теперь твоя очередь! Попытайтесь заставить некоторых мёртвых игроков сражаться на вашей стороне!]]
L["body_found_" .. MESMERIST.abbr] = "Он был месмеристом!"
L["search_role_" .. MESMERIST.abbr] = "Этот человек был месмеристом!"
L["target_" .. MESMERIST.name] = "Месмерист"
L["ttt2_desc_" .. MESMERIST.name] = [[Месмерист - предатель, который может воскрешать мёртвых, промывая им мозги, превращая их в предателей!]]

L["revived_by_mesmerist"] = "{name} возрождает вас как предателя. Приготовься!"
L["mesdefi_hold_key_to_revive"] = "Удерживайте [{key}], чтобы оживить игрока как предателя"
L["mesdefi_revive_progress"] = "Осталось времени: {time}с"
L["mesdefi_charging"] = "Дефибриллятор заряжается, подождите."
L["mesdefi_player_already_reviving"] = "Игрок уже оживает"
L["mesdefi_error_no_space"] = "Недостаточно места для этой попытки возрождения."
L["mesdefi_error_too_fast"] = "Дефибриллятор заряжается. Пожалуйста, подождите."
L["mesdefi_error_lost_target"] = "Вы потеряли свою цель. Пожалуйста, попробуйте ещё раз."
L["mesdefi_error_no_valid_ply"] = "Вы не можете оживить этого игрока, так как он больше не действителен."
L["mesdefi_error_already_reviving"] = "Вы не можете оживить этого игрока, так как он уже оживает."
L["mesdefi_error_failed"] = "Попытка возрождения не удалась. Пожалуйста, попробуйте ещё раз."
L["mesdefi_error_thrall"] = "Вы не можете оживить раба!"
-- L["mesdefi_error_player_alive"] = "You can't revive this player, they are already alive."

-- --EVENT STRINGS
-- L["title_event_mes_defib"] = "A player was revived as a Thrall"
-- L["desc_event_mes_defib"] = "{mesmerist} revived {thrall} as a Thrall"


-- --SETTINGS STRINGS
-- L["label_ttt2_mesdefi_ammo"] = "Defibrillator ammo"
-- L["label_ttt2_mesdefi_revive_time"] = "Time it takes to revive with defibrillator"
-- L["label_ttt2_mesdefi_error_time"] = "Time it takes to recharge defibrillator"
-- L["label_ttt2_mesdefi_res_thrall"] = "Can Thrals be re-revived with defibrillator"
-- L["label_ttt2_thr_team_inherit"] = "Thralls inherit team of Mesmerist"