local wezterm = require('wezterm')
local keys = require('keymaps')

local function get_appearance()
    if wezterm.gui then
        return wezterm.gui.get_appearance()
    end
    return 'Dark'
end

local function scheme_for_appearance(appearance)
    if appearance:find 'Dark' then
        return 'Tokyo Night Storm'
    else
        return 'Tokyo Night Day'
    end
end

local config = {
    audible_bell = "Disabled",
    color_scheme = scheme_for_appearance(get_appearance()),
    disable_default_key_bindings = true,
    enable_tab_bar = false,
    font = wezterm.font('JetBrains Mono', { weight = 'Bold' }),
    font_size = 15,
    harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' },
    keys = keys,
    send_composed_key_when_right_alt_is_pressed = false,
    window_background_opacity = 1,
    window_close_confirmation = 'NeverPrompt',
    window_decorations = "RESIZE",
    window_padding = {
        bottom = 0,
        left = 0,
        right = 0,
        top = 0,
    }
}
return config
