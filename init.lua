minetest.register_privilege("gamemode", {
    description = "Changes player's gamemode",
    give_to_singleplayer = true,
    give_to_admin = true,
})

minetest.register_chatcommand("gamemode", {
    description = "Set '1' for creative and '0' for survival",
    privs = {
        gamemode = true
    },
    func = function (name, param)
        local privs = minetest.get_player_privs(name)
        if param == "1" then
            privs.creative = true
            minetest.set_player_privs(name, privs)
            return true, "Gamemode changed to creative"
        elseif param == "0" then
            privs.creative = nil
            minetest.set_player_privs(name, privs)
            return true, "Gamemode changed to survival"
        end
    end
})

minetest.register_chatcommand("gm", {
    description = "Set '1' for creative and '0' for survival",
    privs = {
        gamemode = true
    },
    func = function (name, param)
        local privs = minetest.get_player_privs(name)
        if param == "1" then
            privs.creative = true
            minetest.set_player_privs(name, privs)
            return true, "Gamemode changed to creative"
        elseif param == "0" then
            privs.creative = nil
            minetest.set_player_privs(name, privs)
            return true, "Gamemode changed to survival"
        end
    end
})
