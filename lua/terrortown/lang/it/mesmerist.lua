L = LANG.GetLanguageTableReference("it")

-- GENERAL ROLE LANGUAGE STRINGS
L[MESMERIST.name] = "Ipnotista"
L["info_popup_" .. MESMERIST.name] = [[Ora è il tuo turno prova a prendere qualche giocatore morto per combattere al tuo fianco!]]
L["body_found_" .. MESMERIST.abbr] = "Loro erano Ipnotisti!"
L["search_role_" .. MESMERIST.abbr] = "Questa persona era Ipnotista!"
L["target_" .. MESMERIST.name] = "Ipnostista"
L["ttt2_desc_" .. MESMERIST.name] = [[L'Ipnotista è un traditore che puo rianimare i morti, Lavandogli il cervello e facendoli diventare Traditori!]]

L["revived_by_mesmerist"] = "Sei stato rianimato da {name} come Traditore. Preparati!"
L["mesdefi_hold_key_to_revive"] = "Tieni premuto [{key}] per rianimare il giocatore come traditore"
L["mesdefi_revive_progress"] = "Tempo rimasto: {time} secondi"
L["mesdefi_charging"] = "il defribillatore si sta ricaricando, per favore aspetta"
L["mesdefi_player_already_reviving"] = "Il giocatore sta gia venendo rianimato"
L["mesdefi_error_no_space"] = "Non c'è abbastanza spazio per rianimare."
L["mesdefi_error_too_fast"] = "il defribillatore si sta ricaricando, per favore aspetta"
L["mesdefi_error_lost_target"] = "Hai perso il tuo bersaglio. Per favore riprova."
L["mesdefi_error_no_valid_ply"] = "Non puoi rianimare questo giocatore perchè non è più valido."
L["mesdefi_error_already_reviving"] = "Non puoi rianimare questo giocatore perche sta già venendo rianimato"
L["mesdefi_error_failed"] = "Tentativo di rianimazione fallito. Per favore riprova."
L["mesdefi_error_thrall"] = "Non puoi rianimare uno Schiavo!"
-- L["mesdefi_error_player_alive"] = "You can't revive this player, they are already alive."
