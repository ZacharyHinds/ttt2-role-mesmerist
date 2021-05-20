L = LANG.GetLanguageTableReference("es")

-- GENERAL ROLE LANGUAGE STRINGS
L[MESMERIST.name] = "Espiritista"
L[MESMERIST.defaultTeam] = "EQUIPO Traidores"
L["info_popup_" .. MESMERIST.name] = [[¡Ahora es tu turno! ¡Intenta conseguir algunos muertos para que peleen a tu lado!]]
L["body_found_" .. MESMERIST.abbr] = "¡Era un Espiritista!"
L["search_role_" .. MESMERIST.abbr] = "Esta persona era un Espiritista."
L["target_" .. MESMERIST.name] = "Espiritista"
L["ttt2_desc_" .. MESMERIST.name] = [[El Espiritista es un traidor que puede revivir a los muertos, lavándoles el cerebro y convertirlos en traidores.]]

L["revived_by_mesmerist"] = "Estás siendo revivido por {name} como traidor ¡Prepárate!"
L["mesdefi_hold_key_to_revive"] = "Mantén [{key}] to revive player as a traitor"
L["mesdefi_revive_progress"] = "Tiempo restante: {time}s"
L["mesdefi_charging"] = "El Desfribilador está recargándose, por favor espera."
L["mesdefi_player_already_reviving"] = "Este jugador ya está siendo revivido."
L["mesdefi_error_no_space"] = "No hay espacio suficiente en la habitación para revivir a esta persona."
L["mesdefi_error_too_fast"] = "El Desfribilador está recargándose, por favor espere."
L["mesdefi_error_lost_target"] = "Perdió de vista a su objetivo. Intenta de nuevo."
L["mesdefi_error_no_valid_ply"] = "No puedes revivir a este jugador ya que su cuerpo no existe o no es válido."
L["mesdefi_error_already_reviving"] = "No puedes revivir a este jugador porque ya lo están reviviendo."
L["mesdefi_error_failed"] = "Intento de revivir fallido. Intenta de nuevo."
L["mesdefi_error_thrall"] = "¡No puedes revivir a un Hipnotizado!"
-- L["mesdefi_error_player_alive"] = "You can't revive this player, they are already alive."
