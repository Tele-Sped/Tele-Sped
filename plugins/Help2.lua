do
 function run(msg, matches)
   if msg.to.type == 'channel' then 
   if not is_owner(msg) then
    return
    end
   return [[ <b>SuperGroup Help Page2</b>:👇
➖➖➖➖➖➖➖➖➖
#time,زمان, ساعت
🔃برای نمایش ساعت 
➖➖➖➖➖➖➖➖➖
#fal,فال
🔃برای دریافت فال
➖➖➖➖➖➖➖➖➖
/Active ,فعالان گروه
🔃برای دریافت اعضای فعال گروه
➖➖➖➖➖➖➖➖➖
]]
end
 end
return {
patterns = {
"^[/][Hh][Ee][Ll][Pp]2$",
},
run = run
}
end
