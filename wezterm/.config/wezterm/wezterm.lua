-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "rose-pine"

config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.force_reverse_video_cursor = true

-- and finally, return the configuration to wezterm
return config
