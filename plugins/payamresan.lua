do   

local fwd_to = 274520342

local function callback_message(extra,success,result)
local receiver = result.to.id
local msg = extra
  if result.fwd_from and msg.text then
  fwd_msg(result.fwd_from.id, msg.id, ok_cb,false)
  else
    return nil
      end
  end
function run(msg, matches) 
  if msg.to.type == "user" and msg.text then
fwd_msg("user#id"..tonumber(fwd_to), msg.id,ok_cb,false)
  return 'پیام شما با موفقیت برای ادمین ارسال شد،منتظر پاسخ باشید🌺'
elseif msg.text and msg.reply_id and tonumber(msg.to.id) == fwd_to then
    if not msg.text then
    return "پیام شما با موفقیت برای ادمین ارسال شد منتظر پاسخ باشید🌹" 
      end
    get_message(msg.reply_id, callback_message, msg)
    end
end
return {               
patterns = {
"^(.*)$",
 }, 
run = run,
}
end
