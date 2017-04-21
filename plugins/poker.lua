--Start By @Tele_sudo
do

function run(msg, matches)
local reply_id = msg['id']
local text = '😐'
if matches[1] == '😐' then
    if is_sudo(msg) then
return '😐'
end
end 
end
return {
patterns = {
    "😐"
},
run = run
}

end
--end By @Tele_sudo
--Channel @LuaError
