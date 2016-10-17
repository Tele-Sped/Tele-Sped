local function run(msg, matches)
    reply = msg['id']

  local text = matches[1]
  local b = 1

  while b ~= 0 do
    text = text:trim()
    text,b = text:gsub('^!+','')
  end
reply_msg(reply, text, ok_cb, false)
end

return {
  description = "Reply Your Sent Message",
  usage = "/echo (message) : reply message",
  patterns = {
    "^بگو +(.+)$"
  }, 
 run = run,
 moderated = true
}
