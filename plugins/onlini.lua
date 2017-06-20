do

local function run(msg, matches)
if matches[1]=="انلاینی" and is_sudo(msg) then 
return  "اره اقابابک😜✋"
elseif matches[1]=="انلاینی" and is_admin(msg) then 
return  "اره فضول"
elseif matches[1]=="انلاینی" and is_owner(msg) then 
return  "😎کس عمت انلاینم😎"
elseif matches[1]=="انلاینی" and is_mod(msg) then 
return  "دهنت سرویس نزن انلاینم باو"
else
return  "دست نزن بچه"
end

end

return {
  patterns = {
    "^(انلاینی)$",
    },
  run = run
}
end


--By @sudo_hacker
-- @blackandwhiteTM
