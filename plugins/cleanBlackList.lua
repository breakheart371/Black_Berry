--Start 
local function run (msg,matches)

  if matches[1]:lower() == 'clean' and matches[2]:lower() == 'blacklist' then
    if not is_mod(msg) then
      return -- «Mods allowed»
    end
	
    local function cleanbl(ext, res)
      if tonumber(res.total_count_) == 0 then -- «Blocklist is empty or maybe Bot is not group's admin»
        return tdcli.sendMessage(ext.chat_id, ext.msg_id, 0, '⚠️ _لیست مسدودی های گروه خالی است_ !', 1, 'md')
      end
      local x = 0
      for x,y in pairs(res.members_) do
        x = x + 1
        tdcli.changeChatMemberStatus(ext.chat_id, y.user_id_, 'Left', dl_cb, nil) -- «Changing user status to left, removes user from blocklist»
      end
      return tdcli.sendMessage(ext.chat_id, ext.msg_id, 0, '✅ _ کاربر از لیست مسدودی های گروه آزاد شدند_ !', 1, 'md')
    end
	
    return tdcli.getChannelMembers(msg.to.id, 0, 'Kicked', 200, cleanbl, {chat_id = msg.to.id, msg_id = msg.id}) -- «Gets channel blocklist»
  end

end

return {
  patterns ={
    "^([Cc][Ll][Ee][Aa][Nn]) ([Bb][Ll][Aa][Cc][Kk][Ll][Ii][Ss][Tt])$",
  },
  run = run,
}
--End @Tele_Sudo
--Channel @LuaError