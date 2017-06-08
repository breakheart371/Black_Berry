--[[
############################
#         *IDPro*          #
#    Writed By BabakKhan    #  
#      @Sudo_Hacker       # 
#        Ver: 1.0          #
#                          #
#     ------------------  #
#         Channel:         
#                          #
#      @BlackAndWhiteTM           #
#                          #
############################
]]
function run(msg,matches)

 if matches[1] == 'id' or matches[1] =='ایدی' and msg.reply_to_message_id_ == 0  then
 if is_sudo(msg) then
  rank = 'صاحب ربات'
 elseif is_owner(msg) then
  rank = 'صاحب گروه'
 elseif is_mod(msg) then
  rank = 'ناظر گروه'
 else
  rank = 'کاربر عادی'
 end
local function getpro(arg, data)

   if data.photos_[0] then
               if msg.from.phone then
				numberorg = string.sub(msg.from.phone, 3)
				number = "0"..string.sub(numberorg, 0,6).."**** "
				if string.sub(msg.from.phone, 0,2) == '98' then
					number = number.."\n> Country: Islamic Republic of Iran "
					if string.sub(msg.from.phone, 0,4) == '9891' then
						number = number.."\n> Sim: MCI "
					elseif string.sub(msg.from.phone, 0,5) == '98932' then
						number = number.."\n> Sim: Taliya "
					elseif string.sub(msg.from.phone, 0,4) == '9893' then
						number = number.."\n> Sim: irancell "
					elseif string.sub(msg.from.phone, 0,4) == '9890' then
						number = number.."\n> Sim: irancell "
					elseif string.sub(msg.from.phone, 0,4) == '9892' then
						number = number.."\n> Sim: rightel "
					else
						number = number.."\n> Sim: Other "
					end
				else
					number = number.."\n> Sim: Other \n»SIM card abroad« "
				end
			else
				number = "-----"
			end
            tdcli.sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, data.photos_[0].sizes_[1].photo_.persistent_id_,'\n> Your Name: '..msg.from.print_name..'\n> Your ID: '..msg.sender_user_id_..'\n> Your UserName: '..(msg.from.username or '----')..'\n> Your Phone: '..(number or '----')..'\n> Your Rank: '..rank..'\n',msg.id_,msg.id_)
   else
      tdcli.sendMassage(msg.chat_id_, msg.id_, 1, "You Have'nt Profile Photo!!\n\n> *Supergroup ID:* `"..msg.chat_id_.."`\n*> Your ID:* `"..msg.sender_user_id_.."\n*> Your UserName:* `"..(msg.from.username or "----").."`\n*> Your Phone:* `"..(number or '----').."`\n*> Your Rank:* `"..rank.."`", 1, 'md')
   end
   end
   tdcli_function ({
    ID = "GetUserProfilePhotos",
    user_id_ = msg.sender_user_id_,
    offset_ = 0,
    limit_ = 1
  }, getpro, nil)
	end
	
end

return {
patterns = {
"^[/!#](id)$", 
  "^[#!/](ایدی)$",
},
run = run
}