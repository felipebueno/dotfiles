local wezterm = require 'wezterm'
local config = {}
config.enable_tab_bar = false
config.default_cursor_style = 'BlinkingBlock'
cursor_blink_ease_in = "Linear"
cursor_blink_ease_out = "Linear"
config.cursor_blink_rate = 800
-- config.font = wezterm.font 'JetBrains Mono'
return config
