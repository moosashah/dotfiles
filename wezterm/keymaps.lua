local act = require("wezterm").action

local multiple_actions = function(keys)
    local actions = {}
    for key in keys:gmatch(".") do
        table.insert(actions, act.SendKey({ key = key }))
    end
    table.insert(actions, act.SendKey({ key = "\n" }))
    return act.Multiple(actions)
end

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
        act.Multiple({
            act.SendKey({ mods = "CTRL", key = "a" }),
            act.SendKey({ key = tmux_key }),
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
    cmd_to_tmux("E", "E"),
    -- Open vertical split pane
    cmd_to_tmux("d", "%"),
    -- Open previous sessions
    cmd_to_tmux("L", "L"),
    -- Open previous pane
    cmd_to_tmux("l", "l"),
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

    -- Base - root vertrical repo
    cmd_to_tmux("b", "b"),

    -- Switch between sessions
    cmd_to_tmux("j", "j"),
    cmd_to_tmux("k", "k"),
    cmd_to_tmux("l", "l"),
    cmd_to_tmux(";", ";"),

    { key = 'q', mods = 'CMD', action = act.QuitApplication },
    { key = 'v', mods = 'CMD', action = act.PasteFrom("Clipboard") },
    {
        key = 's',
        mods = 'CMD',
        action = act.Multiple({
            act.SendKey({ key = "\x1b" }),
            multiple_actions(":w"),
        })
    },
    {
        key = 'S',
        mods = 'CMD',
        action = act.Multiple({
            act.SendKey({ key = "\x1b" }),
            multiple_actions(":x"),
        })
    },
}
