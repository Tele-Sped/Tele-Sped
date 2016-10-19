local function sudoteam(msg, matches)
local mtn = matches[2]
local link = matches[3]
if not is_momod(msg) then
return 'دست نزن بچه 😐❌'
end
if matches[1] == 'bold' then
  return '<b>'..mtn..'</b>'

elseif matches[1] == 'code' then
  return '<code>'..mtn..'</code>'

elseif matches[1] == 'hyper' then
  return '<a href="'..link..'">'..mtn..'</a>'
elseif matches[1] == 'italic' then
  return '<i>'..mtn..'</i>'
end
end
return {
  description = "تست", 
  usage = "تست",
  patterns = {
    "^[!#/]([Cc][Oo][Dd][Ee]) (.*)$",
    "^[!#/]([Ii][Tt][Aa][Ll][Ii][Cc]) (.*)$",
    "^[!#/]([Bb][Oo][Ll][Dd]) (.*)$",
    "^[!#/]([Hh][Yy][Pp][Ee][Rr]) (.*) (.*)$"
  }, 
  run = sudoteam 
}
--@tele_emoji
