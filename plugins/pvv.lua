local function run (msg, matches) 
if (msg.text) then
if gp_type(msg.chat_id_) == "pv" then
return "سلام دوست عزیز جهت خرید و ارتباط باسازنده ربات به ایدی زیرمراجعه کنید 🆔: @babakkhanbot"
end
end
end
return{ 
 patterns={ 
     "(.*)$"
 },
run=run
}
