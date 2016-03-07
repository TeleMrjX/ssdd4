do

function run(msg, matches)
  if matches[1]:lower() == 'sbss' then -- Put everything you like :)
    send_document(get_receiver(msg), "./files/sticker.webp", ok_cb, false)
    return 'test'
  end
end
return {
  patterns = {
    "^[Hh][Ee][Xx]$"
  }, 
  run = run 
}

end
