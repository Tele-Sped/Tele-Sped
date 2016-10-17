function run(msg, matches)
if matches[1] == "2" and matches[2] == "7" and matches[3] == "4" then
return "✅ رمز با موفقیت باز شد"
else
return "اشتباه است دوباره سعی کنید"
end
end
return {
advan = {
"Created by: @Tele_emoji",
"Powered by: @Tele_Sped",
"CopyRight all right reserved",
},
patterns = {"^[!#/]pass ([123456789])([123456789])([123456789])$"},
run = run
}
