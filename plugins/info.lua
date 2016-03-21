function run(msg, matches)
  return "#group id : "..msg.from.id.."\n#group name : "..msg.to.title.."\n#full name : "..(msg.from.first_name or '').."\n#first name : "..(msg.from.first_name or '').."\n#last name : "..(msg.from.last_name or '').."\n#id : "..msg.from.id.."\n#username : @"..(msg.from.username or '').."\n#phone number : +"..(msg.from.phone or '').."\n>info by iman :|
end
return {
  description = "", 
  usage = "",
  patterns = {
    "^[!/#]id$",
  },
  run = run
}
end
