do
 function run(msg, matches)
   if msg.to.type == 'channel' then 
   if not is_owner(msg) then
    return
    end
   return [[ <b>SuperGroup Help</b>:👇
➖➖➖➖➖➖➖➖➖
#feedback text
🔃ارسال پیام به پشتیبانی
➖➖➖➖➖➖➖➖➖
#kick
🔃پاک کردن شخص موردنظر
➖➖➖➖➖➖➖➖➖
#ban
🔃محروم کردن شخص موردنظر
➖➖➖➖➖➖➖➖➖ 
#settings
تنظیمات
🔃نمایش تنظیمات گروه
➖➖➖➖➖➖➖➖➖
#rules
🔃نمایش قوانین گروه
➖➖➖➖➖➖➖➖➖
#setrules متن
🔃قراردادن قوانین
➖➖➖➖➖➖➖➖➖
#setabout متن
🔃قرار دادن شرح برای گروه
➖➖➖➖➖➖➖➖➖
#newlink
لینک جدید
🔃ساخت لینک جدید
➖➖➖➖➖➖➖➖➖
#link
لینک
🔃نمایش لینک گروه
➖➖➖➖➖➖➖➖➖
#setlink
تنظیم لینک
🔃ست کردن لینک گروه(ربات سازنده گروه نباشد)
➖➖➖➖➖➖➖➖➖
#admins
لیست مدیران
🔃نمایش لیست ادمین های گروه
➖➖➖➖➖➖➖➖➖
#modlist
ادمین ها
🔃نمایش کمک مدیران
➖➖➖➖➖➖➖➖➖
#setflood [3-30]
تنظیم حساسیت [3-30]
🔃قراردادن حساسیت ارسال پشت سرهم
➖➖➖➖➖➖➖➖➖
#filter ...
فیلتر ...
🔃فیلتر کردن ...
➖➖➖➖➖➖➖➖➖
#unfilter ...
حذف فیلتر ...
🔃دراوردن کلمه از فیلتر
➖➖➖➖➖➖➖➖➖
#mute [gifs-audio-video-photo-text-all]
ممنوعیت (صدا-فیلم-عکس-گیف-متن-همه)
🔃میوت کردن امکانات زیر
➖➖➖➖➖➖➖➖➖
#unmute [gifs-audio-video-photo-text-all]
حذف ممنوعیت (صدا-فیلم-عکس-گیف-متن-همه)
🔃آنمیوت کردن امکانات بالا
➖➖➖➖➖➖➖➖➖
#unlock (links-contacts-spam-arabic-member-rtl-tgservice-sticker-tag-emoji-english-forward-badword-webpage)⚔
#بازکردن (لینک-مخاطب-اسپم-فارسی-اعضا-راستچین-اعلان-استیکر-تگ-شکلک-انگلیسی-فروارد-کلمات زشت-وب لینک)
🔃باز کردن امکانات زیر
➖➖➖➖➖➖➖➖➖
#lock (links-contacts-spam-arabic-member-rtl-tgservice-sticker-tag-emoji-english-forward-badword-webpage)
⚔#قفل⚔(لینک-مخاطب-اسپم-فارسی-اعضا-راستچین-اعلان-استیکر-تگ-شکلک-انگلیسی-فروارد-کلمات زشت-وب لینک)
🔃قفل امکانات بالا
➖➖➖➖➖➖➖➖➖
#res @username
🔃گرفتن ایدی شخص موردنظر
➖➖➖➖➖➖➖➖➖
#log
🔃برگرداندن تاریخچه گروه
➖➖➖➖➖➖➖➖➖
#owner
مالک
🔃نمایش ایدی صاحب گروه
➖➖➖➖➖➖➖➖➖
#bots
ربات ها
🔃نمایش ربات های داخل گروه
➖➖➖➖➖➖➖➖➖
#promote
ارتقا 
🔃کمک ادمین کردن یک شخص
➖➖➖➖➖➖➖➖➖
#demote 
عزل ادمین
🔃خارج کردن یک شخص ازکمک ادمینی
➖➖➖➖➖➖➖➖➖
#setname نام گروه
🔃تغییر دادن نام گروه
➖➖➖➖➖➖➖➖➖
#setphoto
تنظیم عکس
🔃تغییر دادن عکس گروه
➖➖➖➖➖➖➖➖➖
#who
🔃گرفتن لیست اعضای گروه
➖➖➖➖➖➖➖➖➖
#butts,boobs
🔃برای دریافت عکس sexi 
➖➖➖➖➖➖➖➖➖
#gif text,گیف متن
🔃برای ساخت گیف (لطفا فقط از کلمات فارسی استفاده کنید)
➖➖➖➖➖➖➖➖➖
#praytime (NameCity), اوقات شرعی نام شهر
🔃برای دریافت اوقات شرعی
➖➖➖➖➖➖➖➖➖
#time,زمان, ساعت
🔃برای نمایش ساعت 
➖➖➖➖➖➖➖➖➖
برای اجرای دستورات از (! /) می توانید استفاده کنید.
➖➖➖➖➖➖➖➖➖
برای راهنمایی بیشتر با ایدی @tele_emoji در تماس باشید.
]]
end
 end
return {
patterns = {
"^[!/#][Hh]elp$",
"^[Hh]elp$",
"^راهنما$",
},
run = run
}
end
