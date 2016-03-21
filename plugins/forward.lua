do
function run(msg, matches)
if not is_sudo(msg)then 
return "This Plugin Needs @Thisisarman privilage!"
 end
	  local user = 'user#id'..msg.from.id
local id = matches[1]
      fwd_msg(user,id,ok_cb,false)

end

return {
  patterns = {
"^!fwd +(.+)$"
  }, 
  run = run 
}

end
