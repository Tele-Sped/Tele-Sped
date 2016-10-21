do
local function pre_process(msg)
 local hash = 'muteall:'..msg.to.id
  if redis:get(hash) and msg.to.type == 'channel' and not is_momod(msg)  then
   delete_msg(msg.id, ok_cb, false)
       end
    return msg
 end
 
local function run(msg, matches)
 if matches[1] == 'سایلنت همگانی' and is_momod(msg) then
       local hash = 'muteall:'..msg.to.id
       if not matches[2] then
              redis:set(hash, true)
             return "😶گروه سایلنت همگانی شد😶"
 else
-- by @Blackwolf_admin 
local hour = string.gsub(matches[2], 'ساعت', '')
 local num1 = tonumber(hour) * 3600
local minutes = string.gsub(matches[3], 'دقیقه', '')
 local num2 = tonumber(minutes) * 60
local second = string.gsub(matches[4], 'ثانیه', '')
 local num3 = tonumber(second) 
local num4 = tonumber(num1 + num2 + num3)
redis:setex(hash, num4, true)
 return "🤖Tele-Sped🤖\n➖➖➖➖➖➖➖➖\n😶گروه سایلنت همگانی شد😶\n⏱ ساعت : "..matches[2].."\n⏱ دقیقه : "..matches[3].." \n⏱ ثانیه : "..matches[4].."\n➖➖➖➖➖➖➖➖\n📝@tele_sped"
 end
 end
if matches[1] == 'حذف سایلنت همگانی' and is_momod(msg) then
               local hash = 'muteall:'..msg.to.id 
        redis:del(hash)
          return "😶گروه از سایلنت همگانی آزاد شد😶"
  end
end
return {
   patterns = {
      '^(سایلنت همگانی)$',
      '^(حذف سایلنت همگانی)$',
   '^(سایلنت همگانی) (.*) (.*) (.*)$',
 },
run = run,
  pre_process = pre_process
}
end
