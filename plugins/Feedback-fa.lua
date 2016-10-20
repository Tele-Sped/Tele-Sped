do local function run(msg, matches)
	local data = load_data(_config.moderation.data)
	local settings = data[tostring(msg.to.id)]['settings']
	local group_link = data[tostring(msg.to.id)]['settings']['set_link']
	if not group_link then
		group_link = "لينک ندارد"
	end
	local message = '#feedback\n'
	..">> مشخصات گروه:\n"
	.."> نام:  "..msg.to.print_name.."\n"
	.."> آی دی:  "..msg.to.id.."\n"
	.."> لینک:  "..group_link.."\n\n"
	..">> مشخصات مخاطب:\n"
	.."> نام:  "..msg.from.print_name.."\n"
	.."> یوزر:  @"..msg.from.username.."\n"
	.."> آی دی:  "..msg.from.id.."\n"
	.."______________________________\n\n"..matches[1]
	local userid = 'user#id274520342'
	send_large_msg(userid, message)
	return "با سپاس از نظر شما"
end

return {
	description = "Feedback System",
	usagehtm = '<tr><td align="center">feedback متن</td><td align="right">ارسال نظر شما به سودو ادمین همراه مشخصات کامل شما و گروهی که در آن هستید</td></tr>',
	usage = {
		"feedback (pm) : ارسال نظر به سودو",
	},
	patterns = {
		"^ارسال پیام (.*)$",
	},
	run = run,
}
end
