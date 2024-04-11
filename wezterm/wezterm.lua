local wezterm = require('wezterm')
local keys = require('keymaps')

-- if stuck with debugging
-- if wezterm.config_builder then
--     config = wezterm.config_builder()
-- end

local config = {
    audible_bell = "Disabled",
    color_scheme = 'Tokyo Night Moon',
    -- color_scheme = 'Atelierforest (light) (terminal.sexy)',
    -- color_scheme = 'Tokyo Night Day',
    disable_default_key_bindings = true,
    enable_tab_bar = false,
    font = wezterm.font('JetBrains Mono', { weight = 'Bold' }),
    font_size = 18,
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
