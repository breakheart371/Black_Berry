local function run (msg, matches) 
if (msg.text) then
if gp_type(msg.chat_id_) == "pv" then
return "سلام دوست عزیز جهت خرید و ارتباط با سازنده ربات به ایدی زیرمراجعه کنید:@sudo\\_hacker"
end
end
end
return{ 
 patterns={ 
     "(.*)$"
 },
run=run
}


--by:@sudo_hacker