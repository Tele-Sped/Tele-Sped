--An empty table for solving multiple kicking problem(thanks to @topkecleon )
kicktable = {}


local function run(msg, matches)
    if is_momod(msg) then
        return msg
    end
    local data = load_data(_config.moderation.data)
    if data[tostring(msg.to.id)] then
        if data[tostring(msg.to.id)]['settings'] then
            if data[tostring(msg.to.id)]['settings']['lock_gif'] then
                lock_gif = data[tostring(msg.to.id)]['settings']['lock_gif']
            end
        end
    end
    local chat = get_receiver(msg)
    local user = "user#id"..msg.from.id
    if lock_gif == "🔒" then
        delete_msg(msg.id, ok_cb, true)
    end
end
 
return {
  patterns = {
  "%[(unsupported)%]",
  "%[(gif)%]"
 },
  run = run
}

