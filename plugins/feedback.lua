do
 function run(msg, matches)
 
 local fuse = '✉️ پیامی جدید : \n\n🆔 آیدی : ' .. msg.from.id .. '\n\n👤 نام : ' .. msg.from.print_name ..'\n\n🔢 یوزرنیم : telegram.me/' .. msg.from.username .. '\n\n📬 پیام :\n' .. matches[1] 
 local fuses = '!printf user#id' .. msg.from.id
 
 
   local text = matches[1]
   local chat = "user#id"..274520342
   
  local sends = send_msg(chat, fuse, ok_cb, false)
  return 'پیام شما ارسال شد با تشکر'
 
 end
 end
 return {
  
  description = "Feedback",
 
  usage = "!feedback message",
  patterns = {
  "^[!#/][Ff]eedback (.*)$"
 
  },
  run = run
 }
