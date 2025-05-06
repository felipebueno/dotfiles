local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.enable_tab_bar = false
config.default_cursor_style = 'BlinkingBlock'
cursor_blink_ease_in = "Linear"
cursor_blink_ease_out = "Linear"
config.cursor_blink_rate = 800

-- config.keys = {
--   { key = 'l', mods = 'ALT', action = wezterm.action.ShowLauncher },
-- }

-- config.color_scheme = 'Batman'
-- config.color_scheme = 'AdventureTime'
-- config.font = wezterm.font 'JetBrains Mono'

return config
