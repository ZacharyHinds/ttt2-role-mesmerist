if CLIENT then
    EVENT.icon = Material("vgui/ttt/dynamic/roles/icon_mes.vmt")
    EVENT.title = "title_event_mes_defib"

    function EVENT:GetText()
        return {
            {
                string = "desc_event_mes_defib",
                params = {
                    mesmerist = self.event.mes.nick,
                    thrall = self.event.thr.nick
                }
            }
        }
    end
end

if SERVER then
    function EVENT:Trigger(mes, thr)

        thr.wasThrallRevived = true
        return self:Add({
            mes = {
                nick = mes:Nick(),
                sid64 = mes:SteamID64()
            },
            thr = {
                nick = thr:Nick(),
                sid64 = thr:SteamID64()
            }
        })
    end

    hook.Add("TTT2OnTriggeredEvent", "cancel_mes_defib_respawn_event", function(type, eventData)
        if type ~= EVENT_RESPAWN then return end

        local ply = player.GetBySteamID64(eventData.sid64)

        if not IsValid(ply) or not ply.wasThrallRevived then return end

        ply.wasThrallRevived = nil

        return false
    end)
end