local function tagall(cb_extra, success, result)

    local receiver = cb_extra.receiver

    local chat_id = "channel#id"..result.id

    local text = ''

    for k,v in pairs(result) do

        if v.username then

   text = text.."> @"..v.username.."\n"

  end

    end

 text = text.."\n ===========================\n\n"..cb_extra.msg_text

 send_large_msg(receiver, text)

end

local function run(msg, matches)

    local receiver = get_receiver(msg)

 if not is_owner(msg) then 

  return"only for sudo(iman=babam)&(admins)"

 end

 if matches[1] then

  get_channel_users(receiver, tagall, {receiver = receiver,msg_text = matches[1]})

 end

 return

end



return {

  description = "Will tag all ppl with a msg.",

  usage = {

    "/tagall [msg]."

  },

  patterns = {

    "^[!/]tagall +(.+)$"

  },

  run = run

}
