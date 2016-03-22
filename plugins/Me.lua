do

local function run(msg, matches)
  if matches[1] == 'me' then
    if is_sudo(msg) then
    send_document(get_receiver(msg), "./files/me/sudo.webp", ok_cb, false)
      return "you are my sudo🙌"
    elseif is_admin(msg) then
    send_document(get_receiver(msg), "./files/me/admin.webp", ok_cb, false)
      return "you aare admin😄"
    elseif is_owner(msg) then
    send_document(get_receiver(msg), "./files/me/leader.webp", ok_cb, false)
      return "you are owner😃"
    elseif is_momod(msg) then
    send_document(get_receiver(msg), "./files/me/moderator.webp", ok_cb, false)
      return "you are moderator😊"
    else
    send_document(get_receiver(msg), "./files/me/member.webp", ok_cb, false)
      return "you are member😒"
    end
  end
end

return {
  patterns = {
    "^[!/#]([Mm]e)$",
    "^([Mm]e)$"
    },
  run = run
}
end
c—[[BY @HackeD_o FUCKE MOTHER AL REMOVED THE (C) :)]]
