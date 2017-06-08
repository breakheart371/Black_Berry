local function babak(msg ,matches)
 if matches[1] == "فازسنگین" then

  local url = "http://api.bot-dev.org/sangin/"
  local b, c, h = http.request(url)
  if c ~= 200 then return "conction failed" end
    text_sangin = { } 
    table.insert(text_sangin , b)
return text_sangin[1] 
  end
end
return { 
patterns = { 
"^فازسنگین$"
},
run = babak
}


--by: @sudo_hacker