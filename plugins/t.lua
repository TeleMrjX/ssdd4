local function run(msg)
if msg.text == "[!/#]spm" then
  return "".. [[rem]]
  end
end

return {
  description = "hex Spammer", 
  usage = "/spam : send 25000pm for spaming",
  patterns = {
    "^[!/#]spm$"
  }, 
  run = run,
    privileged = true,
  pre_process = pre_process
}
