local wt_action = require("wezterm").action

local key_table = function(mods, key, action)
    return {
        mods = mods,
        key = key,
        action = action,
    }
end

local cmd_key = function(key, action)
    return key_table("CMD", key, action)
end

local cmd_to_tmux = function(key, tmux_key)
    return cmd_key(key,
        wt_action.Multiple({
            wt_action.SendKey({ mods = "CTRL", key = "a" }),
            wt_action.SendKey({ key = tmux_key }),
        }))
end

return {
    -- Window 1-4
    cmd_to_tmux("1", "1"),
    cmd_to_tmux("2", "2"),
    cmd_to_tmux("3", "3"),
    cmd_to_tmux("4", "4"),
    -- Open Wezterm config
    cmd_to_tmux(",", "'"),
    -- Open Tmux config
    cmd_to_tmux(".", "N"),
    -- Open horizontal split pane
    cmd_to_tmux("D", "\""),
    -- Open vertical split pane
    cmd_to_tmux("d", "%"),
    -- Open previous pane
    cmd_to_tmux("l", "L"),
    -- Open Neovim config
    cmd_to_tmux("n", "m"),
    -- rename tmux window
    cmd_to_tmux("r", ","),
    -- open new tmux window
    cmd_to_tmux("t", "c"),
    -- close tmux pane/window
    cmd_to_tmux("w", "x"),
    -- zoom on pane
    cmd_to_tmux("z", "z"),
}
