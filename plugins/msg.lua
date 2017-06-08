local function delmsg (arg,data)
    for k,v in pairs(data.messages_) do
        tdcli.deleteMessages(v.chat_id_,{[0] = v.id_}, dl_cb, cmd)
    end
end
local function run(msg, matches)
    local chat_id = msg.chat_id_
    local msg_id = msg.id_
    if matches[1] == 'rmsgall' or matches[1] == 'حذف همه' or matches[1] == 'Rmsgall' then
        if tostring(chat_id):match("^-100") then 
            if is_sudo(msg) then
                    tdcli.getChatHistory(chat_id, msg_id, 0, all, delmsg, nil)
                    return '_پیام های اخیر پاک شدند_'
                end
        else
            return '_این قابلیت فقط در سوپرگروه ممکن است_'
        end
    end
end

return {patterns = {
        '^[!#/]([Rr]msgall)$',
        '^(حذف همه)$',
    },
    run = run}
--By @sudo_hacker