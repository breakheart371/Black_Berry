-- @BeyondTeam

local function BeyondTeam(msg)
if msg.to.type ~= "pv" then
	tdcli.openChat(msg.chat_id_, dl_cb, nil)
	tdcli.sendChatAction(bot.id, 'Typing', 100, dl_cb, nil)
end
end

return {
	patterns = {},
	pre_process = BeyondTeam
	}
	
-- https://Beyond-Dev.iR